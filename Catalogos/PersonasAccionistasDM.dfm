inherited dmPersonasAccionistas: TdmPersonasAccionistas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaAccionista, IdPersona, IdAccionista, Porcentaje,' +
      ' Cargo, NivelControl1, NivelControl2, NivelControl3, NivelContro' +
      'l4, NivelControl5 from PersonasAccionistas'
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
    object adodsMasterCargo: TStringField
      FieldName = 'Cargo'
      Size = 50
    end
    object adodsMasterNivelControl1: TBooleanField
      DisplayLabel = 'NC1'
      FieldName = 'NivelControl1'
    end
    object adodsMasterNivelControl2: TBooleanField
      DisplayLabel = 'NC2'
      FieldName = 'NivelControl2'
    end
    object adodsMasterNivelControl3: TBooleanField
      DisplayLabel = 'NC3'
      FieldName = 'NivelControl3'
    end
    object adodsMasterNivelControl4: TBooleanField
      DisplayLabel = 'NC4'
      FieldName = 'NivelControl4'
    end
    object adodsMasterNivelControl5: TBooleanField
      DisplayLabel = 'NC5'
      FieldName = 'NivelControl5'
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RazonSocial FROM Personas'#13#10'order by RazonSocia' +
      'l'#13#10
    Parameters = <>
    Left = 52
    Top = 96
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsMasterDataChange
    Left = 104
    Top = 16
  end
end
