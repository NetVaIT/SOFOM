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
  UsuariosDM, ProcesosType;

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
    dxBarLargeButton9: TdxBarLargeButton;
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
    dxbEsquemas: TdxBar;
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
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    actComisionistas: TAction;
    actSocios: TAction;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarLargeButton25: TdxBarLargeButton;
    actCXCConceptos: TAction;
    dxBarLargeButton27: TdxBarLargeButton;
    dxtshConfiguracion: TdxRibbonBackstageViewTabSheet;
    dxtshUsuarios: TdxRibbonBackstageViewTabSheet;
    dxBarLargeButton34: TdxBarLargeButton;
    actRptPlaza: TAction;
    dxBarButton13: TdxBarButton;
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
    actFacturacion: TAction;
    dxBarLargeButton39: TdxBarLargeButton;
    actEmisor: TAction;
    dxBrLrgBtnCuentasXCobrar: TdxBarLargeButton;
    actCuentasXCobrar: TAction;
    dxBrLrgBtnPagos: TdxBarLargeButton;
    actPagos: TAction;
    actAplicacionPagos: TAction;
    actCotizaciones: TAction;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBrMngrReportes: TdxBar;
    dxBrLrgBtnAntiguedad: TdxBarLargeButton;
    actRptAntiguedadSaldos: TAction;
    dxBrLrgBtnEstadoCuenta: TdxBarLargeButton;
    actEstadoCuenta: TAction;
    actListasRestringidas: TAction;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBrLrgBtnSeguimiento: TdxBarLargeButton;
    actSeguimiento: TAction;
    dxBrLrgBtnInformacionContratos: TdxBarLargeButton;
    actInformacionContratos: TAction;
    actMonedasCotizaciones: TAction;
    dxBarLargeButton22: TdxBarLargeButton;
    actRptCobertura: TAction;
    dxBarLargeButton26: TdxBarLargeButton;
    actRptExpecientes: TAction;
    dxBarLargeButton31: TdxBarLargeButton;
    actReporteCartera: TAction;
    actRptColocacion: TAction;
    dxBarLargeButton32: TdxBarLargeButton;
    actColocacionAcumulado: TAction;
    dxBarLargeButton33: TdxBarLargeButton;
    actPoneFechaActual: TAction;
    dxBrLrgBtnPoneFechaActual: TdxBarLargeButton;
    dxBarManagerBar2: TdxBar;
    dxBarLargeButton36: TdxBarLargeButton;
    actBuroCredito: TAction;
    actNotasCredito: TAction;
    actAlertasPLD: TAction;
    dxBarLargeButton41: TdxBarLargeButton;
    actRptPagoAplicacionesMensual: TAction;
    actAgregarAlerta: TAction;
    dxBarButton11: TdxBarButton;
    actPLDAlertasConfiguracion: TAction;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    actCFDIPagos: TAction;
    dxBrLrgBtnMatrizRiesgo: TdxBarLargeButton;
    actMatrizRiesgo: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBrLrgBtnEvaluacionRiesgo: TdxBarLargeButton;
    actEvaluacionRiesgo: TAction;
    dxBrLrgBtnPagoReal: TdxBarLargeButton;
    actPagosPorCliente: TAction;
    actRptCFDIContabilidad: TAction;
    dxBarButton12: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    actPerfiles: TAction;
    dxBrLrgBtnPerfiles: TdxBarLargeButton;
    procedure actCatalogoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon;
      var AHandled: Boolean);
    procedure actPoneFechaActualExecute(Sender: TObject);
    procedure actAgregarAlertaExecute(Sender: TObject);
  private
    procedure UsarPermisos;
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

uses ConfiguracionDM, UbicacionesDM, BancosDM, MonedasDM, PuestosDM, PlazasTurnosDM,
  EstablecimientosDM,   CapacitacionDM, PersonasDM, RptPlazasDM, ProductosDM,
  MarcasDM, FamiliasDM, ContratosDM, AmortizacionesDM, FacturasDM,
  CuentasXCobrarDM, PagosDM, CotizacionesDM, rptAntiguedadSaldosDM,
  AplicacionesConsultaDM, EstadosCuentaDM, ListasRestringidasDM,
  SeguimientoCobranzaDM, rptInformacionContratosDM, MonedasCotizacionesDM,
  RptCoberturaDM, RptExpedientesRecibidosDM, rptReporteCarteraDM,
  RptAnexosProductosDM, RptColocacionAcumuladoDM, PonerFechaActualForm,
  BuroCreditoDM, PLDAlertasDM, RptPagoAplicacionesMensualDM, _ConectionDmod,
  PLDAlertasConfiguracionDM, MatrizRiesgoDM, EvaluacionesRiesgoDM,
  PagosRealesDM, RptCFDIContabilidadDM, UsuariosPerfilesDM;

