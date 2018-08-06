unit MRPOCamposAdicEdit;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC, Vcl.Menus, cxButtons,
  cxCalc, cxDBEdit,Data.Win.ADODB;

type
  TfrmMRPOCampoAdiEdit = class(T_frmEdit)
    cxCmbBxListaCampos: TcxComboBox;
    dsAuxiliar: TDataSource;
    Label1: TLabel;
    cxDBTxtEdtCampo: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxBtnCampos: TcxButton;
    procedure cxBtnCamposClick(Sender: TObject);
    procedure cxCmbBxListaCamposClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  //  FListaCampos: TStrings;
  //  procedure SetListaCampos(const Value: TStrings);
    { Private declarations }
  public
    { Public declarations }
    TablaAct:String;
  end;

var
  frmMRPOCampoAdiEdit: TfrmMRPOCampoAdiEdit;

implementation

{$R *.dfm}

uses MatrizRiesgoDM;

procedure TfrmMRPOCampoAdiEdit.cxBtnCamposClick(Sender: TObject);
var
  tabla, campo:String;
begin
  inherited;
  cxCmbBxListaCampos.Properties.Items.Clear;
  if not DataSource.DataSet.FieldByName('IdMRPreguntaOpcion').IsNull then //Poner el dato en el onnew record ya ..
  begin
    TAdoQuery(dsAuxiliar.DataSet).SQL.Clear;
    TAdoQuery(dsAuxiliar.DataSet).SQL.Add('Select * from MRPreguntasOpciones where IdMRPreguntaOpcion='+DataSource.DataSet.FieldByName('IdMRPreguntaOpcion').asstring);
    TAdoQuery(dsAuxiliar.DataSet).open;
    if not  TAdoQuery(dsAuxiliar.DataSet).Eof then
    begin
      tabla:= dsAuxiliar.DataSet.FieldByName('TablaExterna').AsString;
      campo:= dsAuxiliar.DataSet.FieldByName('CampoADesplegar').AsString;

    end;

    TAdoQuery(dsAuxiliar.DataSet).SQL.Clear;
    TAdoQuery(dsAuxiliar.DataSet).SQL.Add('select COLUMN_NAME from INFORMATION_SCHEMA.columns where table_name='''+Tabla+'''');
    dsAuxiliar.DataSet.Open;
    while not  dsAuxiliar.DataSet.Eof do
    begin
      cxCmbBxListaCampos.Properties.Items.Add( dsAuxiliar.DataSet.FieldByName('COLUMN_NAME').asstring);
      dsAuxiliar.DataSet.Next;
    end;

    dsAuxiliar.DataSet.Close;


    cxCmbBxListaCampos.Visible:=True;
  end;

end;

procedure TfrmMRPOCampoAdiEdit.cxCmbBxListaCamposClick(Sender: TObject);
begin
  inherited;
  cxDBTxtEdtCampo.Text:= cxCmbBxListaCampos.Text;
end;

procedure TfrmMRPOCampoAdiEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxCmbBxListaCampos.Visible:=False;
  inherited;

end;

end.
