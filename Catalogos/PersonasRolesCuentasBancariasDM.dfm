inherited dmPersonasRolesCuentasBancarias: TdmPersonasRolesCuentasBancarias
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPersonaRolCuentaBancaria, IdPersonaRol, IdCuentaBancari' +
      'a, IdCuentaBancariaPerfil, BanorteID, Porcentaje, LimiteInferior' +
      ', LimiteSuperior, IdCuentaBancariaEstatus FROM PersonasRolesCuen' +
      'tasBancarias'
    Left = 40
    Top = 24
    object adodsMasterIdPersonaRolCuentaBancaria: TAutoIncField
      FieldName = 'IdPersonaRolCuentaBancaria'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaEstatus'
      Visible = False
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdCuentaBancariaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterBanorteID: TStringField
      DisplayLabel = 'Banorte ID'
      FieldName = 'BanorteID'
      Size = 5
    end
    object adodsMasterCuentaBancaria: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaBancaria'
      LookupDataSet = adodsCuentaBancaria
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaBancaria'
      KeyFields = 'IdCuentaBancaria'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdCuentaBancariaPerfil: TIntegerField
      FieldName = 'IdCuentaBancariaPerfil'
      Visible = False
    end
    object adodsMasterCuentaBancariaPerfil: TStringField
      DisplayLabel = 'Perfil de Cuenta Bancaria'
      FieldKind = fkLookup
      FieldName = 'CuentaBancariaPerfil'
      LookupDataSet = adodsCuentaBancariaPerfil
      LookupKeyFields = 'IdCuentaBancariaPerfil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaPerfil'
      Size = 50
      Lookup = True
    end
    object adodsMasterPorcentaje: TBCDField
      FieldName = 'Porcentaje'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object adodsMasterLimiteInferior: TBCDField
      DisplayLabel = 'Limite Inferior'
      FieldName = 'LimiteInferior'
      Precision = 18
      Size = 2
    end
    object adodsMasterLimiteSuperior: TBCDField
      DisplayLabel = 'Limite Superior'
      FieldName = 'LimiteSuperior'
      Precision = 18
      Size = 2
    end
  end
  object adodsCuentaBancaria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CuentasBancarias.IdCuentaBancaria, Bancos.Nombre, Monedas' +
      '.Identificador, CuentasBancarias.CuentaBancaria'#13#10'  FROM Bancos'#13#10 +
      'INNER JOIN CuentasBancarias ON Bancos.IdBanco = CuentasBancarias' +
      '.IdBanco'#13#10'INNER JOIN Monedas ON CuentasBancarias.IdMoneda = Mone' +
      'das.IdMoneda'#13#10'WHERE CuentasBancarias.IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 152
    Top = 104
  end
  object adodsCuentaBancariaPerfil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaBancariaPerfil, Descripcion FROM CuentasBancarias' +
      'Perfiles'
    Parameters = <>
    Left = 152
    Top = 184
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaBancariaEstatus, Descripcion from CuentasBancaria' +
      'sEstatus'
    Parameters = <>
    Left = 152
    Top = 32
  end
end
