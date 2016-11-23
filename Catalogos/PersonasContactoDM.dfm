inherited dmPersonasContacto: TdmPersonasContacto
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaContacto, IdPersona, IdContacto, Principal FROM ' +
      'PersonasContactos'
    Left = 40
    object adodsMasterIdPersonaContacto: TAutoIncField
      FieldName = 'IdPersonaContacto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdContacto: TIntegerField
      FieldName = 'IdContacto'
      Visible = False
    end
    object adodsMasterContacto: TStringField
      FieldKind = fkLookup
      FieldName = 'Contacto'
      LookupDataSet = adodsContacto
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdContacto'
      Size = 50
      Lookup = True
    end
    object adodsMasterPrincipal: TBooleanField
      FieldName = 'Principal'
    end
  end
  object adodsContacto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 52
    Top = 96
  end
end
