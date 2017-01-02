﻿inherited dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT     Cc.IdCuentaXCobrar, Cc.Fecha, Cc.IdPersona, cc.IdCuen' +
      'taXCobrarEstatus, Cc.Total, CC.Saldo, '#13#10'                      PR' +
      '.RazonSocial AS Cliente, CASE WHEN getdate() - Cc.Fecha < 30 THE' +
      'N Cc.Saldo END AS '#39'Vigentes'#39','#13#10'                       CASE WHEN ' +
      '(getdate() - Cc.Fecha < 60 ) AND (getdate() - Cc.Fecha >= 30 ) '#13 +
      #10'                      THEN Cc.Saldo END AS '#39'Vencidos a 30 d'#237'as'#39 +
      ', CASE WHEN (getdate() - Cc.Fecha < 90 ) AND (getdate() '#13#10'      ' +
      '                - Cc.Fecha >= 60 ) THEN Cc.Saldo END AS '#39'Vencido' +
      's a 60 d'#237'as'#39', CASE WHEN (getdate() - Cc.Fecha >= 90 ) AND '#13#10'    ' +
      '                  (getdate() - Cc.Fecha < 120 ) THEN Cc.Saldo EN' +
      'D AS '#39'Vencidos a 90 d'#237'as'#39', CASE WHEN getdate() '#13#10'               ' +
      '       - Cc.Fecha >= 120 THEN Cc.Saldo END AS '#39'Vencidos m'#225's de 9' +
      '0 d'#237'as'#39#13#10'FROM         CuentasXCobrar AS Cc INNER JOIN'#13#10'         ' +
      '             Personas AS PR ON Cc.IdPersona = PR.IdPersona'#13#10' WHE' +
      'RE    (Cc.Saldo > 0) --  AND  -- mientras para que muestre todo'#13 +
      #10'    '#13#10'ORDER BY Cliente'#13#10
    object adodsMasterIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No. CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object adodsMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsMasterVigentes: TFMTBCDField
      FieldName = 'Vigentes'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosa30días: TFMTBCDField
      FieldName = 'Vencidos a 30 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosa60días: TFMTBCDField
      FieldName = 'Vencidos a 60 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosa90días: TFMTBCDField
      FieldName = 'Vencidos a 90 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosmásde90días: TFMTBCDField
      FieldName = 'Vencidos m'#225's de 90 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
  end
end
