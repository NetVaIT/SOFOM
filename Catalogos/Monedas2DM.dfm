inherited dmMonedas2: TdmMonedas2
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, IdPais, Identificador, Descripcion FROM Monedas'
  end
  object adodsPais: TADODataSet [1]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 256
    Top = 16
  end
  inherited cdsMaster: TClientDataSet [2]
    object cdsMasterIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object cdsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object cdsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object cdsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object cdsMasterPais: TStringField
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
  inherited dspMaster: TDataSetProvider [3]
  end
end
