inherited dmPagos: TdmPagos
  OldCreateOrder = True
  Height = 593
  Width = 702
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
      ' Saldo, '#13#10'Observaciones, IdMetodoPago, CuentaPago from Pagos'
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
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
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
  end
  inherited ActionList: TActionList
    Top = 72
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
      'uentaXCobrarDetalle, IdCuentaXCobrar,'#13#10' FechaAplicacion, Importe' +
      ' from PagosAplicaciones'#13#10'where IdPersonaCliente=:IdPersonaClient' +
      'e'
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
    object ADODtStAplicacionesPagosIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
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
  end
  object ADODtStCXCPendientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * from CuentasXCobrar where '#13#10' Saldo >0 and IDPersona=:Id' +
      'PersonaCliente'#13#10#13#10
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
  end
  object ADODtStCxCDetallePend: TADODataSet
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
      'os Con on CXCD.IdCuentaXCobrarDetalle= Con.IdCXCItem'#13#10'Left join ' +
      'CuentasXCobrarDEtalle CXCD4 on CXCD3.IdCuentaXCobrarDetalle=CXCD' +
      '4.IdCuentaXCobrarDetalle'#13#10'left join CFDIConceptos Con2 on CXCD4.' +
      'IdCuentaXCobrarDetalle= Con2.IdCXCItem'#13#10#13#10'where CXCD.Saldo >0  a' +
      'nd CXCD.IdCuentaXCobrar=:IdCuentaXCobrar'#13#10'order by CXCTC.ordenAp' +
      'lica  '
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
    Left = 604
    Top = 243
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
    object ADODtStCxCDetallePendDescripcion: TStringField
      FieldName = 'Descripcion'
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
    object ADODtStCxCDetallePendacumulaACXC: TAutoIncField
      FieldName = 'acumulaACXC'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendIVAde: TAutoIncField
      FieldName = 'IVAde'
      ReadOnly = True
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
    object ADODtStCxCDetallePendIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
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
      'rarDetalle, IDCFDI, IDCFDIConcepto,'#13#10' Importe from PagosAplicaci' +
      'onesInternas'#13#10' where IDPagoAplicacion=:IDPagoAplicacion'
    DataSource = DSAplicaciones
    IndexFieldNames = 'IDPagoAplicacion'
    MasterFields = 'IdPagoAplicacion'
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
      'taXCobrar and ordenAplica =:orden'#13#10'and saldo>0'
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
    Left = 500
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
end
