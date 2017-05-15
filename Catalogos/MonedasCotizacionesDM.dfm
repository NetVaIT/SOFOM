inherited dmMonedasCotizaciones: TdmMonedasCotizaciones
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdMonedaCotizacion, IdMoneda, Fecha, Importe from Monedas' +
      'Cotizaciones'#13#10'order by IdMoneda, Fecha DESC'
    object adodsMasterIdMonedaCotizacion: TAutoIncField
      FieldName = 'IdMonedaCotizacion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
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
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'order by Descripcion '
    Parameters = <>
    Left = 72
    Top = 64
  end
end
