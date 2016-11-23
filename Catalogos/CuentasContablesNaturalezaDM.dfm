inherited dmCuentasContablesNaturaleza: TdmCuentasContablesNaturaleza
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaContableNaturaleza, Identificador, Descripcion FR' +
      'OM CuentasContablesNaturaleza'
    Left = 32
    Top = 24
    object adodsMasterIdCuentaContableNaturaleza: TAutoIncField
      FieldName = 'IdCuentaContableNaturaleza'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
