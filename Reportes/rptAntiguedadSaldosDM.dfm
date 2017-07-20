﻿inherited dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT     Cc.IdCuentaXCobrar,cc.IDAnexo,a.Identificador as Anex' +
      'o, A.IDContrato, Con.IdContratoTipo,Con.Identificador as Contrat' +
      'o,'#13#10' CT.Identificador as TC, ct.Descripcion as TipoContrato, CC.' +
      'dESCRIPCION as CobroX, Cc.Fecha, cc.FechaVencimiento,  Cc.IdPers' +
      'ona, cc.IdCuentaXCobrarEstatus, Cc.Total, CC.Saldo, '#13#10'          ' +
      '            PR.RazonSocial AS Cliente, CASE WHEN [dbo].getdateAu' +
      'x() -  cc.FechaVencimiento<= 30 THEN Cc.Saldo END AS '#39'Vigentes'#39',' +
      #13#10'                    CASE WHEN  [dbo].getdateAux() -  cc.FechaV' +
      'encimiento>= 0 THEN Cc.Saldo END as '#39'Saldo Total Vencido'#39', -- ab' +
      'r28/17 --jun19/17 ap los del dia'#13#10'                       CASE WH' +
      'EN ( [dbo].getdateAux() -  cc.FechaVencimiento<= 60 ) AND ( [dbo' +
      '].getdateAux() -  cc.FechaVencimiento> 30 ) '#13#10'                  ' +
      '    THEN Cc.Saldo END AS '#39'Vencidos a 30 d'#237'as'#39', CASE WHEN ( [dbo]' +
      '.getdateAux() -  cc.FechaVencimiento<= 90 ) AND ( [dbo].getdateA' +
      'ux() '#13#10'                      -  cc.FechaVencimiento> 60 ) THEN C' +
      'c.Saldo END AS '#39'Vencidos a 60 d'#237'as'#39', CASE WHEN ( [dbo].getdateAu' +
      'x() -  cc.FechaVencimiento> 90 ) AND '#13#10'                      ( [' +
      'dbo].getdateAux() -  cc.FechaVencimiento<= 120 ) THEN Cc.Saldo E' +
      'ND AS '#39'Vencidos a 90 d'#237'as'#39', CASE WHEN  [dbo].getdateAux() '#13#10'    ' +
      '                  -  cc.FechaVencimiento> 120 THEN Cc.Saldo END ' +
      'AS '#39'Vencidos m'#225's de 120 d'#237'as'#39' --jun16  cc.FechaVencimiento'#13#10'FROM' +
      '         CuentasXCobrar AS Cc INNER JOIN'#13#10'                      ' +
      'Personas AS PR ON Cc.IdPersona = PR.IdPersona'#13#10'             left' +
      ' join  Anexos As A ON Cc.IdAnexo=A.IdAnexo       -- Por si hubie' +
      'se algo sin anexo.. aunque no deber'#237'a'#13#10'             inner join C' +
      'ontratos as Con ON A.IdContrato=Con.IdContrato'#13#10'             inn' +
      'er join ContratosTipos as CT On Con.IdContratoTipo =CT.IdContrat' +
      'oTipo'#13#10' WHERE    (Cc.Saldo > 0) --  AND  -- mientras para que mu' +
      'estre todo'#13#10'    '#13#10'ORDER BY Cliente'
    Left = 48
    object adodsMasterIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No.CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object adodsMasterIDContrato: TIntegerField
      FieldName = 'IDContrato'
    end
    object adodsMasterContrato: TStringField
      FieldName = 'Contrato'
    end
    object adodsMasterTipoContrato: TStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'TipoContrato'
      Size = 50
    end
    object adodsMasterIDAnexo: TIntegerField
      FieldName = 'IDAnexo'
    end
    object adodsMasterAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
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
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsMasterVigentes: TFMTBCDField
      DisplayLabel = 'Vigentes (1-30 d)'
      FieldName = 'Vigentes'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosa30días: TFMTBCDField
      DisplayLabel = 'Vencidos30 d'#237'as (31-60)'
      FieldName = 'Vencidos a 30 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosa60días: TFMTBCDField
      DisplayLabel = 'Vencidos  60 d'#237'as (61-90 d)'
      FieldName = 'Vencidos a 60 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosa90días: TFMTBCDField
      DisplayLabel = 'Vencidos  90 d'#237'as (91-120 d)'
      FieldName = 'Vencidos a 90 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
    end
    object adodsMasterTC: TStringField
      FieldName = 'TC'
      Size = 5
    end
    object adodsMasterSaldoTotalVencido: TFMTBCDField
      FieldName = 'Saldo Total Vencido'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVencidosmásde120días: TFMTBCDField
      DisplayLabel = 'Vencidos m'#225's de 120 d'#237'as(>120d)'
      FieldName = 'Vencidos m'#225's de 120 d'#237'as'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object adodsMasterCobroX: TStringField
      DisplayWidth = 100
      FieldName = 'CobroX'
      ReadOnly = True
      Size = 100
    end
  end
  inherited ActionList: TActionList
    object ActGenPDFAntigSaldos: TAction
      Caption = 'Antiguedad Saldos PDF'
      OnExecute = ActGenPDFAntigSaldosExecute
    end
    object ActPDFAntiguedadXCliente: TAction
      Caption = 'ActPDFAntiguedadXCliente'
      OnExecute = ActPDFAntiguedadXClienteExecute
    end
    object ActPDFCtasActualCliente: TAction
      Caption = 'Adeudo Actual Cliente'
      Hint = 'Adeudo Actual Cliente'
      OnExecute = ActPDFCtasActualClienteExecute
    end
    object ActPDFXContratosVencidos: TAction
      Caption = 'ActPDFXContratosVencidos'
      OnExecute = ActPDFXContratosVencidosExecute
    end
  end
end
