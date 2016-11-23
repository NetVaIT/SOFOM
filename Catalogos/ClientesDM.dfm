inherited dmClientes: TdmClientes
  Height = 463
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdCuentaContable, IdCuentaContableNCA, IdCu' +
      'entaContableNCR, IdCuentaContableAnticipo, TotalFacturado, Saldo' +
      'Pendiente, Calificacion FROM Clientes'
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdCuentaContable: TIntegerField
      FieldName = 'IdCuentaContable'
      Visible = False
    end
    object adodsMasterIdCuentaContableNCA: TIntegerField
      FieldName = 'IdCuentaContableNCA'
      Visible = False
    end
    object adodsMasterIdCuentaContableNCR: TIntegerField
      FieldName = 'IdCuentaContableNCR'
      Visible = False
    end
    object adodsMasterIdCuentaContableAnticipo: TIntegerField
      FieldName = 'IdCuentaContableAnticipo'
      Visible = False
    end
    object adodsMasterCuentaContable: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaContable'
      LookupDataSet = adodsCuentaContable
      LookupKeyFields = 'IdCuentaContable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaContable'
      Size = 200
      Lookup = True
    end
    object adodsMasterCuentaContableNCA: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaContableNCA'
      LookupDataSet = adodsCuentaContableNCA
      LookupKeyFields = 'IdCuentaContable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaContableNCA'
      Size = 200
      Lookup = True
    end
    object adodsMasterCuentaContableNCR: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaContableNCR'
      LookupDataSet = adodsCuentaContableNCR
      LookupKeyFields = 'IdCuentaContable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaContableNCR'
      Size = 200
      Lookup = True
    end
    object adodsMasterCuentaContableAnticipo: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaContableAnticipo'
      LookupDataSet = adodsCuentaContableAnticipo
      LookupKeyFields = 'IdCuentaContable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaContableAnticipo'
      Size = 200
      Lookup = True
    end
    object adodsMasterTotalFacturado: TFMTBCDField
      FieldName = 'TotalFacturado'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoPendiente: TFMTBCDField
      FieldName = 'SaldoPendiente'
      Precision = 18
      Size = 6
    end
    object adodsMasterCalificacion: TIntegerField
      FieldName = 'Calificacion'
    end
  end
  object adodsCuentaContable: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdCuentaContable, Descripcion FROM CuentasContables'
    Parameters = <>
    Left = 120
    Top = 80
  end
  object adodsCuentaContableNCA: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdCuentaContable, Descripcion FROM CuentasContables'
    Parameters = <>
    Left = 120
    Top = 144
  end
  object adodsCuentaContableNCR: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdCuentaContable, Descripcion FROM CuentasContables'
    Parameters = <>
    Left = 120
    Top = 216
  end
  object adodsCuentaContableAnticipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdCuentaContable, Descripcion FROM CuentasContables'
    Parameters = <>
    Left = 120
    Top = 288
  end
end
