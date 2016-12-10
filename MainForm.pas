unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _MainRibbonForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, cxContainer, cxEdit, dxSkinsdxBarPainter,
  Vcl.StdActns, System.Actions, Vcl.ActnList, Vcl.ImgList, dxSkinsForm, dxBar,
  Vcl.ExtCtrls, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  cxClasses, dxRibbon, dxScreenTip, _Utils, _StandarDMod, _ReportDMod,
  UsuariosDM;

type
  TfrmMain = class(T_frmMainRibbon)
    actCatalogo: TAction;
    dxRibbon1Tab2: TdxRibbonTab;
    dxbEjemplo: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    actUbicaciones: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actBancos: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actMonedas: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    actPuestos: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    actPlazasTurnos: TAction;
    actEsquemasPago: TAction;
    actFormulas: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    actReglasNegocio: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    actEstablecimientos: TAction;
    dxbOrganizacion: TdxBar;
    actCapacitaciones: TAction;
    dxbPresonas: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    actEmpleados: TAction;
    actClientes: TAction;
    actProveedores: TAction;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    actMovimientosTipo: TAction;
    dxbEsquemas: TdxBar;
    actRoles: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton5: TdxBarLargeButton;
    actPersonas: TAction;
    actDuenoProceso: TAction;
    actOutsourcing: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    actComisionistas: TAction;
    actSocios: TAction;
    dxBarButton8: TdxBarButton;
    actInstruccionesTipos: TAction;
    actPeriodos: TAction;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    actUsuarios: TAction;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    actCuentasContables: TAction;
    actCuentasInternas: TAction;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    actRptDetalleMovimientosPersona: TAction;
    actCXCConceptos: TAction;
    dxBarLargeButton27: TdxBarLargeButton;
    actRptDispersion: TAction;
    dxBarLargeButton28: TdxBarLargeButton;
    actRptMovimientosPeriodo: TAction;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxtshConfiguracion: TdxRibbonBackstageViewTabSheet;
    dxtshUsuarios: TdxRibbonBackstageViewTabSheet;
    actRptNomina: TAction;
    dxBarLargeButton32: TdxBarLargeButton;
    actRptPrestamos: TAction;
    dxBarLargeButton33: TdxBarLargeButton;
    actPrestamos: TAction;
    dxBarLargeButton34: TdxBarLargeButton;
    actRptPlaza: TAction;
    actRptPagos: TAction;
    actRptCXPPagos: TAction;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    actRptMovimientosPersona: TAction;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    actProductos: TAction;
    dxBarLargeButton29: TdxBarLargeButton;
    dxbProductos: TdxBar;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    actMarcas: TAction;
    actFamilias: TAction;
    actProductosTipos: TAction;
    dxBarButton17: TdxBarButton;
    dxBarManagerBar1: TdxBar;
    actContratos: TAction;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    actAmortizaciones: TAction;
    dxBrLrgBtnFacturas: TdxBarLargeButton;
    actFacturacion: TAction;
    dxBarLargeButton39: TdxBarLargeButton;
    ActEmisor: TAction;
    dxBrLrgBtnCuentasXCobrar: TdxBarLargeButton;
    ActCuentasXCobrar: TAction;
    dxBrLrgBtnPagos: TdxBarLargeButton;
    ActPagos: TAction;
    dxBrLrgBtnAplicaciones: TdxBarLargeButton;
    ActAplicacionPagos: TAction;
    procedure actCatalogoExecute(Sender: TObject);
    procedure actIntervaCXPExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon;
      var AHandled: Boolean);
  private
    { Private declarations }
  protected
    gModulo: T_dmStandar;
    gReport: T_dmReport;
    dmUsuarios: TdmUsuarios;
    procedure CreateModule(pModulo: Integer; pCaption: String); override;
    procedure ConfigControls; override;
    procedure DestroyModule; override;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UbicacionesDM, BancosDM, MonedasDM, PuestosDM, PlazasTurnosDM,
  EstablecimientosDM,   CapacitacionDM, PersonasDM, RptPlazasDM, ProductosDM,
  MarcasDM, FamiliasDM, ContratosDM, AmortizacionesDM, FacturasDM,
  CuentasXCobrarDM, PagosDM;
