inherited dmrptReporteCartera: TdmrptReporteCartera
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnCalcFields = adodsMasterCalcFields
    CommandText = 
      'SElect IdAnexo, Contrato, Anexo, CLiente, Tc, Plazo, Total as To' +
      'tal, '#13#10'CobradoCXC as CobradoCXC, TotalPorCobrar as TotalPorCobra' +
      'r, Saldopendiente  as Saldopendiente,'#13#10' TotalVigente  as TotalVi' +
      'gente,'#13#10#13#10' TotalPorVencer + ValorResidual as SaldoTotal,'#13#10'TotalP' +
      'orVencer as SaldoAmortizaciones,'#13#10' TotalCobradoVencido as TotalC' +
      'obradoVencido,'#13#10' Total0A30,'#13#10' VencidoA30 as VencidoA30, VencidoA' +
      '60 as VencidoA60, VencidoA90 as VencidoA90, '#13#10'VencidoMas120 as V' +
      'encidoMas120,'#13#10'DiasRetraso, Cantidad, atrasados, atiempo, Cuotas' +
      'Pendientes, DiasPagoTotal, '#13#10'DiasPagoRetraso, PorcentajeAtrasado' +
      's, PorcentajeATiempo'#13#10', ValorResidual, SaldoInsoluto, SaldoTotal' +
      ' as SaldoTBD '#13#10#13#10#13#10'from vw_ReporteCarteraCompleto'#13#10'order by  Tot' +
      'alCobradoVencido desc, TotalPorVencer desc'
    Left = 40
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object adodsMasterContrato: TStringField
      FieldName = 'Contrato'
    end
    object adodsMasterAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adodsMasterCLiente: TStringField
      FieldName = 'CLiente'
      Size = 300
    end
    object adodsMasterTc: TStringField
      FieldName = 'Tc'
      Size = 5
    end
    object adodsMasterPlazo: TIntegerField
      FieldName = 'Plazo'
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '###,###.##'
      Precision = 38
      Size = 6
    end
    object adodsMasterCobradoCXC: TFMTBCDField
      FieldName = 'CobradoCXC'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsMasterTotalPorCobrar: TFMTBCDField
      FieldName = 'TotalPorCobrar'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterSaldopendiente: TFMTBCDField
      FieldName = 'Saldopendiente'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterTotalCobradoVencido: TFMTBCDField
      DisplayLabel = 'Total Cobrado Vencido'
      FieldName = 'TotalCobradoVencido'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterTotalVigente: TFMTBCDField
      DisplayLabel = 'Vigente (0- 30 d'#237'as)'
      FieldName = 'TotalVigente'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterVencidoA30: TFMTBCDField
      FieldName = 'VencidoA30'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterVencidoA60: TFMTBCDField
      FieldName = 'VencidoA60'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterVencidoA90: TFMTBCDField
      FieldName = 'VencidoA90'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterVencidoMas120: TFMTBCDField
      FieldName = 'VencidoMas120'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterDiasRetraso: TIntegerField
      FieldName = 'DiasRetraso'
      ReadOnly = True
    end
    object adodsMasterCantidad: TIntegerField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
    object adodsMasteratrasados: TIntegerField
      FieldName = 'atrasados'
      ReadOnly = True
    end
    object adodsMasteratiempo: TIntegerField
      FieldName = 'atiempo'
      ReadOnly = True
    end
    object adodsMasterCuotasPendientes: TIntegerField
      FieldName = 'CuotasPendientes'
      ReadOnly = True
    end
    object adodsMasterDiasPagoTotal: TIntegerField
      FieldName = 'DiasPagoTotal'
      ReadOnly = True
    end
    object adodsMasterDiasPagoRetraso: TIntegerField
      FieldName = 'DiasPagoRetraso'
      ReadOnly = True
    end
    object adodsMasterPorcentajeAtrasados: TFMTBCDField
      FieldName = 'PorcentajeAtrasados'
      ReadOnly = True
      Precision = 26
      Size = 12
    end
    object adodsMasterPorcentajeATiempo: TFMTBCDField
      FieldName = 'PorcentajeATiempo'
      ReadOnly = True
      Precision = 26
      Size = 12
    end
    object adodsMasterCuotaMostrar: TStringField
      FieldKind = fkCalculated
      FieldName = 'CuotaMostrar'
      Size = 15
      Calculated = True
    end
    object adodsMasterSaldoTotal: TFMTBCDField
      FieldName = 'SaldoTotal'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterValorResidual: TFMTBCDField
      FieldName = 'ValorResidual'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoTBD: TFMTBCDField
      FieldName = 'SaldoTBD'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoAmortizaciones: TFMTBCDField
      FieldName = 'SaldoAmortizaciones'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
    object adodsMasterTotal0A30: TFMTBCDField
      FieldName = 'Total0A30'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
      Precision = 38
      Size = 6
    end
  end
  inherited ActionList: TActionList
    object ActPDFCartera: TAction
      Caption = 'ActPDFCartera'
      Hint = 'Reporte de Cartera'
      OnExecute = ActPDFCarteraExecute
    end
    object ActPDFHojaControl: TAction
      Caption = 'PDF Hoja Control'
      OnExecute = ActPDFHojaControlExecute
    end
    object ActPDFAmortizaYPago: TAction
      Caption = 'ActPDFAmortizaYPago'
      Hint = 'Hoja Amortizaciones y Pagos'
      OnExecute = ActPDFAmortizaYPagoExecute
    end
    object ActAmorYPago2: TAction
      Caption = 'Amortizaciones, Facturas y Pagos V2'
      Hint = 'Resumen Facturaci'#243'n y Pagos'
      OnExecute = ActAmorYPago2Execute
    end
  end
end
