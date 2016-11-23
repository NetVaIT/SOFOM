inherited dmBancos: TdmBancos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdBanco, IdPaisBanco, Identificador, Nombre, Descripcion,' +
      ' Siglas FROM Bancos'
    FieldDefs = <
      item
        Name = 'IdBanco'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'IdPaisBanco'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Identificador'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Siglas'
        DataType = ftString
        Size = 10
      end>
    StoreDefs = True
    object adodsMasterIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPaisBanco: TIntegerField
      FieldName = 'IdPaisBanco'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object adodsMasterSiglas: TStringField
      FieldName = 'Siglas'
      Size = 10
    end
    object adodsMasterPais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPaisBanco'
      Size = 100
      Lookup = True
    end
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 112
    Top = 16
  end
end
