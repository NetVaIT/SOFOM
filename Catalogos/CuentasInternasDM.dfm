inherited dmCuentasInternas: TdmCuentasInternas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaInterna, IdPersona, CuentaInterna, Descripcion, I' +
      'dCuentaInternaPadre FROM CuentasInternas'
    Left = 32
    Top = 24
    object adodsMasterIdCuentaInterna: TAutoIncField
      FieldName = 'IdCuentaInterna'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 50
      Lookup = True
    end
    object adodsMasterCuentaInterna: TStringField
      FieldName = 'CuentaInterna'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterIdCuentaInternaPadre: TIntegerField
      FieldName = 'IdCuentaInternaPadre'
      Visible = False
    end
    object adodsMasterCuentaInternaPadre: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaInternaPadre'
      LookupDataSet = adodsCuentaInternaPadre
      LookupKeyFields = 'IdCuentaInterna'
      LookupResultField = 'CuentaInterna'
      KeyFields = 'IdCuentaInterna'
      Size = 50
      Lookup = True
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 152
    Top = 88
  end
  object adodsCuentaInternaPadre: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaInterna, CuentaInterna, Descripcion FROM CuentasI' +
      'nternas'
    Parameters = <>
    Left = 152
    Top = 160
  end
end
