inherited dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT     Cc.IdCuentaXCobrar,cc.IDAnexo,a.Identificador as Anex' +
      'o, A.IDContrato, Con.IdContratoTipo,Con.Identificador as Contrat' +
      'o,'#13#10' CT.Identificador as TC, ct.Descripcion as TipoContrato, Cc.' +
      'Fecha, Cc.IdPersona, cc.IdCuentaXCobrarEstatus, Cc.Total, CC.Sal' +
      'do, '#13#10'                      PR.RazonSocial AS Cliente, CASE WHEN' +
      ' [dbo].getdateAux() - Cc.Fecha <= 30 THEN Cc.Saldo END AS '#39'Vigen' +
      'tes'#39','#13#10'                    CASE WHEN  [dbo].getdateAux() - Cc.Fe' +
      'cha >= 1 THEN Cc.Saldo END as '#39'Saldo Total Vencido'#39', -- abr28/17' +
      #13#10'                       CASE WHEN ( [dbo].getdateAux() - Cc.Fec' +
      'ha <= 60 ) AND ( [dbo].getdateAux() - Cc.Fecha > 30 ) '#13#10'        ' +
      '              THEN Cc.Saldo END AS '#39'Vencidos a 30 d'#237'as'#39', CASE WH' +
      'EN ( [dbo].getdateAux() - Cc.Fecha <= 90 ) AND ( [dbo].getdateAu' +
      'x() '#13#10'                      - Cc.Fecha > 60 ) THEN Cc.Saldo END ' +
      'AS '#39'Vencidos a 60 d'#237'as'#39', CASE WHEN ( [dbo].getdateAux() - Cc.Fec' +
      'ha > 90 ) AND '#13#10'                      ( [dbo].getdateAux() - Cc.' +
      'Fecha <= 120 ) THEN Cc.Saldo END AS '#39'Vencidos a 90 d'#237'as'#39', CASE W' +
      'HEN  [dbo].getdateAux() '#13#10'                      - Cc.Fecha > 120' +
      ' THEN Cc.Saldo END AS '#39'Vencidos m'#225's de 120 d'#237'as'#39#13#10'FROM         C' +
      'uentasXCobrar AS Cc INNER JOIN'#13#10'                      Personas A' +
      'S PR ON Cc.IdPersona = PR.IdPersona'#13#10'             left join  Ane' +
      'xos As A ON Cc.IdAnexo=A.IdAnexo       -- Por si hubiese algo si' +
      'n anexo.. aunque no deber'#237'a'#13#10'             inner join Contratos a' +
      's Con ON A.IdContrato=Con.IdContrato'#13#10'             inner join Co' +
      'ntratosTipos as CT On Con.IdContratoTipo =CT.IdContratoTipo'#13#10' WH' +
      'ERE    (Cc.Saldo > 0) --  AND  -- mientras para que muestre todo' +
      #13#10'    '#13#10'ORDER BY Cliente'
    Left = 40
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
      Precision = 18
      Size = 6
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
  end
end
