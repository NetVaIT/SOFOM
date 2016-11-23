inherited dmConfiguracion: TdmConfiguracion
  OldCreateOrder = True
  Height = 468
  Width = 699
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPais, IdMoneda, IdMovimientoTipoNomina, IdMovimientoTip' +
      'oRetencion, IdMovimientoTipoPrestamo, IdMovimientoTipoTransporte' +
      ', IdMovimientoTipoAportacion, '#13#10'IdMetodoPagoCuentasXPagar, IdMet' +
      'odoPagoFactura, IdMetodoPagoCuentasXPagarSAT, RutaBaseFacturas, ' +
      'RutaBasePagos, IdMovimientoTipoDescuento, IdRolDescuento'#13#10'FROM C' +
      'onfiguraciones'
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoNomina: TIntegerField
      FieldName = 'IdMovimientoTipoNomina'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoRetencion: TIntegerField
      FieldName = 'IdMovimientoTipoRetencion'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoPrestamo: TIntegerField
      FieldName = 'IdMovimientoTipoPrestamo'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoTransporte: TIntegerField
      FieldName = 'IdMovimientoTipoTransporte'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoAportacion: TIntegerField
      FieldName = 'IdMovimientoTipoAportacion'
      Visible = False
    end
    object adodsMasterIdRolDescuento: TIntegerField
      FieldName = 'IdRolDescuento'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoDescuento: TIntegerField
      FieldName = 'IdMovimientoTipoDescuento'
      Visible = False
    end
    object adodsMasterIdMetodoPagoCuentasXPagar: TIntegerField
      FieldName = 'IdMetodoPagoCuentasXPagar'
      Visible = False
    end
    object adodsMasterIdMetodoPagoCuentasXPagarSAT: TIntegerField
      FieldName = 'IdMetodoPagoCuentasXPagarSAT'
      Visible = False
    end
    object adodsMasterIdMetodoPagoFactura: TIntegerField
      FieldName = 'IdMetodoPagoFactura'
      Visible = False
    end
    object adodsMasterPais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterMovimientoTipoNomina: TStringField
      DisplayLabel = 'Tipo movimiento para nomina'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoNomina'
      LookupDataSet = adodsMovimientosTipo1
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoNomina'
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoRetencion: TStringField
      DisplayLabel = 'Tipo movimiento para retenci'#243'n'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoRetencion'
      LookupDataSet = adodsMovimientosTipo2
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoRetencion'
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoPrestamo: TStringField
      DisplayLabel = 'Tipo movimiento para prestamo'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoPrestamo'
      LookupDataSet = adodsMovimientosTipo3
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoPrestamo'
      Size = 100
      Lookup = True
    end
    object adodsMasterRolDescuento: TStringField
      DisplayLabel = 'Rol de descuento'
      FieldKind = fkLookup
      FieldName = 'RolDescuento'
      LookupDataSet = adodsRol1
      LookupKeyFields = 'IdRol'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolDescuento'
      Size = 50
      Lookup = True
    end
    object adodsMasterMovimientoTipoDescuento: TStringField
      DisplayLabel = 'Tipo movimiento para descuento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoDescuento'
      LookupDataSet = adodsMovimientosTipo4
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoDescuento'
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoTransporte: TStringField
      DisplayLabel = 'Tipo movimiento para ingreso por transporte'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoTransporte'
      LookupDataSet = adodsMovimientosTipo5
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoTransporte'
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoAportacion: TStringField
      DisplayLabel = 'Tipo movimiento para ingreso por aportaci'#243'n'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoAportacion'
      LookupDataSet = adodsMovimientosTipo6
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoAportacion'
      Size = 100
      Lookup = True
    end
    object adodsMasterMetodoPagoCuentasXPagar: TStringField
      DisplayLabel = 'Metodo de pago para cuentas por pagar'
      FieldKind = fkLookup
      FieldName = 'MetodoPagoCuentasXPagar'
      LookupDataSet = adodsMetodosPago1
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPagoCuentasXPagar'
      Size = 100
      Lookup = True
    end
    object adodsMasterMetodoPagoCuentasXPagarSAT: TStringField
      DisplayLabel = 'Metodo de pago para cuentas por pagar SAT'
      FieldKind = fkLookup
      FieldName = 'MetodoPagoCuentasXPagarSAT'
      LookupDataSet = adodsMetodosPago3
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPagoCuentasXPagarSAT'
      Size = 100
      Lookup = True
    end
    object adodsMasterMetodoPagoFactura: TStringField
      DisplayLabel = 'Metodo de pago para facturar'
      FieldKind = fkLookup
      FieldName = 'MetodoPagoFactura'
      LookupDataSet = adodsMetodosPago2
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPagoFactura'
      Size = 100
      Lookup = True
    end
    object adodsMasterRutaBaseFacturas: TStringField
      DisplayLabel = 'Ruta Base para Facturas'
      FieldName = 'RutaBaseFacturas'
      Size = 250
    end
    object adodsMasterRutaBasePagos: TStringField
      DisplayLabel = 'Ruta Base para pagos'
      FieldName = 'RutaBasePagos'
      Size = 250
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 592
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 592
    Top = 96
  end
  object adoqGetIdPeriodoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetIdPeriodoActual() AS Valor')
    Left = 584
    Top = 184
    object adoqGetIdPeriodoActualValor: TIntegerField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adoqGetRutaBaseFacturas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBaseFacturas() AS Valor')
    Left = 584
    Top = 248
    object adoqGetRutaBaseFacturasValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Descripcion from Paises'
    Parameters = <>
    Left = 104
    Top = 16
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 104
    Top = 64
  end
  object adodsMovimientosTipo1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 216
    Top = 16
  end
  object adodsMovimientosTipo2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 216
    Top = 72
  end
  object adodsMovimientosTipo3: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 216
    Top = 128
  end
  object adodsMetodosPago1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Descripcion from MetodosPago'
    Parameters = <>
    Left = 368
    Top = 32
  end
  object adodsMetodosPago2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Descripcion from MetodosPago'
    Parameters = <>
    Left = 368
    Top = 88
  end
  object adoqGetRutaBasePagos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBasePagos() AS Valor')
    Left = 584
    Top = 312
    object adoqGetRutaBasePagosValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adodsMovimientosTipo4: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 224
    Top = 192
  end
  object adodsMetodosPago3: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Descripcion from MetodosPago'
    Parameters = <>
    Left = 376
    Top = 144
  end
  object adodsRol1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRol, Descripcion from Roles'
    Parameters = <>
    Left = 456
    Top = 24
  end
  object adoqGetDiaPagoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CAST(DATEADD(day, 4,FechaInicio) AS DATETIME) AS Valor FR' +
        'OM Periodos WHERE IdPeriodo = dbo.GetIdPeriodoActual();')
    Left = 592
    Top = 384
    object adoqGetDiaPagoActualValor: TDateTimeField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adodsMovimientosTipo5: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 216
    Top = 248
  end
  object adodsMovimientosTipo6: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 216
    Top = 304
  end
end
