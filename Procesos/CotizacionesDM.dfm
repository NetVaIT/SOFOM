inherited dmCotizaciones: TdmCotizaciones
  OldCreateOrder = True
  Height = 413
  Width = 532
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT Cotizaciones.IdCotizacion, Cotizaciones.IdPersona, Cotiza' +
      'ciones.IdCotizacionEstatus, Cotizaciones.IdCotizacionCausa, Coti' +
      'zaciones.IdContratoTipo, Cotizaciones.IdUsuario, CotizacionesEst' +
      'atus.Descripcion AS Estatus, Cotizaciones.Identificador, '#13#10'Cotiz' +
      'aciones.Descripcion, Cotizaciones.Elaboracion, Cotizaciones.Vige' +
      'ncia, CotizacionesCausas.Descripcion AS Causa'#13#10'FROM Cotizaciones' +
      ' INNER JOIN'#13#10'CotizacionesEstatus ON Cotizaciones.IdCotizacionEst' +
      'atus = CotizacionesEstatus.IdCotizacionEstatus LEFT JOIN'#13#10'Cotiza' +
      'cionesCausas ON Cotizaciones.IdCotizacionCausa = CotizacionesCau' +
      'sas.IdCotizacionCausa'#13#10
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
    object adodsMasterIdCotizacionEstatus: TIntegerField
      FieldName = 'IdCotizacionEstatus'
      Visible = False
      OnChange = adodsMasterIdCotizacionEstatusChange
    end
    object adodsMasterIdCotizacionCausa: TIntegerField
      FieldName = 'IdCotizacionCausa'
      Visible = False
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
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
    object adodsMasterCausa: TStringField
      FieldName = 'Causa'
      Size = 50
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
  inherited adodsUpdate: TADODataSet
    Left = 416
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 80
    object actAmortizaciones: TAction
      Caption = 'Amortizaciones'
      ImageIndex = 11
      OnExecute = actAmortizacionesExecute
    end
    object actAmortizacionesC: TAction
      Caption = 'Amortizaciones'
      ImageIndex = 11
    end
    object actCambiarEstatus: TAction
      Caption = 'actCambiarEstatus'
      ImageIndex = 13
      OnExecute = actCambiarEstatusExecute
      OnUpdate = actCambiarEstatusUpdate
    end
    object actGetTipoCambio: TAction
      Caption = '...'
      Hint = 'Obtiene la '#250'ltima cotizaci'#243'n de la moneda'
      OnExecute = actGetTipoCambioExecute
    end
    object actGetImpactoISR: TAction
      Caption = '...'
      Hint = 'Obtierne el c'#225'lculo del impacto ISR'
      OnExecute = actGetImpactoISRExecute
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial AS Cliente from Personas'#13#10'WHERE Id' +
      'RolTipo = 3'
    Parameters = <>
    Left = 48
    Top = 72
  end
  object adodsContratosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoTipo, Descripcion from ContratosTipos'
    Parameters = <>
    Left = 48
    Top = 128
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'order by Descripcion'
    Parameters = <>
    Left = 232
    Top = 144
  end
  object adodsUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 48
    Top = 184
  end
  object daMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    OnDataChange = daMasterDataChange
    Left = 128
    Top = 16
  end
  object adodsCotizacionesEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdCotizacionEstatus, Descripcion from CotizacionesEstatus'
    Parameters = <>
    Left = 48
    Top = 240
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
    Left = 416
    Top = 320
  end
  object adodsDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsDetalleNewRecord
    CommandText = 
      'select IdCotizacionDetalle, IdCotizacion, IdMoneda, IdCotizacion' +
      'DetalleEstatus, IdUsuario, Registro, PrecioMoneda, TipoCambio, P' +
      'recio, Impuesto, PrecioTotal, EnganchePorcentaje, Enganche, Comi' +
      'sionPorcentaje, Comision, ComisionImpuesto, Gastos, GastosImpues' +
      'tos, DespositosNumero, Depositos, PagoIncial, OpcionCompraPorcen' +
      'taje, OpcionCompra, ValorResidualPorcentaje, ValorResidual, Mont' +
      'oFinanciar, TasaAnual, Plazo, PagoMensual, ImpactoISR, FechaVenc' +
      'imiento, PorcentajeDepreciacion, PorcentajeISR, PorcentajeKE, TI' +
      'R from CotizacionesDetalle'#13#10'where IdCotizacion = :IdCotizacion'#13#10
    DataSource = daMaster
    MasterFields = 'IdCotizacion'
    Parameters = <
      item
        Name = 'IdCotizacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 5
      end>
    Left = 232
    Top = 88
    object adodsDetalleIdCotizacionDetalle: TAutoIncField
      FieldName = 'IdCotizacionDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsDetalleIdCotizacion: TIntegerField
      FieldName = 'IdCotizacion'
      Visible = False
    end
    object adodsDetalleIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsDetalleIdCotizacionDetalleEstatus: TIntegerField
      FieldName = 'IdCotizacionDetalleEstatus'
      Visible = False
    end
    object adodsDetalleIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsDetalleEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCotizacionesDetalleEstatus
      LookupKeyFields = 'IdCotizacionDetalleEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCotizacionDetalleEstatus'
      Size = 50
      Lookup = True
    end
    object adodsDetalleDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = adodsCotizacionLkp
      LookupKeyFields = 'IdCotizacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCotizacion'
      Visible = False
      Size = 100
      Lookup = True
    end
    object adodsDetallePrecioMoneda: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioMoneda'
      Required = True
      OnChange = adodsDetallePrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleMoneda: TStringField
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
    object adodsDetalleTipoCambio: TFMTBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      OnChange = adodsDetallePrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetallePrecio: TFMTBCDField
      DisplayLabel = 'Precio moneda local'
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleImpuesto: TFMTBCDField
      DisplayLabel = 'IVA'
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetallePrecioTotal: TFMTBCDField
      DisplayLabel = 'Precio total'
      FieldName = 'PrecioTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleEnganchePorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje enganche'
      FieldName = 'EnganchePorcentaje'
      OnChange = adodsDetallePrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsDetalleEnganche: TFMTBCDField
      FieldName = 'Enganche'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleComisionPorcentaje: TBCDField
      DisplayLabel = 'Porcentaje comisi'#243'n'
      FieldName = 'ComisionPorcentaje'
      OnChange = adodsDetallePrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsDetalleComision: TFMTBCDField
      DisplayLabel = 'Comisi'#243'n'
      FieldName = 'Comision'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleComisionImpuesto: TFMTBCDField
      DisplayLabel = 'IVA de comisi'#243'n'
      FieldName = 'ComisionImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleGastos: TFMTBCDField
      DisplayLabel = 'Gastos de administraci'#243'n'
      FieldName = 'Gastos'
      OnChange = adodsDetallePrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleGastosImpuestos: TFMTBCDField
      DisplayLabel = 'IVA de gastos'
      FieldName = 'GastosImpuestos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleDespositosNumero: TIntegerField
      DisplayLabel = 'N'#250'mero de despositos'
      FieldName = 'DespositosNumero'
      OnChange = adodsDetallePrecioMonedaChange
    end
    object adodsDetalleDepositos: TFMTBCDField
      DisplayLabel = 'Dep'#243'sito en garantia'
      FieldName = 'Depositos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetallePagoIncial: TFMTBCDField
      DisplayLabel = 'Total pago inicial'
      FieldName = 'PagoIncial'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleOpcionCompraPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje opci'#243'n de compra'
      FieldName = 'OpcionCompraPorcentaje'
      OnChange = adodsDetallePrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsDetalleOpcionCompra: TFMTBCDField
      DisplayLabel = 'Opci'#243'n de compra'
      FieldName = 'OpcionCompra'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleValorResidualPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje valor residual'
      FieldName = 'ValorResidualPorcentaje'
      OnChange = adodsDetallePrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsDetalleValorResidual: TFMTBCDField
      DisplayLabel = 'Valor residual'
      FieldName = 'ValorResidual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a financiar'
      FieldName = 'MontoFinanciar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsDetallePrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsDetallePlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsDetallePrecioMonedaChange
    end
    object adodsDetallePagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleTIR: TBCDField
      FieldName = 'TIR'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsDetalleFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsDetallePorcentajeDepreciacion: TBCDField
      DisplayLabel = 'Porcentaje depreciaci'#243'n'
      FieldName = 'PorcentajeDepreciacion'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsDetallePorcentajeISR: TBCDField
      DisplayLabel = 'Porcentaje ISR'
      FieldName = 'PorcentajeISR'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsDetallePorcentajeKE: TBCDField
      DisplayLabel = 'Porcentaje Ke'
      FieldName = 'PorcentajeKE'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsDetalleImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      OnChange = adodsDetallePrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDetalleRegistro: TDateTimeField
      FieldName = 'Registro'
    end
    object adodsDetalleUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuariosD
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
  end
  object adodsUsuariosD: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 232
    Top = 208
  end
  object adodsCotizacionesDetalleEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCotizacionDetalleEstatus, Descripcion from Cotizaciones' +
      'DetalleEstatus'
    Parameters = <>
    Left = 232
    Top = 256
  end
  object adodsCotizacionLkp: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCotizacion, '#39'Cotizaci'#243'n '#39' + Cotizaciones.Identificador ' +
      '+ '#39' - '#39' + ContratosTipos.Descripcion AS Descripcion'#13#10'FROM Cotiza' +
      'ciones INNER JOIN ContratosTipos ON Cotizaciones.IdContratoTipo ' +
      '= ContratosTipos.IdContratoTipo'#13#10
    Parameters = <>
    Left = 232
    Top = 320
  end
  object adodsCotizacionesCausas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCotizacionCausa, IdCotizacionEstatus, Descripcion from ' +
      'CotizacionesCausas'#13#10'where IdCotizacionEstatus = :IdCotizacionEst' +
      'atus'
    DataSource = dsCotizacionesEstatus
    MasterFields = 'IdCotizacionEstatus'
    Parameters = <
      item
        Name = 'IdCotizacionEstatus'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 312
  end
  object dsCotizacionesEstatus: TDataSource
    DataSet = adodsCotizacionesEstatus
    Left = 128
    Top = 224
  end
end
