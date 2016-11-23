inherited dmEsquemaPagosPersonas: TdmEsquemaPagosPersonas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterScroll = adodsMasterAfterScroll
    CommandText = 
      'select IdEsquemaPagoPersona, IdPersona, IdEsquemaPago, IdCuentaB' +
      'ancaria from EsquemaPagosPersonas'#13#10'WHERE IdEsquemaPago = :IdEsqu' +
      'emaPago'#13#10#13#10
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdEsquemaPagoPersona: TAutoIncField
      FieldName = 'IdEsquemaPagoPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdEquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Required = True
      Visible = False
      OnChange = adodsMasterIdPersonaChange
    end
    object adodsMasterIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Required = True
      Visible = False
    end
    object adodsMasterPersona: TStringField
      DisplayLabel = 'OutSourcing'
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Persona'
      KeyFields = 'IdPersona'
      Size = 500
      Lookup = True
    end
    object adodsMasterCuentaBancaria: TStringField
      DisplayLabel = 'Cuenta bancaria'
      FieldKind = fkLookup
      FieldName = 'CuentaBancaria'
      LookupDataSet = adodsCuentaBacarias
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'CuentaBancaria'
      KeyFields = 'IdCuentaBancaria'
      Size = 50
      Lookup = True
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT PersonasRoles.IdPersona, Personas.RazonSocial AS Persona,' +
      ' Personas_1.RazonSocial AS PersonaRelacionada'#13#10'FROM PersonasRole' +
      's '#13#10'INNER JOIN Personas ON PersonasRoles.IdPersona = Personas.Id' +
      'Persona'#13#10'INNER JOIN Personas AS Personas_1 ON PersonasRoles.IdPe' +
      'rsonaRelacionada = Personas_1.IdPersona'#13#10'INNER JOIN Roles ON Per' +
      'sonasRoles.IdRol = Roles.IdRol '#13#10'INNER JOIN RolesTipos ON Roles.' +
      'IdRolTipo = RolesTipos.IdRolTipo'#13#10'WHERE (RolesTipos.IdRolTipo = ' +
      '2)'
    Parameters = <>
    Left = 88
    Top = 136
  end
  object adodsCuentaBacarias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdCuentaBancaria, CuentaBancaria FROM CuentasBancarias'#13#10
    Parameters = <>
    Left = 88
    Top = 192
  end
  object adodsCuentaBacariasLkp: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CuentasBancarias.IdCuentaBancaria, CuentasBancarias.IdPer' +
      'sona, Bancos.Nombre AS Banco, Monedas.Identificador AS Moneda, C' +
      'uentasBancarias.CuentaBancaria'#13#10'FROM CuentasBancarias'#13#10'INNER JOI' +
      'N Bancos ON CuentasBancarias.IdBanco = Bancos.IdBanco'#13#10'INNER JOI' +
      'N Monedas ON CuentasBancarias.IdMoneda = Monedas.IdMoneda'#13#10'WHERE' +
      ' CuentasBancarias.IdPersona = :IdPersona'#13#10
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 232
    Top = 192
  end
end
