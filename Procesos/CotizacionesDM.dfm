inherited dmCotizaciones: TdmCotizaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdCotizacion, IdPersona, IdContratoTipo, IdMoneda, IdCoti' +
      'zacionEstatus, IdUsuario, Identificador, Descripcion, Elaboracio' +
      'n, Vigencia, PrecioMoneda, TipoCambio, Precio, Impuesto, PrecioT' +
      'otal, EnganchePorcentaje, Enganche, ComisionPorcentaje, Comision' +
      ', ComisionImpuesto, Gastos, GastosImpuestos, DespositosNumero, D' +
      'epositos, PagoIncial, OpcionCompraPorcentaje, OpcionCompra, Valo' +
      'rResidualPorcentaje, ValorResidual, MontoFinanciar, TasaAnual, P' +
      'lazo, PagoMensual, ImpactoISR from Cotizaciones'
    Left = 40
    object adodsMasterIdCotizacion: TAutoIncField
      FieldName = 'IdCotizacion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdCotizacionEstatus: TIntegerField
      FieldName = 'IdCotizacionEstatus'
      Visible = False
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCotizacionesEstatus
      LookupKeyFields = 'IdCotizacionEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCotizacionEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 5
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Producto'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsMasterElaboracion: TDateTimeField
      DisplayLabel = 'Elaboraci'#243'n'
      FieldName = 'Elaboracion'
      Required = True
    end
    object adodsMasterVigencia: TDateTimeField
      FieldName = 'Vigencia'
      Required = True
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Cliente'
      KeyFields = 'IdPersona'
      Required = True
      Size = 300
      Lookup = True
    end
    object adodsMasterTipoContrato: TStringField
      DisplayLabel = 'Tipo de contrato'
      FieldKind = fkLookup
      FieldName = 'TipoContrato'
      LookupDataSet = adodsContratosTipos
      LookupKeyFields = 'IdContratoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdContratoTipo'
      Required = True
      Size = 50
      Lookup = True
    end
    object adodsMasterPrecioMoneda: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioMoneda'
      Required = True
      OnChange = adodsMasterPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Required = True
      Size = 80
      Lookup = True
    end
    object adodsMasterTipoCambio: TFMTBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      OnChange = adodsMasterPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPrecio: TFMTBCDField
      DisplayLabel = 'Precio moneda local'
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImpuesto: TFMTBCDField
      DisplayLabel = 'IVA'
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPrecioTotal: TFMTBCDField
      DisplayLabel = 'Precio total'
      FieldName = 'PrecioTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEnganchePorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje enganche'
      FieldName = 'EnganchePorcentaje'
      OnChange = adodsMasterPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterEnganche: TFMTBCDField
      FieldName = 'Enganche'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterComisionPorcentaje: TBCDField
      DisplayLabel = 'Porcentaje comisi'#243'n'
      FieldName = 'ComisionPorcentaje'
      OnChange = adodsMasterPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsMasterComision: TFMTBCDField
      DisplayLabel = 'Comisi'#243'n'
      FieldName = 'Comision'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterComisionImpuesto: TFMTBCDField
      DisplayLabel = 'IVA de comisi'#243'n'
      FieldName = 'ComisionImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterGastos: TFMTBCDField
      DisplayLabel = 'Gastos de administraci'#243'n'
      FieldName = 'Gastos'
      OnChange = adodsMasterPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterGastosImpuestos: TFMTBCDField
      DisplayLabel = 'IVA de gastos'
      FieldName = 'GastosImpuestos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterDespositosNumero: TIntegerField
      DisplayLabel = 'N'#250'mero de despositos'
      FieldName = 'DespositosNumero'
      OnChange = adodsMasterPrecioMonedaChange
    end
    object adodsMasterDepositos: TFMTBCDField
      DisplayLabel = 'Dep'#243'sito en garantia'
      FieldName = 'Depositos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPagoIncial: TFMTBCDField
      DisplayLabel = 'Total pago inicial'
      FieldName = 'PagoIncial'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterOpcionCompraPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje opci'#243'n de compra'
      FieldName = 'OpcionCompraPorcentaje'
      OnChange = adodsMasterPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterOpcionCompra: TFMTBCDField
      DisplayLabel = 'Opci'#243'n de compra'
      FieldName = 'OpcionCompra'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterValorResidualPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje valor residual'
      FieldName = 'ValorResidualPorcentaje'
      OnChange = adodsMasterPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterValorResidual: TFMTBCDField
      DisplayLabel = 'Valor residual'
      FieldName = 'ValorResidual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a financiar'
      FieldName = 'MontoFinanciar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsMasterPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsMasterPlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsMasterPrecioMonedaChange
    end
    object adodsMasterPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      Precision = 18
      Size = 6
    end
    object adodsMasterUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuario
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actAmortizaciones: TAction
      Caption = 'Amortizaciones'
      ImageIndex = 11
      OnExecute = actAmortizacionesExecute
    end
    object actAmortizacionesC: TAction
      Caption = 'Amortizaciones'
      ImageIndex = 11
      OnExecute = actAmortizacionesCExecute
    end
    object actCambiarEstatus: TAction
      Caption = 'actCambiarEstatus'
      ImageIndex = 13
      OnExecute = actCambiarEstatusExecute
      OnUpdate = actCambiarEstatusUpdate
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial AS Cliente from Personas'#13#10'WHERE Id' +
      'RolTipo = 3'
    Parameters = <>
    Left = 40
    Top = 72
  end
  object adodsContratosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoTipo, Descripcion from ContratosTipos'
    Parameters = <>
    Left = 40
    Top = 128
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 40
    Top = 184
  end
  object adodsUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 40
    Top = 240
  end
  object daMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    Left = 144
    Top = 16
  end
  object adodsCreditos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsCreditosNewRecord
    CommandText = 
      'select IdCotizacionCredito, IdCotizacion, IdCotizacionCreditoEst' +
      'atus, IdUsuario, Fecha, MontoFinanciar, ValorResidual, ImpactoIS' +
      'R, TasaAnual, Plazo, PagoMensual from CotizacionesCreditos'#13#10'wher' +
      'e IdCotizacion = :IdCotizacion'
    DataSource = daMaster
    MasterFields = 'IdCotizacion'
    Parameters = <
      item
        Name = 'IdCotizacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 72
    object adodsCreditosIdCotizacionCredito: TAutoIncField
      FieldName = 'IdCotizacionCredito'
      ReadOnly = True
      Visible = False
    end
    object adodsCreditosIdCotizacion: TIntegerField
      FieldName = 'IdCotizacion'
      Visible = False
    end
    object adodsCreditosIdCotizacionCreditoEstatus: TIntegerField
      FieldName = 'IdCotizacionCreditoEstatus'
      Visible = False
    end
    object adodsCreditosIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsCreditosEstatus2: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCreditosEstatus
      LookupKeyFields = 'IdCotizacionCreditoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCotizacionCreditoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsCreditosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsCreditosMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a fiananciar'
      FieldName = 'MontoFinanciar'
      OnChange = adodsCreditosMontoFinanciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosValorResidual: TFMTBCDField
      DisplayLabel = 'Futuro'
      FieldName = 'ValorResidual'
      OnChange = adodsCreditosMontoFinanciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      OnChange = adodsCreditosMontoFinanciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsCreditosMontoFinanciarChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsCreditosPlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsCreditosMontoFinanciarChange
      DisplayFormat = '0 mes(es)'
      EditFormat = '0'
    end
    object adodsCreditosPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuariosC
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
  end
  object adodsCotizacionesEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdCotizacionEstatus, Descripcion from CotizacionesEstatus'
    Parameters = <>
    Left = 56
    Top = 296
  end
  object adodsCreditosEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCotizacionCreditoEstatus, Descripcion from Cotizaciones' +
      'CreditosEstatus'
    Parameters = <>
    Left = 144
    Top = 200
  end
  object adodsUsuariosC: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 144
    Top = 136
  end
  object adospUpdCotizacionesEstatus: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdCotizacionesEstatus;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCotizacion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCotizacionEstatus'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 304
    Top = 280
  end
end
