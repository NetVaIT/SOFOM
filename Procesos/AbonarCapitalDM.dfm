inherited dmAbonarCapital: TdmAbonarCapital
  OldCreateOrder = True
  object adoqAnexo: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SaldoInsoluto, MontoVencido'
      'FROM Anexos'
      'WHERE IdAnexo = :IdAnexo'
      '')
    Left = 216
    Top = 72
    object adoqAnexoSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      Precision = 18
      Size = 6
    end
    object adoqAnexoMontoVencido: TFMTBCDField
      FieldName = 'MontoVencido'
      Precision = 18
      Size = 6
    end
  end
  object adopCXCAbonarCapital: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarAbonarCapital;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ImporteCapital'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 136
  end
  object adoqAnexosSel: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Contratos.IdContrato, Contratos.IdPersona, Contratos.IdCo' +
        'ntratoTipo, Anexos.IdAnexo,'
      
        'Contratos.Identificador AS Contrato, Anexos.Identificador AS Ane' +
        'xo, Personas.RazonSocial AS Cliente, Anexos.SaldoInsoluto'
      'FROM Anexos '
      'INNER JOIN Contratos ON Anexos.IdContrato = Contratos.IdContrato'
      'INNER JOIN Personas ON Contratos.IdPersona = Personas.IdPersona'
      'WHERE (Anexos.MontoVencido = 0) AND (Anexos.SaldoInsoluto > 0)')
    Left = 120
    Top = 80
    object adoqAnexosSelIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
      Visible = False
    end
    object adoqAnexosSelIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adoqAnexosSelIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adoqAnexosSelIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
      Visible = False
    end
    object adoqAnexosSelContrato: TStringField
      FieldName = 'Contrato'
    end
    object adoqAnexosSelAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adoqAnexosSelCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adoqAnexosSelSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
  end
end