//  EsquemaPagosDM, FormulasDM, ReglasNegocioDM,
//  MovimientosTiposDM, RolesDM, InstruccionesDM,
//  IncidenciasDM, InstruccionesTiposDM, PeriodosDM, MovimientosDM,
//  CuentasContablesDM, CuentasInternasDM, CuentasXPagarDM,
//  CuentasXCobrarConceptosDM, MovimientosDDM, CuentasXCobrarDM,
//  RptDetalleMovimientosPersonaDmod, RptMovimientosPeriodoDM,
//  PrestamosDM, ConfiguracionDM, RptPagosDmod, RptCXPPagosDmod,
//  RptMovimientosPersonaDM, ExportarPagosDocumentosDM;

procedure TfrmMain.actCatalogoExecute(Sender: TObject);
begin
  inherited;
  CreateModule(TAction(Sender).Tag, TAction(Sender).Caption);
end;

procedure TfrmMain.CreateModule(pModulo: Integer; pCaption: String);
begin
  inherited;
  DestroyModule;
  case pModulo of
    //Catalogos
    1: gModulo := TdmUbicaciones.Create(Self);
    2: gModulo := TdmBancos.Create(Self);
    3: gModulo := TdmMonedas.Create(Self);
    4: gModulo := TdmPlazasTurnos.Create(Self);
//    5: gModulo := TdmPeriodos.Create(Self);
//    6: gModulo := TdmFormulas.Create(Self);
//    7: gModulo := TdmReglasNegocio.Create(Self);
    8: gModulo := TdmPuestos.Create(Self);
    9: gModulo := TdmEstablecimientos.Create(Self);
   10: gModulo := TdmCapacitacion.Create(Self);
   11: gModulo := TdmProductos.Create(Self);
   12: gModulo := TdmMarcas.Create(Self);
   13: gModulo := TdmFamilias.Create(Self);
//   11: gModulo := TdmRoles.Create(Self);
//   12: gModulo := TdmEsquemaPagos.Create(Self);
//   13: gModulo := TdmMovimientosTipo.Create(Self);
//   14: gModulo := TdmInstruccionesTipos.Create(Self);
//   15: gModulo := TdmCuentasContables.Create(Self);
//   16: gModulo := TdmCuentasInternas.Create(Self);
//   17: gModulo := TdmCuentasXCobrarConceptos.Create(Self);
//   19: gModulo := TdmPrestamos.Create(Self);
   20: gModulo := TdmPersona.CreateWRol(Self, rNone);
   21: gModulo := TdmPersona.CreateWRol(Self, rEmpleado);
   22: gModulo := TdmPersona.CreateWRol(Self, rCliente);
   23: gModulo := TdmPersona.CreateWRol(Self, rProveedor);
   24: gModulo := TdmPersona.CreateWRol(Self, rDuenoProceso);
   25: gModulo := TdmPersona.CreateWRol(Self, rOutSourcing);
   26: gModulo := TdmPersona.CreateWRol(Self, rComisionista);
   27: gModulo := TdmPersona.CreateWRol(Self, rSocio);

   28: gModulo := TdmPersona.CreateWRol(Self, rEmisor); //Nov 28/16
   30: gModulo := TdmContratos.Create(Self);
   31: gModulo := TdmAmortizaciones.Create(Self);
   32: gModulo := TDMFacturas.CreateWMostrar(Self,True,1); //Nov 25/16 mod  nov29/16
   33: gModulo := TDMCuentasXCobrar.Create(Self); //Nov 25/16 mod  nov29/16
   34: gModulo := TdmPagos.Create(Self);
