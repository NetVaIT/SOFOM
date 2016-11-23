inherited dmMonedas: TdmMonedas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, IdPais, Identificador, Descripcion FROM Monedas'
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 120
    Top = 16
  end
end
