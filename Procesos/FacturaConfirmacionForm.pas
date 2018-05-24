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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, Data.Win.ADODB;

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
    dsQryAuxiliar: TDataSource;
    Button1: TButton;
    Label16: TLabel;
    DBText16: TDBText;
    procedure BtnAjustesBaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FADoSelMetPAgo: TAdoDAtaset;
    function CambiarMetodoPago(var IDMetodoPago: Integer; var Cuenta,
      CompConcepto: String): Boolean;
//    function SacaMetodo(IDCliente: Integer; var CtaPago: String): Integer;
  public
    { Public declarations }
    property VADODtStSelMetPago :TAdoDAtaset read FADoSelMetPAgo  write FadoSElMetPago; //AGo 31/17
  end;

//var
//  FrmDatosFacturaPrev: TFrmDatosFacturaPrev;

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
    frmFacturasPropiedadesEdit.DataSet:= DSCFDIPrevio.DataSet;
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
  FrmMetodoPagoFactura.DSMetodoPago.DataSet:=VADODtStSelMetPago;

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

//function TFrmDatosFacturaPrev.SacaMetodo (IDCliente:Integer; var CtaPago:String) :Integer;
//begin                             //Ajustado Ago 31/17
//  CtaPago:='';
//  dsQryAuxiliar.dataset.Close;
//  TAdoQuery(dsQryAuxiliar.dataset).sql.clear;
//  TAdoQuery(dsQryAuxiliar.dataset).sql.Add('Select * from Personas where idPersona = '+ intToSTR(IDCliente));
//    dsQryAuxiliar.dataset.Open;
//  if (not   dsQryAuxiliar.dataset.eof)  and not ( dsQryAuxiliar.dataset.FieldByName('IdMetodoPago').isnull) then
//  begin
//    Result:=  dsQryAuxiliar.dataset.FieldByName('IdMetodoPago').asInteger;
//    if not   dsQryAuxiliar.dataset.FieldByName('NumCtaPagoCliente').isnull then
//       CtaPago:=   dsQryAuxiliar.dataset.FieldByName('NumCtaPagoCliente').asstring;
//  end
//  else
//      Result:=5; //Otros
//
//end;

end.
