inherited dmCuentasContables: TdmCuentasContables
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaContable, IdPersona, CuentaContable, Descripcion,' +
      ' IdCuentaContableNaturaleza, IdCuentaContableCodigoAgrupaSAT, Id' +
      'CuentaContablePadre FROM CuentasContables'
    Left = 40
    Top = 32
    object adodsMasterIdCuentaContable: TAutoIncField
      FieldName = 'IdCuentaContable'
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
    object adodsMasterCuentaContable: TStringField
      DisplayLabel = 'Cuenta Contable'
      FieldName = 'CuentaContable'
      Size = 100
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterIdCuentaContableNaturaleza: TIntegerField
      FieldName = 'IdCuentaContableNaturaleza'
      Visible = False
    end
    object adodsMasterCuentaContableNaturaleza: TStringField
      DisplayLabel = 'Naturaleza Cuenta Contable'
      FieldKind = fkLookup
      FieldName = 'CuentaContableNaturaleza'
      LookupDataSet = adodsCuentaContableNaturaleza
      LookupKeyFields = 'IdCuentaContableNaturaleza'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaContableNaturaleza'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdCuentaContableCodigoAgrupaSAT: TIntegerField
      FieldName = 'IdCuentaContableCodigoAgrupaSAT'
      Visible = False
    end
    object adodsMasterIdCuentaContablePadre: TIntegerField
      FieldName = 'IdCuentaContablePadre'
      Visible = False
    end
    object adodsMasterCuentaContablePadre: TStringField
      DisplayLabel = 'Cuenta Contable Padre'
      FieldKind = fkLookup
      FieldName = 'CuentaContablePadre'
      LookupDataSet = adodsCuentaContablePadre
      LookupKeyFields = 'IdCuentaContable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaContablePadre'
      Size = 50
      Lookup = True
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 160
    Top = 104
  end
  object adodsCuentaContablePadre: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaContable, CuentaContable, Descripcion FROM Cuenta' +
      'sContables'
    Parameters = <>
    Left = 160
    Top = 264
  end
  object adodsCuentaContableNaturaleza: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaContableNaturaleza, Descripcion FROM CuentasConta' +
      'blesNaturaleza'
    Parameters = <>
    Left = 160
    Top = 184
  end
end
