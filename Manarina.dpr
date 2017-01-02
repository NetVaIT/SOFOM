program Manarina;

uses
  Vcl.Forms,
  _AboutForm in 'Standard\_AboutForm.pas' {_frmAbout},
  _ConectionDmod in 'Standard\_ConectionDmod.pas' {_dmConection: TDataModule},
  _DualListDM in 'Standard\_DualListDM.pas' {_dmDualList: TDataModule},
  _DualListForm in 'Standard\_DualListForm.pas' {_frmDualList},
  _EditForm in 'Standard\_EditForm.pas' {_frmEdit},
  _GridForm in 'Standard\_GridForm.pas' {_frmGrid},
  _LoginForm in 'Standard\_LoginForm.pas' {_frmLogin},
  _MainForm in 'Standard\_MainForm.pas' {_frmMain},
  _MainRibbonForm in 'Standard\_MainRibbonForm.pas' {_frmMainRibbon},
  _ProgressForm in 'Standard\_ProgressForm.pas' {_frmProgress},
  _ProviderDMod in 'Standard\_ProviderDMod.pas' {_dmProvider: TDataModule},
  _ReportDMod in 'Standard\_ReportDMod.pas' {_dmReport: TDataModule},
  _ReportForm in 'Standard\_ReportForm.pas' {_frmReport},
  _SplashForm in 'Standard\_SplashForm.pas' {_frmSplash},
  _StandarDMod in 'Standard\_StandarDMod.pas' {_dmStandar: TDataModule},
  _StandarForm in 'Standard\_StandarForm.pas' {_StandarFrm},
  _StandarGridForm in 'Standard\_StandarGridForm.pas' {_frmStandarGrid},
  _Utils in 'Standard\_Utils.pas',
  MainForm in 'MainForm.pas' {frmMain},
  UsuariosDM in 'Catalogos\UsuariosDM.pas' {dmUsuarios: TDataModule},
  UsuariosEdit in 'Catalogos\UsuariosEdit.pas' {frmUsuariosEdit},
  UsuariosForm in 'Catalogos\UsuariosForm.pas' {frmUsuarios},
  UbicacionesDM in 'Catalogos\UbicacionesDM.pas' {dmUbicaciones: TDataModule},
  UbicacionesEdit in 'Catalogos\UbicacionesEdit.pas' {frmUbicacionesEdit},
  UbicacionesForm in 'Catalogos\UbicacionesForm.pas' {frmUbicaciones},
  PaisesDM in 'Catalogos\PaisesDM.pas' {dmUbicacion: TDataModule},
  PaisesForm in 'Catalogos\PaisesForm.pas' {frmPaises},
  PaisForm in 'Catalogos\PaisForm.pas' {frmPais},
  EstadoForm in 'Catalogos\EstadoForm.pas' {frmEstado},
  EstadosForm in 'Catalogos\EstadosForm.pas' {frmEstados},
  MunicipioForm in 'Catalogos\MunicipioForm.pas' {frmMunicipio},
  MunicipiosForm in 'Catalogos\MunicipiosForm.pas' {frmMunicipios},
  PoblacionesForm in 'Catalogos\PoblacionesForm.pas' {frmPoblaciones},
  PoblacionForm in 'Catalogos\PoblacionForm.pas' {frmPoblacion},
  BancoForm in 'Catalogos\BancoForm.pas' {frmBanco},
  BancosDM in 'Catalogos\BancosDM.pas' {dmBancos: TDataModule},
  BancosForm in 'Catalogos\BancosForm.pas' {frmBancos},
  MonedaForm in 'Catalogos\MonedaForm.pas' {frmMoneda},
  MonedasDM in 'Catalogos\MonedasDM.pas' {dmMonedas: TDataModule},
  MonedasForm in 'Catalogos\MonedasForm.pas' {frmMonedas},
  PuestosDM in 'Catalogos\PuestosDM.pas' {dmPuestos: TDataModule},
  PuestosEdit in 'Catalogos\PuestosEdit.pas' {frmPuestosEdit},
  PuestosForm in 'Catalogos\PuestosForm.pas' {frmPuestos},
  UnidadesNegocioEdit in 'Catalogos\UnidadesNegocioEdit.pas' {frmUnidadesNegocioEdit},
  UnidadesNegocioForm in 'Catalogos\UnidadesNegocioForm.pas' {frmUnidadesNegocio},
  GerenciaForm in 'Catalogos\GerenciaForm.pas' {frmGerencia},
  GerenciasForm in 'Catalogos\GerenciasForm.pas' {frmGerencias},
  DepartamentoForm in 'Catalogos\DepartamentoForm.pas' {frmDepartamento},
  DepartamentosForm in 'Catalogos\DepartamentosForm.pas' {frmDepartamentos},
  PlazasTurnosDM in 'Catalogos\PlazasTurnosDM.pas' {dmPlazasTurnos: TDataModule},
  PlazasTurnosForm in 'Catalogos\PlazasTurnosForm.pas' {frmPlazasTurnos},
  PlazaTurnoForm in 'Catalogos\PlazaTurnoForm.pas' {frmPlazaTurno},
  EstablecimientosDM in 'Catalogos\EstablecimientosDM.pas' {dmEstablecimientos: TDataModule},
  EstablecimientosEdit in 'Catalogos\EstablecimientosEdit.pas' {frmEstablecimientosEdit},
  EstablecimientosForm in 'Catalogos\EstablecimientosForm.pas' {frmEstablecimientos},
  DomiciliosDM in 'Catalogos\DomiciliosDM.pas' {dmDomicilios: TDataModule},
  DomiciliosEdit in 'Catalogos\DomiciliosEdit.pas' {frmDomiciliosEdit},
  DomiciliosForm in 'Catalogos\DomiciliosForm.pas' {frmDomicilios},
  CapacitacionDM in 'Catalogos\CapacitacionDM.pas' {dmCapacitacion: TDataModule},
  BateriaCapacitacionCursoForm in 'Catalogos\BateriaCapacitacionCursoForm.pas' {frmBateriaCapacitacionCurso},
  BateriaCapacitacionCursosForm in 'Catalogos\BateriaCapacitacionCursosForm.pas' {frmBateriaCapacitacionCursos},
  BateriaCapacitacionCursosTemasForm in 'Catalogos\BateriaCapacitacionCursosTemasForm.pas' {frmBateriaCapacitacionCursosTemas},
  BateriaCapacitacionCursoTemaForm in 'Catalogos\BateriaCapacitacionCursoTemaForm.pas' {frmBateriaCapacitacionCursosTema},
  BateriaCapacitacionesForm in 'Catalogos\BateriaCapacitacionesForm.pas' {frmBateriasCapacitacion},
  BateriaCapacitacionForm in 'Catalogos\BateriaCapacitacionForm.pas' {frmBateriaCapacitacion},
  PersonasDM in 'Catalogos\PersonasDM.pas' {dmPersona: TDataModule},
  PersonasEdit in 'Catalogos\PersonasEdit.pas' {frmPersonaEdit},
  PersonasForm in 'Catalogos\PersonasForm.pas' {frmPersonas},
  PersonasDomiciliosDM in 'Catalogos\PersonasDomiciliosDM.pas' {dmPersonasDomicilios: TDataModule},
  PersonasDomiciliosEdit in 'Catalogos\PersonasDomiciliosEdit.pas' {frmPersonasDomiciliosEdit},
  PersonasDomiciliosForm in 'Catalogos\PersonasDomiciliosForm.pas' {frmPersonasDomicilios},
  TelefonosDM in 'Catalogos\TelefonosDM.pas' {dmTelefonos: TDataModule},
  TelefonosEdit in 'Catalogos\TelefonosEdit.pas' {frmTelefonosEdit},
  TelefonosForm in 'Catalogos\TelefonosForm.pas' {frmTelefonos},
  EmailsDM in 'Catalogos\EmailsDM.pas' {dmEmails: TDataModule},
  EmailsEdit in 'Catalogos\EmailsEdit.pas' {frmEmailsEdit},
  EmailsForm in 'Catalogos\EmailsForm.pas' {frmEmails},
  PersonasContactoDM in 'Catalogos\PersonasContactoDM.pas' {dmPersonasContacto: TDataModule},
  PersonasContactoEdit in 'Catalogos\PersonasContactoEdit.pas' {frmPersonasContactoEdit},
  PersonasContactoForm in 'Catalogos\PersonasContactoForm.pas' {frmPersonasContacto},
  CuentasBancariasDM in 'Catalogos\CuentasBancariasDM.pas' {dmCuentasBancarias: TDataModule},
  CuentasBancariasDocumentosDM in 'Catalogos\CuentasBancariasDocumentosDM.pas' {dmCuentasBancariasDocumentos: TDataModule},
  CuentasBancariasDocumentosForm in 'Catalogos\CuentasBancariasDocumentosForm.pas' {frmCuentasBancariasDocumentos},
  CuentasBancariasEdit in 'Catalogos\CuentasBancariasEdit.pas' {frmCuentasBancariasEdit},
  CuentasBancariasForm in 'Catalogos\CuentasBancariasForm.pas' {frmCuentasBancarias},
  PersonasCSDDM in 'Catalogos\PersonasCSDDM.pas' {dmPersonasCSD: TDataModule},
  PersonasCSDEdit in 'Catalogos\PersonasCSDEdit.pas' {frmPersonasCSDEdit},
  PersonasCSDForm in 'Catalogos\PersonasCSDForm.pas' {frmPersonasCSD},
  RptPlazasDM in 'Reportes\RptPlazasDM.pas' {dmRptPlazas: TDataModule},
  RptPlazasForm in 'Reportes\RptPlazasForm.pas' {frmRptPlazas},
  PuestosPerfilesDM in 'Catalogos\PuestosPerfilesDM.pas' {dmPuestosPerfiles: TDataModule},
  PuestosPerfilesForm in 'Catalogos\PuestosPerfilesForm.pas' {frmPuestosPerfiles},
  PuestoPerfilForm in 'Catalogos\PuestoPerfilForm.pas' {frmPuestoPerfil},
  PlazasDM in 'Catalogos\PlazasDM.pas' {dmPlazas: TDataModule},
  PlazasEdit in 'Catalogos\PlazasEdit.pas' {frmPlazasEdit},
  PlazasForm in 'Catalogos\PlazasForm.pas' {frmPlazas},
  DocumentosDM in 'Catalogos\DocumentosDM.pas' {dmDocumentos: TDataModule},
  DocumentosEdit in 'Catalogos\DocumentosEdit.pas' {frmDocumentosEdit},
  DocumentosForm in 'Catalogos\DocumentosForm.pas' {frmDocumentos},
  UsuariosXCuentaBancariaEdit in 'Catalogos\UsuariosXCuentaBancariaEdit.pas' {frmUsuariosXCuentaBancariaEdit},
  UsuariosXCuentaBancariaForm in 'Catalogos\UsuariosXCuentaBancariaForm.pas' {frmUsuariosXCuentaBancaria},
  CuentasContablesPersonasRolesDM in 'Catalogos\CuentasContablesPersonasRolesDM.pas' {dmCuentasContablesPersonasRoles: TDataModule},
  CuentasContablesPersonasRolesEdit in 'Catalogos\CuentasContablesPersonasRolesEdit.pas' {frmCuentasContablesPersonasRolesEdit},
  CuentasContablesPersonasRolesForm in 'Catalogos\CuentasContablesPersonasRolesForm.pas' {frmCuentasContablesPersonasRoles},
  CuentasXCobrarConceptosDM in 'Catalogos\CuentasXCobrarConceptosDM.pas' {dmCuentasXCobrarConceptos: TDataModule},
  CuentasXCobrarConceptosEdit in 'Catalogos\CuentasXCobrarConceptosEdit.pas' {frmCuentasXCobrarConceptosEdit},
  CuentasXCobrarConceptosForm in 'Catalogos\CuentasXCobrarConceptosForm.pas' {frmCuentasXCobrarConceptos},
  PuestosCapacitacionDM in 'Catalogos\PuestosCapacitacionDM.pas' {dmPuestosCapacitacion: TDataModule},
  PuestosCapacitacionesDM in 'Catalogos\PuestosCapacitacionesDM.pas' {dmPuestosCapacitaciones: TDataModule},
  PuestosCapacitacionesForm in 'Catalogos\PuestosCapacitacionesForm.pas' {frmPuestosCapacitaciones},
  PuestosCapacitacionForm in 'Catalogos\PuestosCapacitacionForm.pas' {frmPuestosCapacitacion},
  PuestosCapacitacionEditForm in 'Catalogos\PuestosCapacitacionEditForm.pas' {frmPuestosCapacitacionEdit},
  PersonasDocumentosDM in 'Catalogos\PersonasDocumentosDM.pas' {dmPersonasDocumentos: TDataModule},
  PersonasDocumentosEdit in 'Catalogos\PersonasDocumentosEdit.pas' {frmPersonasDocumentosEdit},
  PersonasDocumentosForm in 'Catalogos\PersonasDocumentosForm.pas' {frmPersonasDocumentos},
  MarcasDM in 'Catalogos\MarcasDM.pas' {dmMarcas: TDataModule},
  MarcasForm in 'Catalogos\MarcasForm.pas' {frmMarcas},
  MarcasEdit in 'Catalogos\MarcasEdit.pas' {frmMarcasEdit},
  FamiliasDM in 'Catalogos\FamiliasDM.pas' {dmFamilias: TDataModule},
  FamiliasForm in 'Catalogos\FamiliasForm.pas' {frmFamilias},
  FamiliasEdit in 'Catalogos\FamiliasEdit.pas' {frmFamiliasEdit},
  ProductosDM in 'Catalogos\ProductosDM.pas' {dmProductos: TDataModule},
  ProductosForm in 'Catalogos\ProductosForm.pas' {frmProductos},
  ProductosEdit in 'Catalogos\ProductosEdit.pas' {frmProductosEdit},
  ContratosDM in 'Procesos\ContratosDM.pas' {dmContratos: TDataModule},
  ContratosForm in 'Procesos\ContratosForm.pas' {frmContratos},
  ContratosEdit in 'Procesos\ContratosEdit.pas' {frmContratosEdit},
  AnexosForm in 'Procesos\AnexosForm.pas' {frmAnexos},
  AnexosEdit in 'Procesos\AnexosEdit.pas' {frmAnexosEdit},
  AnexosProductosForm in 'Procesos\AnexosProductosForm.pas' {frmAnexosProductos},
  AmortizacionesDM in 'Procesos\AmortizacionesDM.pas' {dmAmortizaciones: TDataModule},
  SegmentosForm in 'Procesos\SegmentosForm.pas' {frmSegmentos},
  AmortizacionesForm in 'Procesos\AmortizacionesForm.pas' {frmAmortizaciones},
  AnexosSegmentosDM in 'Procesos\AnexosSegmentosDM.pas' {dmAnexosSegmentos: TDataModule},
  AnexosSegmentosForm in 'Procesos\AnexosSegmentosForm.pas' {frmAnexosSegmentos},
  AnexosSegmentosEdit in 'Procesos\AnexosSegmentosEdit.pas' {frmAnexosSegmentosEdit},
  AnexosAmortizacionesForm in 'Procesos\AnexosAmortizacionesForm.pas' {frmAnexosAmortizaciones},
  AnexosCreditosForm in 'Procesos\AnexosCreditosForm.pas' {frmAnexosCreditos},
  FacturasDM in 'Procesos\FacturasDM.pas' {dmFacturas: TDataModule},
  FacturasForm in 'Procesos\FacturasForm.pas' {frmFacturasGrid},
  FacturasEdit in 'Procesos\FacturasEdit.pas' {frmEdFactura},
  ConceptosFacturaForm in 'Procesos\ConceptosFacturaForm.pas' {frmConceptos},
  DocComprobanteFiscal in 'Facturar\DocComprobanteFiscal.pas',
  FacturaTipos in 'Facturar\FacturaTipos.pas',
  VirtualXML in 'Facturar\VirtualXML.pas',
  XMLtoPDFDmod in 'Facturar\XMLtoPDFDmod.pas' {dmodXMLtoPDF: TDataModule},
  FacturaReglamentacion in 'Facturar\FacturaReglamentacion.pas',
  CuentasXCobrarForm in 'Procesos\CuentasXCobrarForm.pas' {FrmConCuentasXCobrar},
  CuentasXCobrarDM in 'Procesos\CuentasXCobrarDM.pas' {dmCuentasXCobrar: TDataModule},
  CuentasXCobrarDetalleForm in 'Procesos\CuentasXCobrarDetalleForm.pas' {FrmCXCDetalle},
  CuentasXCobrarEdit in 'Procesos\CuentasXCobrarEdit.pas' {FrmEdCuentasXCobrar},
  PagosDM in 'Procesos\PagosDM.pas' {dmPagos: TDataModule},
  PagosForm in 'Procesos\PagosForm.pas' {FrmConPagos},
  PagosEdit in 'Procesos\PagosEdit.pas' {FrmEdPagos},
  AplicacionPagos in 'Procesos\AplicacionPagos.pas' {FrmAplicacionPago},
  AnexosCreditosEdit in 'Procesos\AnexosCreditosEdit.pas' {frmAnexosCreditosEdit},
  CotizacionesDM in 'Procesos\CotizacionesDM.pas' {dmCotizaciones: TDataModule},
  CotizacionesEdit in 'Procesos\CotizacionesEdit.pas' {frmCotizacionesEdit},
  CotizacionesForm in 'Procesos\CotizacionesForm.pas' {frmCotizaciones},
  ProcesosType in 'Procesos\ProcesosType.pas',
  rptAntiguedadSaldosDM in 'Reportes\rptAntiguedadSaldosDM.pas' {dmRptAntiguedadSaldos: TDataModule},
  rptAntiguedadSaldosForm in 'Reportes\rptAntiguedadSaldosForm.pas' {frmRptAntiguedadSaldos},
  CotizacionesCreditosForm in 'Procesos\CotizacionesCreditosForm.pas' {frmCotizacionesCreditos},
  CotizacionesCreditosEdit in 'Procesos\CotizacionesCreditosEdit.pas' {frmCotizacionesCreditosEdit},
  CotizacionesSeleccionarForm in 'Procesos\CotizacionesSeleccionarForm.pas' {frmCotizacionesSeleccionar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(T_dmConection, _dmConection);
  Application.CreateForm(T_frmMain, _frmMain);
  Application.CreateForm(T_frmMainRibbon, _frmMainRibbon);
  Application.CreateForm(T_frmProgress, _frmProgress);
  Application.Run;
end.
