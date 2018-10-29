unit RptCFDIContabilidadDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmRptCFDIContabilidad = class(T_dmStandar)
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdCFDITipoDocumento: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterFolio: TStringField;
    adodsMasterUUID_TB: TStringField;
    adodsMasterTipo: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterCliente: TStringField;
    adodsMasterTipoContrato: TStringField;
    adodsMasterSIN_ASIGNAR: TFMTBCDField;
    adodsMasterCS_INT: TFMTBCDField;
    adodsMasterCS_ENGANCHE: TFMTBCDField;
    adodsMasterCS_COM_APER: TFMTBCDField;
    adodsMasterCS_GASTOSADM: TFMTBCDField;
    adodsMasterCS_ABONOCAP: TFMTBCDField;
    adodsMasterCS_INTM: TFMTBCDField;
    adodsMasterCS_VR: TFMTBCDField;
    adodsMasterCS_OC: TFMTBCDField;
    adodsMasterAF_CAP: TFMTBCDField;
    adodsMasterAF_INT: TFMTBCDField;
    adodsMasterAF_ENGANCHE: TFMTBCDField;
    adodsMasterAF_COM_APER: TFMTBCDField;
    adodsMasterAF_GASTOSADM: TFMTBCDField;
    adodsMasterAF_ABONOCAP: TFMTBCDField;
    adodsMasterAF_INTM: TFMTBCDField;
    adodsMasterAF_VR: TFMTBCDField;
    adodsMasterAF_OC: TFMTBCDField;
    adodsMasterAP_RENTA: TFMTBCDField;
    adodsMasterAP_ENGANCHE: TFMTBCDField;
    adodsMasterAP_COM_APER: TFMTBCDField;
    adodsMasterAP_GASTOSADM: TFMTBCDField;
    adodsMasterAP_ABONOCAP: TFMTBCDField;
    adodsMasterAP_INTM: TFMTBCDField;
    adodsMasterAP_VR: TFMTBCDField;
    adodsMasterAP_OC: TFMTBCDField;
    adodsMasterSubTotal: TFloatField;
    adodsMasterDescto: TFloatField;
    adodsMasterTotalImpuestoTrasladado: TFloatField;
    adodsMasterTotal: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses RptCFDIContabilidadForm;

{$R *.dfm}

procedure TdmRptCFDIContabilidad.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmRptCFDIContabilidad.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
  // Busqueda
  gGridForm.actSearch := actSearch;
  SQLSelect:=
  'SELECT CFDI.IdCFDI, CFDI.IdCFDITipoDocumento, CFDI.Fecha, CONCAT(CFDI.Serie, CFDI.Folio) AS Folio, CFDI.UUID_TB, CFDITipoDocumento.SATClave AS Tipo, CFDIEstatus.Descripcion AS Estatus, Personas.RazonSocial AS Cliente, ' +
  'ContratosTipos.Identificador AS TipoContrato, (C.SIN_ASIGNAR+C.SIN_CONTRATO) AS SIN_ASIGNAR, C.CS_INT, C.CS_ENGANCHE, C.CS_COM_APER, C.CS_GASTOSADM, C.CS_ABONOCAP, C.CS_INTM, C.CS_VR, C.CS_OC, C.AF_CAP, C.AF_INT, ' +
  'C.AF_ENGANCHE, C.AF_COM_APER, C.AF_GASTOSADM, C.AF_ABONOCAP, C.AF_INTM, C.AF_VR, C.AF_OC, C.AP_RENTA, C.AP_ENGANCHE, C.AP_COM_APER, C.AP_GASTOSADM, C.AP_ABONOCAP, C.AP_INTM, C.AP_VR, ' +
  'C.AP_OC, CFDI.SubTotal, CFDI.Descto, CFDI.TotalImpuestoTrasladado, CFDI.Total ' +
  'FROM CFDI INNER JOIN ' +
  'CFDITipoDocumento ON CFDI.IdCFDITipoDocumento = CFDITipoDocumento.IdCFDITipoDocumento INNER JOIN ' +
  'CFDIEstatus ON CFDI.IdCFDIEstatus = CFDIEstatus.IdCFDIEstatus INNER JOIN ' +
  'Personas ON CFDI.IdPersonaReceptor = Personas.IdPersona INNER JOIN ' +
  'v_CFDIConceptosTipo AS C ON CFDI.IdCFDI = C.IdCFDI LEFT OUTER JOIN ' +
  'CuentasXCobrar ON CFDI.IdCuentaXCobrar = CuentasXCobrar.IdCuentaXCobrar LEFT OUTER JOIN ' +
  'Anexos ON CuentasXCobrar.IdAnexo = Anexos.IdAnexo LEFT OUTER JOIN ' +
  'Contratos ON Contratos.IdContrato = Anexos.IdContrato LEFT OUTER JOIN ' +
  'ContratosTipos ON Contratos.IdContratoTipo = ContratosTipos.IdContratoTipo ';
  SQLOrderBy:= 'ORDER BY CFDI.Fecha ';
  actSearch.Execute;
end;

procedure TdmRptCFDIContabilidad.SetFilter;
begin
  inherited;
  SQLWhere := 'WHERE CFDI.IdCFDITipoDocumento <> 4 ';
  if TfrmRptCFDIContabilidad(gGridForm).Cliente <> EmptyStr then
    SQLWhere := SQLWhere + 'AND Personas.RazonSocial LIKE ''%' + TfrmRptCFDIContabilidad(gGridForm).Cliente + '%'' ';
  if TfrmRptCFDIContabilidad(gGridForm).UsarFecha then
    SQLWhere := SQLWhere + Format('AND CFDI.Fecha BETWEEN CONVERT(datetime, ''%s'' , 103) AND CONVERT(datetime, ''%s'' , 103) ', [DateToStr(TfrmRptCFDIContabilidad(gGridForm).Desde), DateToStr(TfrmRptCFDIContabilidad(gGridForm).Hasta+1)]);
end;

end.
