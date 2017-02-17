inherited dmAbonarCapital: TdmAbonarCapital
  inherited ActionList: TActionList
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
  end
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
    Left = 184
    Top = 160
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
end
