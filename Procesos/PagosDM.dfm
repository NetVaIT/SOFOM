inherited dmPagos: TdmPagos
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
      ' Saldo, '#13#10'Observaciones from Pagos'
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
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
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
    CommandText = 
      'select IdPagoAplicacion, IdPago, IdCFDI, IdPersonaCliente,'#13#10' IdC' +
      'uentaXCobrarDetalle, IdCuentaXCobrar,'#13#10' FechaAplicacion, Importe' +
      ' from PagosAplicaciones'
    Parameters = <>
    Left = 164
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
      'Persona'#13#10#13#10
    DataSource = DSMaster
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 324
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
      'Select * from CuentasXCobrarDetalle where '#13#10' Saldo >0  and IdCue' +
      'ntaXCobrar=:IdCuentaXCobrar'#13#10#13#10
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
      end>
    Left = 588
    Top = 243
    object ADODtStCxCDetallePendIdCuentaXCobrarDetlle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetlle'
      ReadOnly = True
    end
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
end
