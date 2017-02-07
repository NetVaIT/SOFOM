inherited dmPersonasAccionistas: TdmPersonasAccionistas
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaAccionista, IdPersona, IdAccionista, Porcentaje ' +
      'from PersonasAccionistas'
    object adodsMasterIdPersonaAccionista: TAutoIncField
      FieldName = 'IdPersonaAccionista'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdAccionista: TIntegerField
      FieldName = 'IdAccionista'
      Visible = False
    end
    object adodsMasterAccionista: TStringField
      FieldKind = fkLookup
      FieldName = 'Accionista'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdAccionista'
      Size = 300
      Lookup = True
    end
    object adodsMasterPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 52
    Top = 96
  end
end
