inherited dmReglasNegocio: TdmReglasNegocio
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdReglaNegocio, Identificador, Descripcion, IdReglaNegoci' +
      'oTipo FROM ReglasNegocio'
    Left = 32
    object adodsMasterIdReglaNegocio: TIntegerField
      FieldName = 'IdReglaNegocio'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterIdReglaNegocioTipo: TIntegerField
      FieldName = 'IdReglaNegocioTipo'
      Visible = False
    end
    object adodsMasterReglaNegocioTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'ReglaNegocioTipo'
      LookupDataSet = adodsReglaNegocioTipo
      LookupKeyFields = 'IdReglaNegocioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdReglaNegocioTipo'
      Size = 50
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    Top = 80
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 176
    Top = 16
  end
  object adodsReglaNegocioTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdReglaNegocioTipo, Descripcion FROM ReglasNegocioTipos'
    Parameters = <>
    Left = 176
    Top = 80
  end
end
