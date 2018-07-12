unit FacturaConfirmacionForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Vcl.ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, Data.Win.ADODB,
  ProcesosType;

type
  TFrmDatosFacturaPrev = class(TForm)
    DSCFDIPrevio: TDataSource;
    DSConceptosPrevios: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnCancel: TButton;
    btnOk: TButton;
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label11: TLabel;
    DBText12: TDBText;
    Label12: TLabel;
    DBText13: TDBText;
    Label13: TLabel;
    DBText14: TDBText;
    BtnAjustesBase: TButton;
    Label14: TLabel;
    DBText8: TDBText;
    Label15: TLabel;
    DBText15: TDBText;
    Button1: TButton;
    Label16: TLabel;
    DBText16: TDBText;
    procedure BtnAjustesBaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FCFDITipoDocumento: TCFDITipoDocumento;
    FCFDI: TDataSet;
    FConceptos: TDataSet;
    FMetodoPago: TDataSet;
    FactRelacionarCFDI: TBasicAction;
    function CambiarMetodoPago(var IDMetodoPago: Integer; var Cuenta,
      CompConcepto: String): Boolean;
    procedure SetCFDI(const Value: TDataSet);
    procedure SetConceptos(const Value: TDataSet);
  public
    { Public declarations }
    property actRelacionarCFDI: TBasicAction read FactRelacionarCFDI write FactRelacionarCFDI;
    property CFDI: TDataSet read FCFDI write SetCFDI;
    property Conceptos: TDataSet read FConceptos write SetConceptos;
    property MetodoPago: TDataSet read FMetodoPago write FMetodoPago;
    property CFDITipoDocumento: TCFDITipoDocumento read FCFDITipoDocumento write FCFDITipoDocumento;
  end;

implementation

{$R *.dfm}

uses FacturasDM, MetodoPagoFacturaEdt, FacturasPropiedadesEdit;

procedure TFrmDatosFacturaPrev.BtnAjustesBaseClick(Sender: TObject);
var
  IdNvoMetPago:Integer; //D Ago 31/17
  CtaNvaPago, ComplementoConc:String;
  CambioMetPago:Boolean; //Ago 31/17
begin
  IdNvoMetPago:=0;
  CambioMetPago:=CambiarMetodoPago(IdNvoMetPago,CtaNvaPago,ComplementoConc );
  if cambioMetPago then
  begin
    DSCFDIPrevio.DataSet.Edit;
    DSCFDIPrevio.DataSet.Fieldbyname('IDMetodoPago').asInteger:= IdNvoMetPago ;

    DSCFDIPrevio.DataSet.Fieldbyname('NumCtaPago').AsString:=CtaNvaPago;
    DSCFDIPrevio.DataSet.Post;
   // if True then
    DSConceptosPrevios.DataSet.Open;    //Verificar que es te en el primero de la factura
    DSConceptosPrevios.DataSet.first;
    if (ComplementoConc<>'') and (not DSConceptosPrevios.DataSet.eof)
      and (DSConceptosPrevios.DataSet.FieldByName('IDCFDI').ASinteger = DSCFDIPrevio.DataSet.Fieldbyname('IDCFDI').asInteger)
      and (application.messageBox('El concepto será modificado, se agregará el complemento colocado. Esta seguro? ',
                            'Confirmación',MB_ICONEXCLAMATION or MB_YESNO)=ID_YES) then
    begin  //DEbe ser
      DSConceptosPrevios.DataSet.Edit;
      DSConceptosPrevios.DataSet.FieldByName('Descripcion').ASString:= DSConceptosPrevios.DataSet.FieldByName('Descripcion').asString+' '+ ComplementoConc;

      DSConceptosPrevios.DataSet.post;
    end;
  end;
end;

procedure TFrmDatosFacturaPrev.Button1Click(Sender: TObject);
var
  frmFacturasPropiedadesEdit: TfrmFacturasPropiedadesEdit;
begin
  frmFacturasPropiedadesEdit := TfrmFacturasPropiedadesEdit.Create(Self);
  try
    DSCFDIPrevio.DataSet.Edit;
    frmFacturasPropiedadesEdit.DataSet:= CFDI;
    frmFacturasPropiedadesEdit.actRelacionarCFDI := actRelacionarCFDI;
    frmFacturasPropiedadesEdit.CFDITipoDocumento := CFDITipoDocumento;
    frmFacturasPropiedadesEdit.ShowModal;
  finally
    frmFacturasPropiedadesEdit.Free;
  end;
end;

function TFrmDatosFacturaPrev.CambiarMetodoPago(var IDMetodoPago:Integer; var Cuenta, CompConcepto:String):Boolean;
var
  FrmMetodoPagoFactura: TFrmMetodoPagoFactura;
begin  //Jul 10/17
  Cuenta:=''; //Para que al menos este vacia
  CompConcepto:=''; //ago 30/17
  IDMetodoPago:=6;//SacaMetodo(DSCFDIPrevio.dataset.fieldbyname('IdPersonaReceptor').AsInteger, Cuenta); // ConfirmaFActura datos  CFDI
  FrmMetodoPagoFactura:=TFrmMetodoPagoFactura.Create(self);
  FrmMetodoPagoFactura.IdMetSeleccion:=IDMetodoPago;
  FrmMetodoPagoFactura.CuentaSeleccion:= Cuenta;
  FrmMetodoPagoFactura.MetodoPago := MetodoPago;
  FrmMetodoPagoFactura.ShowModal;
  Result:= FrmMetodoPagoFactura.ModalResult=mrOk ;
  if result then
  begin
    IDMetodoPago:= FrmMetodoPagoFactura.IdMetSeleccion;
    Cuenta:= FrmMetodoPagoFactura.CuentaSeleccion;
    CompConcepto:=FrmMetodoPagoFactura.ComplemConcepto; //Ago 30/17
  end;
  FrmMetodoPagoFactura.Free;
end;

procedure TFrmDatosFacturaPrev.FormCreate(Sender: TObject);
begin //DEberian estar abiertos
  DSCFDIPrevio.DataSet.Open;
  DSConceptosPrevios.DataSet.Open;
end;

procedure TFrmDatosFacturaPrev.SetCFDI(const Value: TDataSet);
begin
  FCFDI := Value;
  DSCFDIPrevio.DataSet := Value;
end;

procedure TFrmDatosFacturaPrev.SetConceptos(const Value: TDataSet);
begin
  FConceptos := Value;
  DSConceptosPrevios.DataSet := Value;
end;

end.
