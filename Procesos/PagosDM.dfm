inherited dmPagos: TdmPagos
  OldCreateOrder = True
  Height = 593
  Width = 946
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforePost = adodsMasterBeforePost
    AfterPost = adodsMasterAfterPost
    AfterCancel = adodsMasterAfterCancel
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select  IdPago, IdBanco, IdPersonaCliente, IdCuentaBancariaEstad' +
      'oCuenta, '#13#10'FechaPago, FolioPago, SeriePago, Referencia, Importe,' +
      ' Saldo, '#13#10'Observaciones, IdMetodoPago, CuentaPago, OrigenPago fr' +
      'om Pagos'
    Left = 48
    object adodsMasterIdPago: TAutoIncField
      FieldName = 'IdPago'
      ReadOnly = True
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
    end
    object adodsMasterFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adodsMasterFolioPago: TIntegerField
      FieldName = 'FolioPago'
    end
    object adodsMasterSeriePago: TStringField
      FieldName = 'SeriePago'
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      DisplayFormat = '$###,##0.00##'
      EditFormat = '###.######'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      DisplayFormat = '$###,##0.00##'
      Precision = 18
      Size = 6
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 255
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = ADoDtStBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Lookup = True
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADOSPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaCliente'
      Size = 150
      Lookup = True
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMasterCuentaPago: TStringField
      FieldName = 'CuentaPago'
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtstMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 30
      Lookup = True
    end
    object adodsMasterOrigenPago: TIntegerField
      FieldName = 'OrigenPago'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
  end
  inherited ActionList: TActionList
    Top = 72
    object ActGeneraPrefMoratorios: TAction
      Caption = 'ActGeneraPrefMoratorios'
      OnExecute = ActGeneraPrefMoratoriosExecute
    end
  end
  object ADOSPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo,'#13#10 +
      ' IdSexo, IdEstadoCivil, IdPais, IdPoblacion, RFC, CURP,'#13#10' RazonS' +
      'ocial, Nombre, ApellidoPaterno, ApellidoMaterno,'#13#10'IdMetodoPago,I' +
      'dPersonaEstatus,NumCtaPagoCliente '#13#10'from Personas'
    Parameters = <>
    Left = 152
    Top = 72
  end
  object ADODtStConfiguraciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select UltimoFolioPago, UltimaSeriePago from Configuraciones'
    Parameters = <>
    Left = 156
    Top = 139
    object ADODtStConfiguracionesUltimoFolioPago: TIntegerField
      FieldName = 'UltimoFolioPago'
    end
    object ADODtStConfiguracionesUltimaSeriePago: TStringField
      FieldName = 'UltimaSeriePago'
    end
  end
  object ADoDtStBancos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBanco, IdPaisBanco, Identificador, Nombre, '#13#10'Descripcio' +
      'n, Siglas from Bancos'
    Parameters = <>
    Left = 316
    Top = 139
    object ADoDtStBancosIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object ADoDtStBancosIdPaisBanco: TIntegerField
      FieldName = 'IdPaisBanco'
    end
    object ADoDtStBancosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADoDtStBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object ADoDtStBancosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object ADoDtStBancosSiglas: TStringField
      FieldName = 'Siglas'
      Size = 10
    end
  end
  object ADODtStAplicacionesPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStAplicacionesPagosAfterPost
    OnNewRecord = ADODtStAplicacionesPagosNewRecord
    CommandText = 
      'select IdPagoAplicacion, IdPago, IdCFDI, IdPersonaCliente,'#13#10' IdC' +
      'uentaXCobrar, FechaAplicacion, Importe, ImporteFactoraje'#13#10' from ' +
      'PagosAplicaciones'#13#10'where IdPersonaCliente=:IdPersonaCliente'
    DataSource = DSMaster
    IndexFieldNames = 'IdPersonaCliente'
    MasterFields = 'IdPersonaCliente'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 156
    Top = 243
    object ADODtStAplicacionesPagosIdPagoAplicacion: TIntegerField
      FieldName = 'IdPagoAplicacion'
    end
    object ADODtStAplicacionesPagosIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object ADODtStAplicacionesPagosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADODtStAplicacionesPagosIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStAplicacionesPagosFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object ADODtStAplicacionesPagosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStAplicacionesPagosImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCXCPendientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select cxc.*, CI.SaldoDocumento, Ci.SaldoFactoraje as SaldoFacto' +
      'rajeCFDI'#13#10' from CuentasXCobrar CXC  '#13#10'left Join CFDI CI on CI.Id' +
      'CFDI= CXC.IdCFDINormal where '#13#10' Saldo >0 and IDPersona=:IdPerson' +
      'aCliente'#13#10'and IdCuentaXCobrarEstatus=0'#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersonaCliente'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 380
    Top = 243
    object ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No.CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object ADODtStCXCPendientesIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object ADODtStCXCPendientesIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStCXCPendientesIdAnexosAmortizaciones: TIntegerField
      FieldName = 'IdAnexosAmortizaciones'
    end
    object ADODtStCXCPendientesIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStCXCPendientesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCXCPendientesImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesInteres: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object ADODtStCXCPendientesSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesIdCFDINormal: TLargeintField
      FieldName = 'IdCFDINormal'
    end
    object ADODtStCXCPendientesSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldoFactorajeCFDI: TFMTBCDField
      FieldName = 'SaldoFactorajeCFDI'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCxCDetallePend: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsMasterAfterCancel
    CommandText = 
      'Select * From vw_CXCParaAplicar'#13#10'where Saldo >0  '#13#10'and (SaldoDoc' +
      'umento is null or SaldoDocumento>0.00001)'#13#10' and (SaldoDoc1 is nu' +
      'll or SaldoDoc1>0.00001)'#13#10'and IdCuentaXCobrar=:IdCuentaXCobrar'#13#10 +
      'order by fase desc, ordenAplica  '
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 628
    Top = 235
    object ADODtStCxCDetallePendIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStCxCDetallePendIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStCxCDetallePendDescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStCxCDetallePendImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCxCDetallePendIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendimpconc: TFMTBCDField
      FieldName = 'impconc'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendFase: TIntegerField
      FieldName = 'Fase'
    end
    object ADODtStCxCDetallePendTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStCxCDetallePendOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStCxCDetallePendIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStCxCDetallePendAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStCxCDetallePendAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStCxCDetallePendEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStCxCDetallePendBaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStCxCDetallePendEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStCxCDetallePendBaseMoratorios: TBooleanField
      FieldName = 'BaseMoratorios'
    end
    object ADODtStCxCDetallePendEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
    object ADODtStCxCDetallePendacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStCxCDetallePendIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStCxCDetallePendIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStCxCDetallePendsaldoDoc1: TFMTBCDField
      FieldName = 'saldoDoc1'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendivaCFDI2: TFloatField
      FieldName = 'ivaCFDI2'
    end
    object ADODtStCxCDetallePendSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendEsCapital: TBooleanField
      FieldName = 'EsCapital'
    end
    object ADODtStCxCDetallePendEsInteres: TBooleanField
      FieldName = 'EsInteres'
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 148
    Top = 16
  end
  object DSCXCPendientes: TDataSource
    DataSet = ADODtStCXCPendientes
    Left = 492
    Top = 240
  end
  object ADODtstAplicacionesInternas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtstAplicacionesInternasAfterPost
    CommandText = 
      'select IDPagoAplicacionInterna, IDPagoAplicacion,'#13#10' IdCuentaXCob' +
      'rarDetalle, IDCFDI, IDCFDIConcepto,'#13#10' Importe, ImporteFactoraje ' +
      'from PagosAplicacionesInternas'#13#10' where IDPagoAplicacion=:IDPagoA' +
      'plicacion'
    DataSource = DSAplicaciones
    IndexFieldNames = 'IDPagoAplicacion'
    MasterFields = 'IDPagoAplicacion'
    Parameters = <
      item
        Name = 'IDPagoAplicacion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 275
    Top = 323
    object ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField
      FieldName = 'IDPagoAplicacionInterna'
    end
    object ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField
      FieldName = 'IDPagoAplicacion'
    end
    object ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtstAplicacionesInternasIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtstAplicacionesInternasImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtstAplicacionesInternasImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object DSAplicaciones: TDataSource
    DataSet = ADODtStAplicacionesPagos
    Left = 276
    Top = 248
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 36
    Top = 323
  end
  object ADODtStSaldoPrioridad1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select Sum(CxCD.saldo) as InteresMasIVA from CuentasXCobrarDetal' +
      'le CXCD '#13#10'inner join CuentasXCobrarTiposConceptos CXCTC on CXCD.' +
      'IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13#10#13#10'where CXCD.IdCu' +
      'entaXCobrar=:IdCuentaXCobrar and CXCTC.ordenAplica =:orden'#13#10
    DataSource = DSCXCPendientes
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'orden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 492
    Top = 315
    object ADODtStSaldoPrioridad1InteresMasIVA: TFMTBCDField
      FieldName = 'InteresMasIVA'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object ADODtStConceptoIVA: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      ' Select * from vw_CXCParaAplicar '#13#10'where IdCuentaXCobrar=:IdCuen' +
      'taXCobrar and ordenAplica =:orden'#13#10'and saldo>0  '#13#10'and (SaldoDocu' +
      'mento is null or SaldoDocumento>0.00001)'#13#10'                     a' +
      'nd (SaldoDoc1 is null or SaldoDoc1>0.00001)'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'orden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 492
    Top = 387
    object ADODtStConceptoIVAacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStConceptoIVAIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStConceptoIVAIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStConceptoIVAIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStConceptoIVAIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
    end
    object ADODtStConceptoIVAimpconc: TFMTBCDField
      FieldName = 'impconc'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVAIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStConceptoIVAIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStConceptoIVADescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStConceptoIVAImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVASaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVAIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStConceptoIVAAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStConceptoIVAAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStConceptoIVABaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStConceptoIVAEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStConceptoIVADescripTC: TStringField
      FieldName = 'DescripTC'
      Size = 50
    end
    object ADODtStConceptoIVAIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStConceptoIVATemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStConceptoIVAEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStConceptoIVAFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStConceptoIVAIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 15
    end
    object ADODtStConceptoIVAOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStConceptoIVAFase: TIntegerField
      FieldName = 'Fase'
    end
  end
  object ADODtstMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta '#13#10'f' +
      'rom MetodosPago'#13#10
    Parameters = <>
    Left = 44
    Top = 395
    object ADODtstMetodoPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtstMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtstMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtstMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
  object ADODtStconsulta: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersonaCliente'
    Parameters = <>
    Left = 276
    Top = 435
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'No.CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IdPersona'
    end
    object IntegerField3: TIntegerField
      FieldName = 'IdAnexosAmortizaciones'
    end
    object IntegerField4: TIntegerField
      FieldName = 'IdAnexo'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Fecha'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'Impuesto'
      Precision = 18
      Size = 6
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object IntegerField5: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCxCDetallePend_anterior: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select CXCD2.IdCuentaXCobrarDetalle acumulaACXC ,cxcd3.IdCuentaX' +
      'CobrarDetalle as IVAde, Con.IdCFDI,Con2.IdCFDI As IDCFDIIVA, '#13#10'C' +
      'on.IdCFDIConcepto,con.importe as impconc, CXCD.*, CXCTC.* from C' +
      'uentasXCobrarDetalle CXCD '#13#10'inner join CuentasXCobrarTiposConcep' +
      'tos CXCTC on CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13 +
      #10'Left join CuentasXCobrarDEtalle CXCD2 on CXCD2.IdCuentaXCobrarT' +
      'ipo=CXCTC.AcumulaAQuien'#13#10'Left join CuentasXCobrarDEtalle CXCD3 o' +
      'n CXCD3.IdCuentaXCobrarTipo=CXCTC.BaseIVA'#13#10'left join CFDIConcept' +
      'os Con on CXCD.IdCuentaXCobrarDetalle= Con.IdCuentaXCobrarDetall' +
      'e'#13#10'Left join CuentasXCobrarDEtalle CXCD4 on CXCD3.IdCuentaXCobra' +
      'rDetalle=CXCD4.IdCuentaXCobrarDetalle'#13#10'left join CFDIConceptos C' +
      'on2 on CXCD4.IdCuentaXCobrarDetalle= Con2.IdCuentaXCobrarDetalle' +
      #13#10'where CXCD.Saldo >0  and CXCD.IdCuentaXCobrar=:IdCuentaXCobrar' +
      #13#10'order by CXCTC.ordenAplica  '
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 796
    Top = 235
    object IntegerField6: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object IntegerField7: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object StringField1: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'acumulaACXC'
      ReadOnly = True
    end
    object AutoIncField3: TAutoIncField
      FieldName = 'IVAde'
      ReadOnly = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'IdCFDI'
    end
    object LargeintField2: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'impconc'
      Precision = 18
      Size = 6
    end
    object IntegerField8: TIntegerField
      FieldName = 'Fase'
    end
    object StringField3: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object IntegerField9: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object IntegerField10: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object LargeintField3: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object AutoIncField4: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object adopSetCXCMoratorio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMoratorio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 48
    Top = 528
  end
  object ADODtStPrefacturasCFDI: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterOpen = ADODtStPrefacturasCFDIAfterOpen
    OnNewRecord = ADODtStPrefacturasCFDINewRecord
    CommandText = 
      'select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago,'#13#10' IdMetodo' +
      'Pago, C.IdMoneda, IdPersonaEmisor, IdPersonaReceptor, '#13#10'IdDocume' +
      'ntoCBB, IdDocumentoXML, IdDocumentoPDF, '#13#10'IdCFDIEstatus, IdCFDIF' +
      'acturaGral, IdClienteDomicilio,'#13#10' CuentaCte, TipoCambio, TipoCom' +
      'p, Serie, Folio, Fecha,'#13#10' LugarExpedicion, Sello, CondPago, NoCe' +
      'rtificado, Certificado,'#13#10' SubTotal, Descto, MotivoDescto, Total,' +
      ' NumCtaPago, '#13#10'CadenaOriginal, TotalImpuestoRetenido, TotalImpue' +
      'stoTrasladado, '#13#10'SaldoDocumento, FechaCancelacion, Observaciones' +
      ', '#13#10'PorcentajeIVA, EmailCliente, UUID_TB, SelloCFD_TB, '#13#10'SelloSA' +
      'T_TB, CertificadoSAT_TB, FechaTimbrado_TB,'#13#10' IdCuentaXCobrar, Sa' +
      'ldoFactoraje'#13#10' from CFDI C'#13#10'where fecha>DATEADD(MM, DATEDIFF(MM,' +
      '0,GETDATE()), 0)'#13#10'order by IDCFDIESTATUS, Fecha '
    Parameters = <>
    Left = 480
    Top = 24
    object ADODtStPrefacturasCFDIIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStPrefacturasCFDIIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStPrefacturasCFDIIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
    end
    object ADODtStPrefacturasCFDIIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtStPrefacturasCFDIIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object ADODtStPrefacturasCFDIIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object ADODtStPrefacturasCFDIIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStPrefacturasCFDIIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object ADODtStPrefacturasCFDIIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object ADODtStPrefacturasCFDIIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object ADODtStPrefacturasCFDIIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStPrefacturasCFDIIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
    end
    object ADODtStPrefacturasCFDIIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStPrefacturasCFDICuentaCte: TStringField
      FieldName = 'CuentaCte'
      Size = 30
    end
    object ADODtStPrefacturasCFDITipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object ADODtStPrefacturasCFDITipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object ADODtStPrefacturasCFDISerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStPrefacturasCFDIFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStPrefacturasCFDIFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStPrefacturasCFDILugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object ADODtStPrefacturasCFDISello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object ADODtStPrefacturasCFDICondPago: TStringField
      FieldName = 'CondPago'
      Size = 250
    end
    object ADODtStPrefacturasCFDINoCertificado: TStringField
      FieldName = 'NoCertificado'
    end
    object ADODtStPrefacturasCFDICertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object ADODtStPrefacturasCFDISubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object ADODtStPrefacturasCFDIDescto: TFloatField
      FieldName = 'Descto'
    end
    object ADODtStPrefacturasCFDIMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Size = 50
    end
    object ADODtStPrefacturasCFDITotal: TFloatField
      FieldName = 'Total'
    end
    object ADODtStPrefacturasCFDINumCtaPago: TStringField
      FieldName = 'NumCtaPago'
    end
    object ADODtStPrefacturasCFDICadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Size = 2000
    end
    object ADODtStPrefacturasCFDITotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
    end
    object ADODtStPrefacturasCFDITotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object ADODtStPrefacturasCFDISaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
    end
    object ADODtStPrefacturasCFDIFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object ADODtStPrefacturasCFDIObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStPrefacturasCFDIPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
    end
    object ADODtStPrefacturasCFDIEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object ADODtStPrefacturasCFDIUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object ADODtStPrefacturasCFDISelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Size = 400
    end
    object ADODtStPrefacturasCFDISelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Size = 250
    end
    object ADODtStPrefacturasCFDICertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
    end
    object ADODtStPrefacturasCFDIFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
    end
    object ADODtStPrefacturasCFDIIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStPrefacturasCFDISaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCFDIConceptosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStCFDIConceptosPrefAfterPost
    OnNewRecord = ADODtStCFDIConceptosPrefNewRecord
    CommandText = 
      'select IdCFDIConcepto, IdCFDI, IdUnidadMedida, Cantidad, Unidad,' +
      #13#10' Descripcion, NoIdentifica, ValorUnitario, Importe, IdCuentaXC' +
      'obrarDetalle'#13#10'from  CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
    DataSource = DSPrefacturasCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '8534'
      end>
    Left = 480
    Top = 88
    object ADODtStCFDIConceptosPrefIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIConceptosPrefIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStCFDIConceptosPrefCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStCFDIConceptosPrefUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStCFDIConceptosPrefDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStCFDIConceptosPrefNoIdentifica: TStringField
      DisplayLabel = 'No Identifica'
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStCFDIConceptosPrefValorUnitario: TFMTBCDField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'ValorUnitario'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosPrefImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosPrefIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.' +
      'NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,' +
      ' P.Descripcion Poblacion, E.Descripcion Estado,'#13#10'Pa.descripcion ' +
      'Pais'#13#10'from PersonasDomicilios PD'#13#10'inner join Domicilios D on PD.' +
      'IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P on P.idPoblac' +
      'ion=d.IdPoblacion'#13#10'left join Municipios M on M.idmunicipio=D.IdM' +
      'unicipio'#13#10'Left Join Estados E on E.idestado=D.idestado'#13#10'Left Joi' +
      'n Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10'Where idpersona=:IdPersona ' +
      #13#10#13#10
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 488
    Top = 168
    object ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccionesClienteIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccionesClienteIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccionesClientePredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccionesClienteCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStDireccionesClienteNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccionesClienteNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccionesClienteColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccionesClienteCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccionesClienteMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccionesClientePoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccionesClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccionesClientePais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccionesClienteDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
  object DSPrefacturasCFDI: TDataSource
    DataSet = ADODtStPrefacturasCFDI
    Left = 616
    Top = 24
  end
  object ADODtStCFDIImpuestosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, TipoImp, Impuesto, Tasa, Importe  '#13#10'from CFDIImpu' +
      'estos where idCFDI=:IDCFDI'
    DataSource = DSPrefacturasCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 616
    Top = 96
    object ADODtStCFDIImpuestosPrefIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIImpuestosPrefTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object ADODtStCFDIImpuestosPrefImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 10
    end
    object ADODtStCFDIImpuestosPrefTasa: TFloatField
      FieldName = 'Tasa'
    end
    object ADODtStCFDIImpuestosPrefImporte: TFloatField
      FieldName = 'Importe'
    end
  end
  object ADODtStPersonaEmisor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.idpersona, Pe.RazonSocial,Pe.RFC,'#13#10'Pe.IdMetodoPago,Pe.' +
      'NumCtaPagoCliente ,'#13#10'Pe.IDRegimenFiscal,RF.Descripcion RegimenFi' +
      'scalEmisor,'#13#10'PD.IdPersonaDomicilio,  Pd.IdDomicilio, '#13#10'Pd.IdDomi' +
      'cilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.NoInter' +
      'ior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,'#13#10' P.De' +
      'scripcion Poblacion,'#13#10' E.Descripcion Estado,'#13#10'Pa.descripcion Pai' +
      's'#13#10#13#10'from  Personas Pe'#13#10'Left Join PersonasDomicilios PD on Pe.Id' +
      'Persona=PD.IdPersona '#13#10'and PD.idDomicilioTipo=4'#13#10'Left join Domic' +
      'ilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P' +
      ' on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on M.idm' +
      'unicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=D.ides' +
      'tado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'Left join Regim' +
      'enesFiscales RF on RF.idRegimenFiscal=Pe.IdRegimenFiscal'#13#10'where ' +
      'Pe.IdRolTipo=9 '
    IndexFieldNames = 'idpersona'
    MasterFields = 'IdPersonaEmisor'
    Parameters = <>
    Left = 752
    Top = 96
    object ADODtStPersonaEmisoridpersona: TAutoIncField
      FieldName = 'idpersona'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaEmisorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStPersonaEmisorNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStPersonaEmisorPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStPersonaEmisorCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStPersonaEmisorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStPersonaEmisorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStPersonaEmisorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStPersonaEmisorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStPersonaEmisorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStPersonaEmisorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStPersonaEmisorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStPersonaEmisorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField
      FieldName = 'RegimenFiscalEmisor'
      Size = 150
    end
    object ADODtStPersonaEmisorIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
  end
  object CXCMoratoriosParaFacturar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarDetalle, IdCuentaXCobrar, '#13#10'CXCD.IdCuentaX' +
      'CobrarTipo, CXCD.Identificador, CXCD.Descripcion, '#13#10'CXCD.Importe' +
      ', CXCD.Saldo,  CXCTC.Facturar,  CXCTC.IdTipoContrato,'#13#10'CXCTC.EsI' +
      'VA,CXCTC.Temporalidad, CXCTC.EsMoratorios,'#13#10'CXCD.PagosAplicados,' +
      ' (CXCD.Importe -CXCD.PagosAplicados) as SaldoPendiente'#13#10'from Cue' +
      'ntasXCobrarDetalle  CXCD '#13#10'inner join CuentasXCobrarTiposConcept' +
      'os CXCTC on'#13#10' CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo' +
      #13#10' where  CXCTC.Facturar=1 and CXCTC.EsMoratorios=1 and'#13#10'CXCTC.E' +
      'sIVA =0  and  CXCD.Saldo>0'#13#10'and CXCD.IdCuentaXCobrar =:IDCuentaX' +
      'Cobrar'
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 632
    Top = 312
    object CXCMoratoriosParaFacturarIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object CXCMoratoriosParaFacturarIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object CXCMoratoriosParaFacturarIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object CXCMoratoriosParaFacturarDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object CXCMoratoriosParaFacturarImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object CXCMoratoriosParaFacturarSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object CXCMoratoriosParaFacturarFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object CXCMoratoriosParaFacturarIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object CXCMoratoriosParaFacturarEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object CXCMoratoriosParaFacturarTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object CXCMoratoriosParaFacturarIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object CXCMoratoriosParaFacturarEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
    object CXCMoratoriosParaFacturarPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      Precision = 18
      Size = 6
    end
    object CXCMoratoriosParaFacturarSaldoPendiente: TFMTBCDField
      FieldName = 'SaldoPendiente'
      ReadOnly = True
      Precision = 19
      Size = 6
    end
  end
  object ADOSumaIVAMora: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect SUM(CXCD.Saldo) as IVAReg  from CuentasXCobrarDetalle  CX' +
      'CD   -- para confirmar valor de IVA'#13#10'inner join CuentasXCobrarTi' +
      'posConceptos CXCTC on CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCo' +
      'brarTipo'#13#10' where CXCTC.Facturar=1 and CXCTC.EsIVA =1 and CXCTC.E' +
      'sMoratorios=1'#13#10'and CXCD.IdCuentaXCobrar =:IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 776
    Top = 312
  end
  object ADODtStPagosAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStPagosAuxiliarNewRecord
    CommandText = 
      'select IDPagoAuxiliarMora, IdCuentaXCobrar, IdPagoAplicacionInte' +
      'rna,'#13#10'IdCuentaXCobrarDetalle, IDCFDI, IDCFDIConcepto, IDUsuario,' +
      ' '#13#10'Fecha, Importe, EsCondonacion, Observaciones  '#13#10'from PagosAux' +
      'iliaresMora where idPagoAplicacionInterna=:IdPagoAplicaiconInter' +
      'na'
    DataSource = DSAplicacionInterna
    IndexFieldNames = 'IdPagoAplicacionInterna'
    MasterFields = 'IDPagoAplicacionInterna'
    Parameters = <
      item
        Name = 'IdPagoAplicaiconInterna'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 779
    Top = 387
    object ADODtStPagosAuxiliarIDPagoAuxiliarMora: TIntegerField
      FieldName = 'IDPagoAuxiliarMora'
    end
    object ADODtStPagosAuxiliarIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStPagosAuxiliarIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStPagosAuxiliarIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtStPagosAuxiliarIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtStPagosAuxiliarIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStPagosAuxiliarFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStPagosAuxiliarImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStPagosAuxiliarEsCondonacion: TBooleanField
      FieldName = 'EsCondonacion'
    end
    object ADODtStPagosAuxiliarObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStPagosAuxiliarIdPagoAplicacionInterna: TIntegerField
      FieldName = 'IdPagoAplicacionInterna'
    end
  end
  object DSAplicacionInterna: TDataSource
    DataSet = ADODtstAplicacionesInternas
    Left = 652
    Top = 392
  end
  object ADODtStCXCDetalleDescto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStPagosAuxiliarNewRecord
    CommandText = 
      'select IdCuentaXCobrarDescuento, IdCuentaXCobrarDetalle,'#13#10' IDUsu' +
      'ario, IdCFDI, Fecha, Monto, Observaciones from CuentasXCobrarDet' +
      'alleDescuento'#13#10'where idCuentaXCobrarDetalle=:IdCuentaXCobrarDeta' +
      'lle'
    DataSource = DSCXCDetalle
    IndexFieldNames = 'IdCuentaXCobrarDetalle'
    MasterFields = 'IdCuentaXCobrarDetalle'
    Parameters = <
      item
        Name = 'IdCuentaXCobrarDetalle'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 779
    Top = 459
    object ADODtStCXCDetalleDesctoIdCuentaXCobrarDescuento: TAutoIncField
      FieldName = 'IdCuentaXCobrarDescuento'
      ReadOnly = True
    end
    object ADODtStCXCDetalleDesctoIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStCXCDetalleDesctoIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStCXCDetalleDesctoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCXCDetalleDesctoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCXCDetalleDesctoMonto: TFMTBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetalleDesctoObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 200
    end
  end
  object DSCXCDetalle: TDataSource
    DataSet = ADODtStCxCDetallePend
    Left = 652
    Top = 464
  end
  object ADODtStDetalleCXCMostrar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * From CuentasxcobrarDetalle'#13#10'where Saldo >0'#13#10'and IdCuent' +
      'aXCobrar=:IdCuentaXCobrar'#13#10
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 724
    Top = 187
    object ADODtStDetalleCXCMostrarIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStDetalleCXCMostrarIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDetalleCXCMostrarIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStDetalleCXCMostrarIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStDetalleCXCMostrarDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStDetalleCXCMostrarImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
end
