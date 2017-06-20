inherited DMCuentasBancariasMovimientos: TDMCuentasBancariasMovimientos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select CB.*  , B.Nombre as Banco   from CuentasBancarias CB'#13#10'inn' +
      'er join Bancos B On B.idBanco=CB.IdBanco'#13#10' inner join  Personas ' +
      'P on P.IdPersona=CB.IdPersona '#13#10#13#10'and P.IdRolTipo =9 -- Emisor'
    Left = 64
    object adodsMasterIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIdCuentaBancariaTipo: TIntegerField
      FieldName = 'IdCuentaBancariaTipo'
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object adodsMasterBanco: TStringField
      FieldName = 'Banco'
      Size = 50
    end
    object adodsMasterCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
    object adodsMasterClabeInterbancaria: TStringField
      FieldName = 'ClabeInterbancaria'
      Size = 18
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object adodsMasterSaldoCuenta: TFMTBCDField
      FieldName = 'SaldoCuenta'
      Precision = 18
      Size = 6
    end
    object adodsMasterIdCuentaBancariaEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaEstatus'
    end
  end
  object ADODtStMovimientosXCtaBan: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * from CuentasBancariasEstadosCuentas '#13#10'where idCuentaBan' +
      'caria =:IdCuentaBancaria'
    Parameters = <
      item
        Name = 'IdCuentaBancaria'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 112
    object ADODtStMovimientosXCtaBanIdCuentaBancariaEstadoCuenta: TAutoIncField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
      ReadOnly = True
    end
    object ADODtStMovimientosXCtaBanIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
    end
    object ADODtStMovimientosXCtaBanFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStMovimientosXCtaBanConcepto: TStringField
      FieldName = 'Concepto'
      Size = 350
    end
    object ADODtStMovimientosXCtaBanMovimiento: TFMTBCDField
      FieldName = 'Movimiento'
      Precision = 18
      Size = 6
    end
    object ADODtStMovimientosXCtaBanTipoMovimiento: TStringField
      FieldName = 'TipoMovimiento'
      Size = 1
    end
    object ADODtStMovimientosXCtaBanSaldoCuenta: TFMTBCDField
      FieldName = 'SaldoCuenta'
      Precision = 18
      Size = 6
    end
    object ADODtStMovimientosXCtaBanSaldoRegistro: TFMTBCDField
      FieldName = 'SaldoRegistro'
      Precision = 18
      Size = 6
    end
    object ADODtStMovimientosXCtaBanHash: TStringField
      FieldName = 'Hash'
      Size = 200
    end
    object ADODtStMovimientosXCtaBanIdCuentaBancariaRegistroEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaRegistroEstatus'
    end
    object ADODtStMovimientosXCtaBanObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
  end
end
