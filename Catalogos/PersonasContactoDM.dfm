inherited dmPersonasContacto: TdmPersonasContacto
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaContacto, IdPersona, IdContacto, Puesto, Princip' +
      'al, ApoderadoLegal, RepresentanteLegal FROM PersonasContactos'
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
    object adodsMasterPuesto: TStringField
      FieldName = 'Puesto'
      Size = 50
    end
    object adodsMasterPrincipal: TBooleanField
      FieldName = 'Principal'
    end
    object adodsMasterApoderadoLegal: TBooleanField
      DisplayLabel = 'Apoderado legal'
      FieldName = 'ApoderadoLegal'
    end
    object adodsMasterRepresentanteLegal: TBooleanField
      DisplayLabel = 'Representante legal'
      FieldName = 'RepresentanteLegal'
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
