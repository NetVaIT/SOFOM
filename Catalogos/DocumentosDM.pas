unit DocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes,
  System.IOUtils,
  Winapi.ShellAPI;

resourcestring
  strLoadFileAllowed = 'No es posible modificar el archivo asignado, debido a que ya ha sido procesado.';

const
  FileExts: array[0..8] of string = ('.xml', '.doc', '.docx', '.xls', '.xlsx', '.txt', '.csv', '.cer', '.key');

type
  TFileAllowed = (faAll, faXML, faDOC, faDOCx, faXLS, faXLSx, faTXT, faCSV, faCER, faKEY);
  TFilesAllowed = set of TFileAllowed;

  TdmDocumentos = class(T_dmStandar)
    adodsMasterIdDocumento: TAutoIncField;
    adodsMasterIdDocumentoTipo: TIntegerField;
    adodsMasterIdDocumentoClase: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdArchivo: TGuidField;
    adodsMasterArchivo: TBlobField;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterDocumentoTipo: TStringField;
    adodsMasterDocumentoClase: TStringField;
    adodsUpdateIdDocumento: TAutoIncField;
    adodsUpdateIdDocumentoTipo: TIntegerField;
    adodsUpdateIdDocumentoClase: TIntegerField;
    adodsUpdateDescripcion: TStringField;
    adodsUpdateNombreArchivo: TStringField;
    adodsUpdateIdArchivo: TGuidField;
    adodsUpdateArchivo: TBlobField;
    adodsUpdateDocumentoTipo: TStringField;
    adodsUpdateDocumentoClase: TStringField;
    actSaveFile: TAction;
    actLoadFile: TAction;
    actViewFile: TAction;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    actMD5File: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actLoadFileExecute(Sender: TObject);
    procedure actSaveFileExecute(Sender: TObject);
    procedure actSaveFileUpdate(Sender: TObject);
    procedure actViewFileUpdate(Sender: TObject);
    procedure actViewFileExecute(Sender: TObject);
    procedure adodsUpdateNewRecord(DataSet: TDataSet);
    procedure actMD5FileExecute(Sender: TObject);
  private
    { Private declarations }
    FFilename: TFileName;
    FFileAllowed: TFileAllowed;
    FLoadFileAllowed: Boolean;
    procedure WriteFile(FileName: TFileName);
    procedure ReadFile(FileName: TFileName);
    procedure TuneOpenDialog;
    procedure SetFileAllowed(const Value: TFileAllowed);
    procedure SetLoadFileAllowed(const Value: Boolean);
//    function SetFile(FileName: TFileName): Integer;
  public
    { Public declarations }
    function GetFileName(IdDocumento: Integer): TFileName;
    function SetFile: Integer; overload;
    function SetFile(FileName: TFileName): Integer; overload;
    property FileAllowed: TFileAllowed read FFileAllowed write SetFileAllowed default faXLSx;
    property LoadFileAllowed: Boolean read FLoadFileAllowed write SetLoadFileAllowed default True;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosForm, DocumentosEdit, _Utils;

{$R *.dfm}

procedure TdmDocumentos.actLoadFileExecute(Sender: TObject);
begin
  inherited;
  if LoadFileAllowed then
  begin
    if OpenDialog.Execute then
    begin
      FFilename:= OpenDialog.FileName;
      adodsUpdateNombreArchivo.AsString := ExtractFileName(FFilename);
      WriteFile(FFilename);
    end;
  end
  else
    MessageDlg(strLoadFileAllowed, mtInformation, [mbOk], 0)
end;

procedure TdmDocumentos.actMD5FileExecute(Sender: TObject);
var
  FileName: TFileName;
  MD5: String;
begin
  inherited;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  MD5 := MD5File(FileName);
  ShowMessage(MD5);
end;

procedure TdmDocumentos.actSaveFileExecute(Sender: TObject);
begin
  inherited;
  SaveDialog.FileName:= adodsUpdateNombreArchivo.AsString;
  if SaveDialog.Execute then
  begin
    FFilename:= SaveDialog.FileName;
    ReadFile(FFilename);
  end;