//   35: gModulo := TdmAplicacionesPagos.Create(Self);
//   32: gModulo := TdmMovimientos.Create(Self);
//   33: gModulo := TdmCuentasXPagar.Create(Self);
//   34: gModulo := TdmCuentasXCobrar.Create(Self);
//   35: gModulo := TdmExportarPagosDocumentos.Create(Self);
//   40: gModulo := TdmUsuarios.Create(Self);
//   51: begin
//         gModulo := TdmMovimientosD.Create(Self);
//         TdmMovimientosD(gModulo).TipoReporte:= trDispercion;
//         TdmMovimientosD(gModulo).actSearch.Execute;
//       end;
//   52: begin
//         gModulo := TdmMovimientosD.Create(Self);
//         TdmMovimientosD(gModulo).TipoReporte:= trNomina;
//         TdmMovimientosD(gModulo).actSearch.Execute;
//       end;
//   53: begin
//         gModulo := TdmMovimientosD.Create(Self);
//         TdmMovimientosD(gModulo).TipoReporte:= trPrestamos;
//         TdmMovimientosD(gModulo).actSearch.Execute;
//       end;
//   54: begin
//         gModulo := TdmRptCXPPagos.Create(Self);
//         TdmRptCXPPagos(gModulo).actSearch.Execute;
//       end;
//   55: begin
//         gReport := TdmRptPagos.Create(Self);
//         gReport.Title := pCaption;
//         gReport.Execute;
//       end;
//   56: begin
//         gReport := TdmRptMovimientosPersona.Create(Self);
//         gReport.Title := pCaption;
//         gReport.Execute;
//       end;
//   57: begin
//         gReport := TdmRptDetalleMovimientosPersona.Create(Self);
//         gReport.Title := pCaption;
//         gReport.Execute;
//       end;
//   58: begin
//         gModulo := TdmRptMovimientosPeriodo.Create(Self);
//         TdmRptMovimientosPeriodo(gModulo).Execute;
//       end;
   59: begin
         gModulo := TdmRptPlazas.Create(Self);
       end;
  end;
  if Assigned(gModulo) then
  begin
    gModulo.ShowModule(pnlMain, pCaption);
    Caption := pCaption + strSeparador + strProductName + strSeparador + strFileDescription;
  end;
end;

procedure TfrmMain.actIntervaCXPExecute(Sender: TObject);
begin
  inherited;
  ExecuteUntilFinish('IntervaCXP.exe');
end;

procedure TfrmMain.ConfigControls;
begin
  inherited;
//  actCFDI.Enabled:= Conected and _dmConection.EnabledAction(actCFDI.Tag);
  actUbicaciones.Enabled        := Conected;
  actBancos.Enabled             := Conected;
  actMonedas.Enabled            := Conected;
  actPuestos.Enabled            := Conected;
  actCapacitaciones.Enabled     := Conected;
  actPlazasTurnos.Enabled       := Conected;
  actPeriodos.Enabled           := Conected;
  actFormulas.Enabled           := Conected;
  actReglasNegocio.Enabled      := Conected;
  actEstablecimientos.Enabled   := Conected;
  actRoles.Enabled              := Conected;
  actEsquemasPago.Enabled       := Conected;
  actMovimientosTipo.Enabled    := Conected;
  actPersonas.Enabled           := Conected;
  actEmpleados.Enabled          := Conected;
  actClientes.Enabled           := Conected;
  actProveedores.Enabled        := Conected;
  actDuenoProceso.Enabled       := Conected;
  actOutsourcing.Enabled        := Conected;
  actComisionistas.Enabled      := Conected;
  actSocios.Enabled             := Conected;
  actUsuarios.Enabled           := Conected;
  actCuentasContables.Enabled   := Conected;
  actCuentasInternas.Enabled    := Conected;
  actCXCConceptos.Enabled       := Conected;
  actRptMovimientosPeriodo.Enabled := Conected;
  actRptDispersion.Enabled         := Conected;
  actRptNomina.Enabled             := Conected;
  actRptPrestamos.Enabled       := Conected;
  actRptDetalleMovimientosPersona.Enabled := Conected;
  actPrestamos.Enabled          := Conected;
  actRptPlaza.Enabled           := Conected;
  actRptCXPPagos.Enabled        := Conected;
  actRptPagos.Enabled           := Conected;
end;

procedure TfrmMain.DestroyModule;
begin
  if Assigned(gModulo) then FreeAndNil(gModulo);
end;

procedure TfrmMain.dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon;
  var AHandled: Boolean);
begin
  inherited;
//  if Conected then
//    dmConfiguracion.OpenDataSet
//  else
//    dmConfiguracion.CloseDataSet;
  if Conected then
    dmUsuarios.OpenDataSet
  else
    dmUsuarios.CloseDataSet;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  dmUsuarios:= TdmUsuarios.Create(nil);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmUsuarios);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
//  dmConfiguracion.ShowModule(dxtshConfiguracion, '');
  dmUsuarios.ShowModule(dxtshUsuarios, '');
end;

end.
