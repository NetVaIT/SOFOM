inherited dmPersonasAdministradores: TdmPersonasAdministradores
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaAdministrador, IdPersona, IdAdministrador, Cargo' +
      ' from PersonasAdminstradores'
    object adodsMasterIdPersonaAdministrador: TAutoIncField
      FieldName = 'IdPersonaAdministrador'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdAdministrador: TIntegerField
      FieldName = 'IdAdministrador'
      Visible = False
    end
    object adodsMasterAdministrador: TStringField
      FieldKind = fkLookup
      FieldName = 'Administrador'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdAdministrador'
      Size = 300
      Lookup = True
    end
    object adodsMasterRFC: TStringField
      FieldKind = fkLookup
      FieldName = 'RFC'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RFC'
      KeyFields = 'IdAdministrador'
      Size = 13
      Lookup = True
    end
    object adodsMasterCargo: TStringField
      FieldName = 'Cargo'
      Size = 50
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RazonSocial, RFC FROM Personas'#13#10'order by Razon' +
      'Social'#13#10
    Parameters = <>
    Left = 52
    Top = 96
  end
end