procedure TfrmMain.actAgregarAlertaExecute(Sender: TObject);
var
  dmPLDAlertas: TdmPLDAlertas;
begin
  inherited;
  dmPLDAlertas := TdmPLDAlertas.Create(Self);
  try
    dmPLDAlertas.GenerarAlertaPreocupante;
  finally
    dmPLDAlertas.Free;
  end;
end;

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
    5: gModulo := TdmListasRestringidas.Create(Self);
    6: gModulo := TdmMonedasCotizaciones.Create(Self);
    8: gModulo := TdmPuestos.Create(Self);
    9: gModulo := TdmEstablecimientos.Create(Self);
   10: gModulo := TdmCapacitacion.Create(Self);
   11: gModulo := TdmProductos.Create(Self);
   12: gModulo := TdmMarcas.Create(Self);
   13: gModulo := TdmFamilias.Create(Self);
   20: gModulo := TdmPersonas.CreateWRol(Self, rNone);
   21: gModulo := TdmPersonas.CreateWRol(Self, rEmpleado);
   22: gModulo := TdmPersonas.CreateWRol(Self, rCliente);
   23: gModulo := TdmPersonas.CreateWRol(Self, rProveedor);
   24: gModulo := TdmPersonas.CreateWRol(Self, rDuenoProceso);
   25: gModulo := TdmPersonas.CreateWRol(Self, rOutSourcing);
   26: gModulo := TdmPersonas.CreateWRol(Self, rComisionista);
   27: gModulo := TdmPersonas.CreateWRol(Self, rSocio);
   28: gModulo := TdmPersonas.CreateWRol(Self, rEmisor);
   29: gModulo := TdmPLDAlertasConfiguracion.Create(Self);
   30: gModulo := TdmContratos.Create(Self);
   31: gModulo := TdmAmortizaciones.Create(Self);
   32: gModulo := TDMFacturas.CreateWMostrar(Self,True,tdFactura);
   33: gModulo := TDMCuentasXCobrar.Create(Self);
   34: gModulo := TdmPagos.Create(Self);
   35: gModulo := TdmAplicacionesConsulta.Create(Self);
   36: gModulo := TdmCotizaciones.Create(Self);
   37: gModulo := TdmSeguimientoCobranza.Create(Self);
   38: gModulo := TDMFacturas.CreateWMostrar(Self,True,tdNotaCredito);
   39: gModulo := TdmPLDAlertas.Create(Self);
   40: gModulo := TDMFacturas.CreateWMostrar(Self,True,tdCFDIPago);
   50: gModulo := TdmRptAntiguedadSaldos.Create(Self);
   51: gModulo := TdmEstadosCuenta.Create(Self);
   52: gModulo := TdmRptInformacionContratos.Create(Self);
   53: gModulo := TdmRptReporteCartera.Create(Self);
   54: begin
         gReport := TdmRptCobertura.Create(Self);
         gReport.Title := pCaption;
         gReport.Execute;
       end;
   55: begin
         gReport := TdmRptExpedientesRecibidos.Create(Self);
         gReport.Title := pCaption;
         gReport.Execute;
       end;
   56: begin
         gReport := TdmRptAnexosProductos.Create(Self);
         gReport.Title := pCaption;
         gReport.Execute;
       end;
   57: begin
         gReport := TdmRptColocacionAcumulado.Create(Self);
         gReport.Title := pCaption;
         gReport.Execute;
       end;
   58: begin
         gModulo := TdmBuroCredito.Create(Self);
         TdmBuroCredito(gModulo).Execute;
       end;
   59: begin
         gModulo := TdmRptPlazas.Create(Self);
       end;
   60: begin
         gReport := TdmRptPagoAplicacionesMensual.Create(Self);
         gReport.Title := pCaption;
         gReport.Execute;
       end;
   61: gModulo := TdmMatrizRiesgo.Create(Self); //Matriz Riesgo
   62: gModulo := TdmEvaluacionRiesgo.Create(Self); //Matriz Riesgo

   63: gModulo := TdmPagosReales.Create(Self);  //Pagos por Cliente
   64: gModulo := TdmRptCFDIContabilidad.Create(Self);

   65: gModulo := TdmUsuariosPerfiles.Create(Self);  //Perfiles de usuario ene 18/19

  end;
  if Assigned(gModulo) then
  begin
    gModulo.ShowModule(pnlMain, pCaption);
    Caption := pCaption + strSeparador + strProductName + strSeparador + strFileDescription;
  end;
end;

procedure TfrmMain.actPoneFechaActualExecute(Sender: TObject);
var FrmPoneFechaActual:TFrmPoneFechaActual;
begin
  inherited;
  if not FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt') then   //Oct 4/17
  begin
    FrmPoneFechaActual:=TFrmPoneFechaActual.Create(self);
    FrmPoneFechaActual.ShowModal;
    FrmPoneFechaActual.Free;
  end
  else
    Showmessage('En Produccion No es posible cambiar de fecha');     //Oct 4/17
