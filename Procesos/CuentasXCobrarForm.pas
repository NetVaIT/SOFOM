unit CuentasXCobrarForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TFrmConCuentasXCobrar = class(T_frmGrid)
    tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdAnexosAmortizaciones: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterImpuesto: TcxGridDBColumn;
    tvMasterInteres: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterEstatusCXC: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    dxBarButton8: TdxBarButton;
    dxBtnPrefacturas: TdxBarButton;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    dxBrBtnMoratorios: TdxBarButton;
    dxBrBtnGenerarCXC: TdxBarButton;
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    FActGeneraPrefactura: TBasicAction;
    FActActualizaMoratorios: TBasicAction;
    FActGeneraCXC: TBasicAction;
    procedure SetActGeneraPrefactura(const Value: TBasicAction);
    procedure SetActActualizaMoratorios(const Value: TBasicAction);
    procedure SetActGeneraCXC(const Value: TBasicAction);//Feb 8/17
    { Private declarations }
  public
    { Public declarations }
    property ActGenerarPrefactura : TBasicAction read FActGeneraPrefactura write SetActGeneraPrefactura;
    property ActActualizaMoratorios : TBasicAction read FActActualizaMoratorios write SetActActualizaMoratorios;  //Feb 8/17
    property ActGenerarCXCs : TBasicAction read FActGeneraCXC write SetActGeneraCXC;  //Feb 14/17
  end;

var
  FrmConCuentasXCobrar: TFrmConCuentasXCobrar;

implementation

{$R *.dfm}

uses CuentasXCobrarDM, CuentasXCobrarEdit;

{ TFrmConCuentasXCobrar }

procedure TFrmConCuentasXCobrar.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dxBtnPrefacturas.Enabled:=datasource.DataSet.FieldByName('IDCuentaXCobrarEstatus').AsInteger=-1;  //Dic 7/16 Precargada
end;

procedure TFrmConCuentasXCobrar.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TFrmEdCuentasXCobrar.Create(Self);

end;

procedure TFrmConCuentasXCobrar.SetActActualizaMoratorios(   //Feb 8/17
  const Value: TBasicAction);
begin
  FActActualizaMoratorios := Value;
  dxBrBtnMoratorios.Action:=VAlue;
  dxBrBtnMoratorios.ImageIndex:=18;
end;

procedure TFrmConCuentasXCobrar.SetActGeneraCXC(const Value: TBasicAction);
begin
  FActGeneraCXC := Value;
  dxBrBtnGenerarCXC.Action:=Value;
  dxBrBtnGenerarCXC.ImageIndex:=19;
end;

procedure TFrmConCuentasXCobrar.SetActGeneraPrefactura(
  const Value: TBasicAction);
begin
  FActGeneraPrefactura := Value;
  dxBtnPrefacturas.Action:=Value;
  dxBtnPrefacturas.ImageIndex:=17;
end;

end.