end;

procedure TdmDocumentos.actSaveFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.AsString <> EmptyStr;
end;

procedure TdmDocumentos.actViewFileExecute(Sender: TObject);
var
  FileName: TFileName;
begin
  inherited;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  ShellExecute(TfrmDocumentosEdit(frmEdit).Handle, 'open', PChar(FileName), nil, nil, 0);
end;

procedure TdmDocumentos.actViewFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.AsString <> EmptyStr;
end;

procedure TdmDocumentos.adodsUpdateNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsUpdateIdDocumentoTipo.Value:= 2;
  adodsUpdateIdDocumentoClase.Value:= 1;
end;

procedure TdmDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmDocumentosEdit.Create(Self);
  TfrmDocumentosEdit(frmEdit).actLoadFile:= actLoadFile;
  TfrmDocumentosEdit(frmEdit).actSaveFile:= actSaveFile;
  TfrmDocumentosEdit(frmEdit).actViewFile:= actViewFile;
  TfrmDocumentosEdit(frmEdit).actMD5File:= actMD5File;
  gGridForm := TfrmDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
  LoadFileAllowed:= True;
end;

function TdmDocumentos.GetFileName(IdDocumento: Integer): TFileName;
var
  FileName: TFileName;
begin
  adodsUpdate.Close;
  adodsUpdate.Parameters[0].Value:= IdDocumento;
  adodsUpdate.Open;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  Result:= FileName;
end;

procedure TdmDocumentos.ReadFile(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs:= TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

function TdmDocumentos.SetFile: Integer;
begin
  if OpenDialog.Execute then
  begin
    FFilename:= OpenDialog.FileName;
    Result:= SetFile(FFileName);
  end
  else
    Result:= 0;
end;

function TdmDocumentos.SetFile(FileName: TFileName): Integer;
begin
  adodsUpdate.Open;
  try
    adodsUpdate.Insert;
    adodsUpdateIdDocumentoTipo.Value:= 1;
    adodsUpdateIdDocumentoClase.Value:= 1;
    adodsUpdateDescripcion.AsString:= ExtractFileName(Filename);
    adodsUpdateNombreArchivo.AsString:= ExtractFileName(Filename);
    WriteFile(Filename);
    adodsUpdate.Post;
    Result:= adodsUpdateIdDocumento.Value;
  finally
    adodsUpdate.Close;
  end;
end;

procedure TdmDocumentos.SetFileAllowed(const Value: TFileAllowed);
begin
  if FFileAllowed <> Value then
  begin
//    if not (Value in Wizard.AllowedImports) then
//      raise EQImportError.Create(QImportLoadStr(QIE_UnknownImportSource));
    FFileAllowed := Value;
//    rbtXLS.Checked := FImportType = aiXLS;
    TuneOpenDialog;
//    ChangeExtension;
  end;
end;

procedure TdmDocumentos.SetLoadFileAllowed(const Value: Boolean);
begin
  FLoadFileAllowed := Value;
end;

procedure TdmDocumentos.WriteFile(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmDocumentos.TuneOpenDialog;
begin
  case FFileAllowed of
    faAll: OpenDialog.Filter:= 'Todos los Archivos|*.*';
    faXLS: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xls';
    faXLSx: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xlsx';
    faCER: OpenDialog.Filter:= 'Archivo CER|*.cer';
    faKEY: OpenDialog.Filter:= 'Archivo KEY|*.key';
    faTXT: OpenDialog.Filter:= 'Archivo texto|*.txt';
  end;
  if FFileAllowed <> faAll then
    OpenDialog.Filter:= OpenDialog.Filter + '|Todos los Archivos|*.*';
end;

//procedure TQImport3WizardF.ChangeExtension;
//begin
//  if not Wizard.AutoChangeExtension then Exit;
//  if Trim(FileName) = EmptyStr then Exit;
//  FileName := ChangeFileExt(FileName, FileExts[Ord(FImportType)]);
//end;

end.
