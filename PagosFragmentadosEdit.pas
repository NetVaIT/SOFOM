unit PagosFragmentadosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxEdit, Vcl.Menus, Vcl.ImgList, Vcl.StdCtrls, Data.DB, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Buttons,
  cxGroupBox, cxButtons, cxCheckBox, cxDBEdit, cxRadioGroup, Vcl.DBCtrls,
  cxLabel, cxDBLabel, Vcl.ExtCtrls, cxTextEdit, cxMemo, cxPC, Data.Win.ADODB;

type
  TFrmEdtPagosFragmentados = class(TForm)
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    Label7: TLabel;
    cxDBMemo1: TcxDBMemo;
    PnlDatosBase: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxDBLblAnexo: TcxDBLabel;
    cxDBTxtEdtSerie: TcxDBTextEdit;
    cxDBTxtEdtImporte: TcxDBTextEdit;
    cxDBTxtEdtFolio: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    DBLkpCmbBxMetodoPago: TDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBRdGrpOrigenPago: TcxDBRadioGroup;
    DBLkpCmbBxAnexos: TDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxBtnUsaNotaCredito: TcxButton;
    tsCFDI: TcxTabSheet;
    gbBancarizado: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    btnAddCuentaOrdenante: TSpeedButton;
    Label14: TLabel;
    Label4: TLabel;
    DBLookupComboBox4: TcxDBLookupComboBox;
    DBLookupComboBox5: TcxDBLookupComboBox;
    DBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    gbCadena: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBLookupComboBox6: TcxDBLookupComboBox;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    DataSource: TDataSource;
    pmlMain: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cxImageList: TcxImageList;
    DSAnexos: TDataSource;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxBtnUsaNotaCreditoClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdtPagosFragmentados: TFrmEdtPagosFragmentados;

implementation

{$R *.dfm}

uses PagosRealesDM, ListaNotaCreditoForm;

procedure TFrmEdtPagosFragmentados.btnCancelClick(Sender: TObject);
begin
   if DAtasource.State=dsedit then    //Solo puede estar en edit si sus saldo e importe son iguales
  begin
    datasource.DataSet.Cancel;
  end;
   Close;
end;

procedure TFrmEdtPagosFragmentados.btnOkClick(Sender: TObject);
begin
  if DAtasource.State=dsedit then    //Solo puede estar en edit si sus saldo e importe son iguales
  begin
    if (not cxDBTxtEdtImporte.Properties.readonly)  then
       DAtasource.DataSet.FieldByName('Saldo').AsFloat:=DAtasource.DataSet.FieldByName('Importe').AsFloat;
    DAtasource.DataSet.Post;
  end;
  Close;
end;

procedure TFrmEdtPagosFragmentados.cxBtnUsaNotaCreditoClick(Sender: TObject);
var  //Copiado de Pagos  ago31/18
  frmListaNotasCredito: TfrmListaNotasCredito;
begin
  inherited;

  if not datasource.dataset.FieldByName('IdPersonaCliente').Isnull then
  begin
    frmListaNotasCredito:=TfrmListaNotasCredito.Create(self);
    TadoDAtaset(frmListaNotasCredito.datasource.DataSet).close;
    TadoDAtaset(frmListaNotasCredito.datasource.DataSet).Parameters.ParamByName('IDPersona').Value:= datasource.dataset.FieldByName('IdPersonaCliente').AsInteger;
    TadoDAtaset(frmListaNotasCredito.datasource.DataSet).open;
    if not TadoDAtaset(frmListaNotasCredito.datasource.DataSet).eof then
    begin
      frmListaNotasCredito.ShowModal;
      if frmListaNotasCredito.ModalResult=mrOk then
      begin
        datasource.dataset.fieldbyname('IDCFDI_NCR').AsInteger:= frmListaNotasCredito.IdCFDIAct;
        datasource.dataset.fieldbyname('Importe').AsFloat:= frmListaNotasCredito.MontoActual; //VErificar que se ajuste el saldo
       //DEberia tenerlo
        datasource.dataset.fieldbyname('IDMetodoPago').AsInteger:= 0; //Tipo Nota credito
        datasource.dataset.fieldbyname('CuentaPago').Asstring:=''; //SE limpia
        datasource.dataset.fieldbyname('Referencia').AsString:= 'NC:'+frmListaNotasCredito.SerieFolioNC;

    //Tomar datos //Solo ajustar daldo dela nota cuanso se Guarde el pago
        DBLkpCmbBxMetodoPago.Enabled:=false; //Porque  uso nota crédito  Jun 28/17
        cxDBTxtEdtImporte.Enabled:=False;
//        cxBtnUsaNotaCredito.Enabled:=False; //Verificar si se deja
      end;
    end
    else
    begin
        ShowMessage('No existen Notas de crédito disponibles para este cliente');
    end;
    frmListaNotasCredito.Free;
  end
  else
    ShowMessage('Debe seleccionar el cliente');
end;

procedure TFrmEdtPagosFragmentados.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
//Sep 18/18
  cxDBTxtEdtImporte.Properties.ReadOnly:= Datasource.DataSet.FieldByName('importe').AsFloat<>Datasource.DataSet.FieldByName('saldo').AsFloat; //sep 18/18
  DBLkpCmbBxAnexos.ReadOnly:=  cxDBTxtEdtImporte.Properties.ReadOnly;

  cxDBTxtEdtSerie.Properties.ReadOnly:= DBLkpCmbBxAnexos.ReadOnly;

  cxDBTxtEdtFolio.Properties.ReadOnly:= DBLkpCmbBxAnexos.ReadOnly;
  cxDBRdGrpOrigenPago.Properties.ReadOnly:= DBLkpCmbBxAnexos.ReadOnly;
end;

end.
