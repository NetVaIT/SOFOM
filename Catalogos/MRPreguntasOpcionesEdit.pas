unit MRPreguntasOpcionesEdit;

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
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxTextEdit,Data.Win.ADODB, Vcl.Menus, cxButtons;

type
  TfrmMrPreguntasOpcionesEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBChckBxTextoAdicional: TcxDBCheckBox;
    dsAuxiliar: TDataSource;
    PnlTablaExterna: TPanel;
    Label3: TLabel;
    cxDBTxtEdtTablaExt: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTxtEdtCampoDes: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBChckBxCampoAdicional: TcxDBCheckBox;
    cxCmbBxListaTablas: TcxComboBox;
    cxCmbBxListaCampos: TcxComboBox;
    cxBtnDefineCampos: TcxButton;
    cxBtnLista: TcxButton;
    cxBtnCampos: TcxButton;
    cxTbShtCamposAdicionales: TcxTabSheet;
    procedure FormShow(Sender: TObject);
    procedure cxCmbBxListaTablasClick(Sender: TObject);
    procedure cxCmbBxListaCamposClick(Sender: TObject);
    procedure cxDBChckBxTextoAdicionalClick(Sender: TObject);
    procedure cxBtnListaClick(Sender: TObject);
    procedure cxBtnCamposClick(Sender: TObject);
    procedure cxBtnDefineCamposClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure cxDBChckBxCampoAdicionalClick(Sender: TObject);
  private
    procedure ObtenerTablas;
    procedure ObtenerCampos(TAbla: String);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmMrPreguntasOpcionesEdit: TfrmMrPreguntasOpcionesEdit;

implementation

{$R *.dfm}

uses MatrizRiesgoDM, MRPOCamposAdicForm;

procedure TfrmMrPreguntasOpcionesEdit.cxBtnCamposClick(Sender: TObject);
begin
  inherited;
  if datasource.State in [dsEdit,dsInsert] then  //Se agregó el insert
  begin
    if cxDBTxtEdtTablaExt.Text<>'' then
       ObtenerCampos(cxDBTxtEdtTablaExt.Text);
    if cxDBTxtEdtCampoDes.Text<>'' then
      cxCmbBxListaCampos.Text:= cxDBTxtEdtCampoDes.Text;
    cxCmbBxListaCampos.Visible:=True;
  end;
end;

procedure TfrmMrPreguntasOpcionesEdit.cxBtnDefineCamposClick(Sender: TObject);
var i :integer;

begin
  inherited;
  if (datasource.DataSet.State in [dsinsert,dsEdit]) and
      (application.MessageBox(' Para continuar requiere guardar los cambios ¿Desea Continuar?','Confirmación',MB_ICONEXCLAMATION or MB_YESNO)=id_YES) then
  begin
    datasource.DataSet.post;
  //Poner visible Solo debe estar habnilitado si tiene tabla externa
  //Crear y mostrar??? //lenar antes
    if (frmMRCamposAdi <> nil)  and (cxDBTxtEdtTablaExt.Text<>'')then //Si no nisiquiera debe estar habilitado
    begin
      frmMRCamposAdi.TablaAct:= cxDBTxtEdtTablaExt.Text;
      cxTbShtCamposAdicionales.TabVisible:=true;
      pcMain.ActivePage:=cxTbShtCamposAdicionales;
    end;
  end;

end;

procedure TfrmMrPreguntasOpcionesEdit.cxBtnListaClick(Sender: TObject);
begin
  inherited;
   if datasource.State in [dsEdit,dsInsert] then  //Se agregó el insert Ago 2/18
  begin
    if cxDBTxtEdtTablaExt.Text<>'' then
     cxCmbBxListaTablas.Text:= cxDBTxtEdtTablaExt.Text;
    cxCmbBxListaTablas.Visible:=True;
  end;
end;