end;

procedure TfrmMain.ConfigControls;
begin
  inherited;
//  actCFDI.Enabled:= Conected and _dmConection.EnabledAction(actCFDI.Tag);
  actUbicaciones.Enabled        := Conected;
  actBancos.Enabled             := Conected;
  actMonedas.Enabled            := Conected;
  actMonedasCotizaciones.Enabled := Conected;
  actListasRestringidas.Enabled := Conected;
  actPuestos.Enabled            := Conected;
  actCapacitaciones.Enabled     := Conected;
  actPlazasTurnos.Enabled       := Conected;
  actEstablecimientos.Enabled   := Conected;
  actProductos.Enabled          := Conected;
  actMarcas.Enabled             := Conected;
  actFamilias.Enabled           := Conected;
  actProductosTipos.Enabled     := Conected;
  actPersonas.Enabled           := Conected;
  actEmpleados.Enabled          := Conected;
  actClientes.Enabled           := Conected;
  actProveedores.Enabled        := Conected;
  actDuenoProceso.Enabled       := Conected;
  actOutsourcing.Enabled        := Conected;
  actComisionistas.Enabled      := Conected;
  actSocios.Enabled             := Conected;
  actEmisor.Enabled             := Conected;
  actCXCConceptos.Enabled       := Conected;
  actAmortizaciones.Enabled     := Conected;
  actCotizaciones.Enabled       := Conected;
  actContratos.Enabled          := Conected;
  actFacturacion.Enabled        := Conected;
  actCuentasXCobrar.Enabled     := Conected;
  actPagos.Enabled              := Conected;
  actCFDIPagos.Enabled          := Conected;
  actAplicacionPagos.Enabled    := Conected;
  actSeguimiento.Enabled        := Conected;
  actRptPlaza.Enabled           := Conected;
  actRptAntiguedadSaldos.Enabled:= Conected;
  actEstadoCuenta.Enabled       := Conected;
  actInformacionContratos.Enabled:= Conected;
  actReporteCartera.Enabled     := Conected;
  actRptCobertura.Enabled       := Conected;
  actRptExpecientes.Enabled     := Conected;
  actRptColocacion.Enabled      := Conected;
  actRptPagoAplicacionesMensual.Enabled := Conected;
  actColocacionAcumulado.Enabled:= Conected;
  actBuroCredito.Enabled        := Conected;
  actNotasCredito.Enabled       := Conected;
  actAlertasPLD.Enabled         := Conected and _dmConection.OficialCumplimiento;
  actPLDAlertasConfiguracion.Enabled := Conected and _dmConection.OficialCumplimiento;
  actAgregarAlerta.Enabled      := Conected;
  actMatrizRiesgo.Enabled       := Conected;
  actEvaluacionRiesgo.Enabled   := Conected;
  actRptCFDIContabilidad.Enabled  := Conected;
  UsarPermisos; // Ene 21/19
end;

procedure TfrmMain.DestroyModule;
begin
  if Assigned(gModulo) then FreeAndNil(gModulo);
end;

procedure TfrmMain.dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon;
  var AHandled: Boolean);
begin
  inherited;
  if Conected then
    dmConfiguracion.OpenDataSet
  else
    dmConfiguracion.CloseDataSet;
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
  dmConfiguracion.ShowModule(dxtshConfiguracion, '');
  dmUsuarios.ShowModule(dxtshUsuarios, '');
  if FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt') then //Oct 4/17
  begin
     dxRibbonStatusBar1.Panels[2].Text:= 'PRODUCCION';
  end;
end;

procedure TfrmMain.UsarPermisos;
var   //Copiado de TP Ene 21/19
  i, tagAux:Integer;
   MenuTxt, OpcionTxt :String;
begin
  MenuTxt:=_dmConection.PerMenu;
  OpcionTxt:=_dmConection.PerOpcion;

  for I := 0 to ComponentCount -1 do
  begin
    if (components[i] is TdxRibbonTab)  then
    begin
      tagAux:=(components[i] as TdxRibbonTab).Tag;                                           //Al inicio
      (components[i] as TdxRibbonTab).visible:= (pos('|'+intToStr(tagAux)+'|', MenuTxt)>0) or(pos(intToStr(tagAux)+'|', MenuTxt)=1);
    end;                                         //Para evitar lo que van fijos
    if (components[i] is TdxBarLargeButton) and ((components[i] as TdxBarLargeButton).Tag<>-1) then
    begin
      tagAux:=(components[i] as TdxBarLargeButton).Tag;
      (components[i] as TdxBarLargeButton).enabled:= (pos('|'+intToStr(tagAux)+'|', OpcionTxt)>0) or(pos(intToStr(tagAux)+'|', OpcionTxt)=1);
    end;
  end;
end;

end.
