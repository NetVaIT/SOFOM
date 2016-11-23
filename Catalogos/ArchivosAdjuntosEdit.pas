unit ArchivosAdjuntosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxBlobEdit, cxDBEdit,
  cxTextEdit, DBTables;

type
  TfrmArchivosAdjuntosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBBlobEdit1: TcxDBBlobEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button2: TButton;
    procedure actPostExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    RutaCarga : String;
    RutaGuarda : String;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ArchivosAdjuntosDM;

procedure TfrmArchivosAdjuntosEdit.actPostExecute(Sender: TObject);
var
  Blob : TStream;
  Fs : TFileStream;
begin
//  inherited;
  if DataSource.DataSet.State in [dsInsert, dsEdit] then
  Begin
    Blob := DataSource.DataSet.CreateBlobStream(DataSource.DataSet.FieldByName('Archivo'), bmWrite);
    try
      Blob.Seek(0, soFromBeginning);
      Fs := TFileStream.Create(RutaCarga, fmOpenRead or fmShareDenyWrite);
      try
        blob.CopyFrom(fs, fs.Size)
      finally
        fs.Free
      end;
    finally
      blob.Free
    end;
    DataSource.DataSet.Post;
  End;
  ModalResult:= mrOk;
end;

procedure TfrmArchivosAdjuntosEdit.Button1Click(Sender: TObject);
begin
  inherited;
  OpenDialog1.Execute(ParentWindow);
  RutaCarga := OpenDialog1.FileName;
end;

procedure TfrmArchivosAdjuntosEdit.Button2Click(Sender: TObject);
var
  Blob : TStream;
begin
  inherited;
  SaveDialog1.Execute(ParentWindow);
  RutaGuarda := SaveDialog1.FileName;
blob := DataSource.DataSet.CreateBlobStream(DataSource.Dataset.FieldByName('Archivo'), bmRead);
try
  blob.Seek(0, soFromBeginning);
  with TFileStream.Create(RutaGuarda, fmCreate) do
    try
      CopyFrom(blob, blob.Size)
    finally
      Free
    end;
finally
  blob.Free
end;

end;

end.
