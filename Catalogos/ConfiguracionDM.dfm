inherited dmConfiguracion: TdmConfiguracion
  OldCreateOrder = True
  Height = 468
  Width = 449
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPais, IdMoneda, RutaBaseFacturas, RutaBasePagos, Ultimo' +
      'FolioPago, UltimaSeriePago FROM Configuraciones'
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
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
    object adodsMasterUltimoFolioPago: TIntegerField
      DisplayLabel = #218'ltimo folio de pago'
      FieldName = 'UltimoFolioPago'
    end
    object adodsMasterUltimaSeriePago: TStringField
      DisplayLabel = #218'ltima serie de pago'
      FieldName = 'UltimaSeriePago'
    end
  end
  object adoqGetIdPeriodoActual: TADOQuery [1]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetIdPeriodoActual() AS Valor')
    Left = 320
    Top = 160
    object adoqGetIdPeriodoActualValor: TIntegerField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adoqGetRutaBaseFacturas: TADOQuery [2]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBaseFacturas() AS Valor')
    Left = 320
    Top = 224
    object adoqGetRutaBaseFacturasValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adodsPaises: TADODataSet [3]
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Descripcion from Paises'
    Parameters = <>
    Left = 104
    Top = 16
  end
  object adodsMonedas: TADODataSet [4]
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 104
    Top = 64
  end
  object adoqGetRutaBasePagos: TADOQuery [5]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBasePagos() AS Valor')
    Left = 320
    Top = 288
    object adoqGetRutaBasePagosValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adoqGetDiaPagoActual: TADOQuery [6]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CAST(DATEADD(day, 4,FechaInicio) AS DATETIME) AS Valor FR' +
        'OM Periodos WHERE IdPeriodo = dbo.GetIdPeriodoActual();')
    Left = 328
    Top = 360
    object adoqGetDiaPagoActualValor: TDateTimeField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adoqTipoCambio: TADOQuery [7]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMoneda'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT dbo.GetCotizacionMoneda(:IdMoneda) AS Valor')
    Left = 216
    Top = 24
    object adoqTipoCambioValor: TFMTBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 16
    end
  end
end