procedure TfrmMrPreguntasOpcionesEdit.cxCmbBxListaCamposClick(Sender: TObject);
begin
  inherited;
  cxDBTxtEdtCampoDes.Text:= cxCmbBxListaCampos.Text;
end;

procedure TfrmMrPreguntasOpcionesEdit.cxCmbBxListaTablasClick(Sender: TObject);
begin
  inherited;
  cxDBTxtEdtTablaExt.Text:= cxCmbBxListaTablas.Text;
  ObtenerCampos(cxCmbBxListaTablas.Text);
end;

procedure TfrmMrPreguntasOpcionesEdit.cxDBChckBxCampoAdicionalClick(
  Sender: TObject);
begin
  inherited;
  cxBtnDefineCampos.visible:=cxDBChckBxCampoAdicional.Checked;
end;

procedure TfrmMrPreguntasOpcionesEdit.cxDBChckBxTextoAdicionalClick(Sender: TObject);
begin
  inherited;
  PnlTablaExterna.Visible:= cxDBChckBxTextoAdicional.Checked;

end;

procedure TfrmMrPreguntasOpcionesEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cxBtnDefineCampos.Visible:=datasource.DataSet.FieldByName('EvaluaCamposAdicionales').AsBoolean;
end;

procedure TfrmMrPreguntasOpcionesEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxTbShtCamposAdicionales.tabVisible:=False;
  pcMain.ActivePageIndex:=0;
  cxCmbBxListaCampos.Visible:=False; //Ago 2/18
  cxCmbBxListaTablas.Visible:=False;
  inherited;

end;

procedure TfrmMrPreguntasOpcionesEdit.FormCreate(Sender: TObject);
begin
  inherited;
   frmMRCamposAdi:=TfrmMRCamposAdi.Create(Self);
end;

procedure TfrmMrPreguntasOpcionesEdit.FormShow(Sender: TObject);
begin
  inherited;


  ObtenerTablas;
  if cxDBTxtEdtTablaExt.Text<>'' then
     cxCmbBxListaTablas.Text:= cxDBTxtEdtTablaExt.Text;

  if cxDBTxtEdtCampoDes.Text<>'' then
     cxCmbBxListaCampos.Text:= cxDBTxtEdtCampoDes.Text;


  PnlTablaExterna.Visible:=cxDBChckBxTextoAdicional.Checked;

  frmMRCamposAdi.Parent:=  cxTbShtCamposAdicionales;     //Ago 1/18
  frmMRCamposAdi.Align:= alClient;
  frmMRCamposAdi.Show;

end;

procedure TfrmMrPreguntasOpcionesEdit.ObtenerTablas;
var lista: TStringList;
    i: integer;
begin
  cxCmbBxListaTablas.Properties.Items.Clear;
  lista := TstringList.Create;
  Tadodataset(Datasource.dataset).connection.GetTableNames(lista);
  for i := 0 to lista.Count - 1 do
  begin
   // ShowMessage(lista[i]);
    cxCmbBxListaTablas.Properties.Items.Add( lista[i]);
  end;
  lista.Free;
end;


procedure TfrmMrPreguntasOpcionesEdit.ObtenerCampos(TAbla:String);
begin
  cxCmbBxListaCampos.Properties.Items.Clear;
  dsAuxiliar.DataSet.Close;   //Asegurar ammarre
  TadoQuery(dsAuxiliar.DataSet).SQL.Clear;
  TadoQuery(dsAuxiliar.DataSet).SQL.Add('select COLUMN_NAME from INFORMATION_SCHEMA.columns where table_name='''+TAbla+'''');
  dsAuxiliar.DataSet.Open;
  while not  dsAuxiliar.DataSet.Eof do
  begin
    cxCmbBxListaCampos.Properties.Items.Add( dsAuxiliar.DataSet.FieldByName('COLUMN_NAME').asstring);
    dsAuxiliar.DataSet.Next;
  end;

  dsAuxiliar.DataSet.Close;
end;


end.
