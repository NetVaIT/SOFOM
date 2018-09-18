unit PagosRealesEdit;

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
  cxEdit, cxMemo, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.Buttons, cxGroupBox, cxLabel, cxDBLabel, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.ExtCtrls, cxPC, cxCheckBox,Data.Win.ADODB,
  Vcl.Menus, cxButtons;

type
  TFrmEdPagosReales = class(T_frmEdit)
    cxTbShtDatosComplemento: TcxTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTxtEdtImporte: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLkpCmbBxCliente: TDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    DBLkpCmbBxMetodoPago: TDBLookupComboBox;
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
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBChckBxNC: TcxDBCheckBox;
    cxBtnUsaNotaCredito: TcxButton;
    procedure cxDBTxtEdtImporteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxBtnUsaNotaCreditoClick(Sender: TObject);
    procedure cxDBChckBxNCClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    FactAddCuentaOrdenante: TBasicAction;
    FPuedeCambiar: Boolean;
    procedure SetactAddCuentaOrdenante(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
     property actAddCuentaOrdenante: TBasicAction read FactAddCuentaOrdenante write SetactAddCuentaOrdenante;
     Property PuedeCambiar:Boolean  read FPuedeCambiar write FPuedeCAmbiar;
  end;

var
  FrmEdPagosReales: TFrmEdPagosReales;

implementation

{$R *.dfm}

uses PagosRealesDM, ListaNotaCreditoForm;

procedure TFrmEdPagosReales.cxBtnUsaNotaCreditoClick(Sender: TObject);
var
  frmListaNotasCredito: TfrmListaNotasCredito;
begin                             //Jun 27/17
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
        datasource.dataset.fieldbyname('Saldo').AsFloat:=  frmListaNotasCredito.MontoActual;
    // No existe, se queda el que tiene   datasource.dataset.fieldbyname('IDMetodoPago').AsInteger:= 0; //Tipo Nota credito
      //Verificar ??  datasource.dataset.fieldbyname('CuentaPago').Asstring:=''; //SE limpia
        datasource.dataset.fieldbyname('Referencia').AsString:= 'NC:'+frmListaNotasCredito.SerieFolioNC;

    //Tomar datos //Solo ajustar daldo dela nota cuanso se Guarde el pago
        DBLkpCmbBxMetodoPago.Enabled:=false; //Porque  uso nota crédito  Jun 28/17
        cxDBTxtEdtImporte.Enabled:=False;
//        cxBtnUsaNotaCredito.Enabled:=False; //Verificar si se deja
      end;
    end
    else
      ShowMessage('No existen Notas de crédito disponibles para este cliente');
    frmListaNotasCredito.Free;
  end
  else
    ShowMessage('Debe seleccionar el cliente');

end;

procedure TFrmEdPagosReales.cxDBChckBxNCClick(Sender: TObject);
begin
  inherited;
  cxBtnUsaNotaCredito.Visible:=cxDBChckBxNC.Checked;
  if not cxDBChckBxNC.Checked  then
  begin
    Datasource.Dataset.fieldbyname('IDCFDI_NCR').Clear;
    Datasource.Dataset.fieldbyname('REferencia').ASString:='';
  end;
end;

procedure TFrmEdPagosReales.cxDBTxtEdtImporteExit(Sender: TObject);
begin
  inherited;
  if DataSource.State in [dsInsert,dsEdit] then //Asegurarse que no se pueda editar si tieme asociados más de 1 pago
  begin
    Datasource.Dataset.fieldbyname('Saldo').ASFloat:=Datasource.Dataset.fieldbyname('Importe').ASFloat;
  end;
end;

procedure TFrmEdPagosReales.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cxBtnUsaNotaCredito.Visible:=cxDBChckBxNC.Checked;     //Solo si esta editando o insertando //sep 3/18
  cxDBTxtEdtImporte.Properties.ReadOnly:= cxDBChckBxNC.Checked; //sep 5/18

end;

procedure TFrmEdPagosReales.FormShow(Sender: TObject);
begin
  inherited;

  if  DataSource.State in [dsEdit] then
  begin

  if not PuedeCAmbiar then
     DAtasource.DataSet.Cancel;
  view:=not PuedeCambiar;     //ago 27/18
  end;
end;

procedure TFrmEdPagosReales.SetactAddCuentaOrdenante(const Value: TBasicAction);
begin        //Copiado de Pagos    ago 24/18
  FactAddCuentaOrdenante := Value;
  btnAddCuentaOrdenante.Action := Value;
end;

end.
