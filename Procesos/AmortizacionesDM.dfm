inherited dmAmortizaciones: TdmAmortizaciones
  OldCreateOrder = True
  Width = 474
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
  end
  inherited ActionList: TActionList
    object actCalcular: TAction
      Caption = 'Calcular'
      ImageIndex = 13
      OnExecute = actCalcularExecute
    end
  end
  object dxmSegmentos: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0800000004000000030010004964416E65786F5365
      676D656E746F0004000000030008004964416E65786F00040000000300090053
      65676D656E746F002200000018000F004D6F6E746F46696E616E636961720022
      00000008000A0054617361416E75616C000400000003000600506C617A6F0022
      00000018000C005061676F4D656E7375616C00080000000B000D004665636861
      496E696369616C00}
    SortOptions = []
    SortedField = 'Segmento'
    Left = 72
    Top = 80
    object dxmSegmentosSegmento: TIntegerField
      FieldName = 'Segmento'
    end
    object dxmSegmentosValorPresente: TFloatField
      DisplayLabel = 'Valor presente'
      FieldName = 'ValorPresente'
      currency = True
    end
    object dxmSegmentosPlazoIni: TIntegerField
      FieldName = 'PlazoIni'
    end
    object dxmSegmentosPlazoFin: TIntegerField
      FieldName = 'PlazoFin'
    end
    object dxmSegmentosTasaAnual: TFloatField
      FieldName = 'TasaAnual'
    end
    object dxmSegmentosPagoMensual: TFloatField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
    end
    object dxmSegmentosValorFuturo: TFloatField
      DisplayLabel = 'Valor futuro'
      FieldName = 'ValorFuturo'
      currency = True
    end
  end
  object dxmAmortizaciones: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0E00000004000000030009005365676D656E746F00
      0400000003000800506572696F646F00080000000B0006004665636861000A00
      00001C000D0053616C646F496E696369616C000A0000001C000A005461736141
      6E75616C000A0000001C0005005061676F000A0000001C000800436170697461
      6C000A0000001C0010004361706974616C496D70756573746F000A0000001C00
      0D004361706974616C546F74616C000A0000001C000800496E7465726573000A
      0000001C001000496E7465726573496D70756573746F000A0000001C000D0049
      6E7465726573546F74616C000A0000001C000B0053616C646F46696E616C000A
      0000001C000A005061676F546F74616C00}
    SortOptions = []
    Left = 72
    Top = 144
    object dxmAmortizacionesSegmento: TIntegerField
      FieldName = 'Segmento'
    end
    object dxmAmortizacionesPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object dxmAmortizacionesFechaCorte: TDateTimeField
      FieldName = 'FechaCorte'
    end
    object dxmAmortizacionesFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object dxmAmortizacionesTasaAnual: TFloatField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
    end
    object dxmAmortizacionesSaldoInicial: TFloatField
      DisplayLabel = 'Saldo inicial'
      FieldName = 'SaldoInicial'
      currency = True
    end
    object dxmAmortizacionesCapital: TFloatField
      FieldName = 'Capital'
      currency = True
    end
    object dxmAmortizacionesCapitalImpuesto: TFloatField
      DisplayLabel = 'IVA del capital'
      FieldName = 'CapitalImpuesto'
      currency = True
    end
    object dxmAmortizacionesCapitalTotal: TFloatField
      DisplayLabel = 'Capital IVA incluido'
      FieldName = 'CapitalTotal'
      currency = True
    end
    object dxmAmortizacionesInteres: TFloatField
      FieldName = 'Interes'
      currency = True
    end
    object dxmAmortizacionesInteresImpuesto: TFloatField
      DisplayLabel = 'IVA de intereses'
      FieldName = 'InteresImpuesto'
      currency = True
    end
    object dxmAmortizacionesInteresTotal: TFloatField
      DisplayLabel = 'Interes con IVA'
      FieldName = 'InteresTotal'
      currency = True
    end
    object dxmAmortizacionesImpactoISR: TFloatField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      currency = True
    end
    object dxmAmortizacionesPago: TFloatField
      FieldName = 'Pago'
      currency = True
    end
    object dxmAmortizacionesPagoTotal: TFloatField
      DisplayLabel = 'Pago del periodo'
      FieldName = 'PagoTotal'
      currency = True
    end
    object dxmAmortizacionesSaldoFinal: TFloatField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoFinal'
      currency = True
    end
  end
  object adocInsAnexosAmrtizaciones: TADOCommand
    CommandText = 
      'INSERT INTO AnexosAmortizaciones (IdAnexoCredito,IdAnexoSegmento' +
      ',Periodo,FechaCorte,FechaVencimiento,TasaAnual,SaldoInicial,Pago' +
      ',Capital,CapitalImpuesto,CapitalTotal,Interes,InteresImpuesto,In' +
      'teresTotal,ImpactoISR,PagoTotal,SaldoFinal)'#13#10'VALUES (:IdAnexoCre' +
      'dito,:IdAnexoSegmento,:Periodo,:FechaCorte,:FechaVencimiento,:Ta' +
      'saAnual,:SaldoInicial,:Pago,:Capital,:CapitalImpuesto,:CapitalTo' +
      'tal,:Interes,:InteresImpuesto,:InteresTotal,:ImpactoISR,:PagoTot' +
      'al,:SaldoFinal)'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdAnexoCredito'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAnexoSegmento'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Periodo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FechaCorte'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FechaVencimiento'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'TasaAnual'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'SaldoInicial'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Pago'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Capital'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'CapitalImpuesto'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'CapitalTotal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Interes'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'InteresImpuesto'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'InteresTotal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'ImpactoISR'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'PagoTotal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'SaldoFinal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end>
    Left = 72
    Top = 200
  end
  object adoqCountAmortizaciones: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdAnexoCredito'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*) AS Total FROM AnexosAmortizaciones'
      'WHERE IdAnexoCredito = :IdAnexoCredito')
    Left = 64
    Top = 272
    object adoqCountAmortizacionesTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object adoqAnexosAmortizaciones: TADOQuery
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
      
        'SELECT        AnexosAmortizaciones.IdAnexoAmortizacion, AnexosAm' +
        'ortizaciones.IdAnexoCredito, AnexosAmortizaciones.IdAnexoSegment' +
        'o, AnexosAmortizaciones.Periodo, AnexosAmortizaciones.FechaCorte' +
        ','
      
        '                         AnexosAmortizaciones.FechaVencimiento, ' +
        'AnexosAmortizaciones.TasaAnual, AnexosAmortizaciones.SaldoInicia' +
        'l, AnexosAmortizaciones.Pago, AnexosAmortizaciones.Capital,'
      
        '                         AnexosAmortizaciones.CapitalImpuesto, A' +
        'nexosAmortizaciones.CapitalTotal, AnexosAmortizaciones.Interes, ' +
        'AnexosAmortizaciones.InteresImpuesto, AnexosAmortizaciones.Inter' +
        'esTotal,'
      
        '                         AnexosAmortizaciones.ImpactoISR, Anexos' +
        'Amortizaciones.PagoTotal, AnexosAmortizaciones.SaldoFinal, Anexo' +
        'sAmortizaciones.FechaMoratorio,'
      
        '                         AnexosAmortizaciones.Moratorio, AnexosA' +
        'mortizaciones.MoratorioImpuesto'
      'FROM v_AnexosAmortizaciones AS AnexosAmortizaciones'
      
        'INNER JOIN AnexosCreditos ON AnexosAmortizaciones.IdAnexoCredito' +
        ' = AnexosCreditos.IdAnexoCredito'
      'WHERE AnexosCreditos.IdAnexoCreditoEstatus = 1'
      'AND AnexosAmortizaciones.PagoSaldo > 0.01'
      'AND AnexosCreditos.IdAnexo = :IdAnexo')
    Left = 216
    Top = 88
    object adoqAnexosAmortizacionesIdAnexoAmortizacion: TAutoIncField
      FieldName = 'IdAnexoAmortizacion'
      ReadOnly = True
    end
    object adoqAnexosAmortizacionesIdAnexoCredito: TIntegerField
      FieldName = 'IdAnexoCredito'
    end
    object adoqAnexosAmortizacionesIdAnexoSegmento: TIntegerField
      FieldName = 'IdAnexoSegmento'
    end
    object adoqAnexosAmortizacionesPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object adoqAnexosAmortizacionesFechaCorte: TDateTimeField
      FieldName = 'FechaCorte'
    end
    object adoqAnexosAmortizacionesFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object adoqAnexosAmortizacionesTasaAnual: TBCDField
      FieldName = 'TasaAnual'
      Precision = 19
    end
    object adoqAnexosAmortizacionesSaldoInicial: TFMTBCDField
      FieldName = 'SaldoInicial'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesPago: TFMTBCDField
      FieldName = 'Pago'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesCapital: TFMTBCDField
      FieldName = 'Capital'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesCapitalImpuesto: TFMTBCDField
      FieldName = 'CapitalImpuesto'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesCapitalTotal: TFMTBCDField
      FieldName = 'CapitalTotal'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesInteres: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesInteresImpuesto: TFMTBCDField
      FieldName = 'InteresImpuesto'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesInteresTotal: TFMTBCDField
      FieldName = 'InteresTotal'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesImpactoISR: TFMTBCDField
      FieldName = 'ImpactoISR'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesPagoTotal: TFMTBCDField
      FieldName = 'PagoTotal'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesSaldoFinal: TFMTBCDField
      FieldName = 'SaldoFinal'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesFechaMoratorio: TDateTimeField
      FieldName = 'FechaMoratorio'
    end
    object adoqAnexosAmortizacionesMoratorio: TFMTBCDField
      FieldName = 'Moratorio'
      Precision = 18
      Size = 6
    end
    object adoqAnexosAmortizacionesMoratorioImpuesto: TFMTBCDField
      FieldName = 'MoratorioImpuesto'
      Precision = 18
      Size = 6
    end
  end
  object dxmAnexosAmortizaciones: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F16000000040000000C0014004964416E65786F416D
      6F7274697A6163696F6E000400000003000F004964416E65786F437265646974
      6F0004000000030010004964416E65786F5365676D656E746F00040000000300
      0800506572696F646F00080000000B000B004665636861436F72746500080000
      000B001100466563686156656E63696D69656E746F002200000008000A005461
      7361416E75616C002200000018000D0053616C646F496E696369616C00220000
      00180005005061676F0022000000180008004361706974616C00220000001800
      10004361706974616C496D70756573746F002200000018000D00436170697461
      6C546F74616C002200000018000800496E746572657300220000001800100049
      6E7465726573496D70756573746F002200000018000D00496E7465726573546F
      74616C002200000018000B00496D706163746F495352002200000018000A0050
      61676F546F74616C002200000018000B0053616C646F46696E616C0008000000
      0B000F0046656368614D6F7261746F72696F002200000018000E004D6F726174
      6F72696F42617365002200000018000A004D6F7261746F72696F002200000018
      0012004D6F7261746F72696F496D70756573746F00}
    SortOptions = []
    Left = 216
    Top = 144
    object dxmAnexosAmortizacionesIdAnexoAmortizacion: TAutoIncField
      DisplayWidth = 10
      FieldName = 'IdAnexoAmortizacion'
    end
    object dxmAnexosAmortizacionesIdAnexoCredito: TIntegerField
      DisplayWidth = 9
      FieldName = 'IdAnexoCredito'
    end
    object dxmAnexosAmortizacionesIdAnexoSegmento: TIntegerField
      DisplayWidth = 8
      FieldName = 'IdAnexoSegmento'
    end
    object dxmAnexosAmortizacionesPeriodo: TIntegerField
      DisplayWidth = 9
      FieldName = 'Periodo'
    end
    object dxmAnexosAmortizacionesFechaCorte: TDateTimeField
      DisplayWidth = 16
      FieldName = 'FechaCorte'
    end
    object dxmAnexosAmortizacionesFechaVencimiento: TDateTimeField
      DisplayWidth = 22
      FieldName = 'FechaVencimiento'
    end
    object dxmAnexosAmortizacionesTasaAnual: TBCDField
      DisplayWidth = 12
      FieldName = 'TasaAnual'
    end
    object dxmAnexosAmortizacionesSaldoInicial: TFMTBCDField
      DisplayWidth = 18
      FieldName = 'SaldoInicial'
    end
    object dxmAnexosAmortizacionesPago: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'Pago'
    end
    object dxmAnexosAmortizacionesCapital: TFMTBCDField
      DisplayWidth = 21
      FieldName = 'Capital'
    end
    object dxmAnexosAmortizacionesCapitalImpuesto: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'CapitalImpuesto'
    end
    object dxmAnexosAmortizacionesCapitalTotal: TFMTBCDField
      DisplayWidth = 17
      FieldName = 'CapitalTotal'
    end
    object dxmAnexosAmortizacionesInteres: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'Interes'
    end
    object dxmAnexosAmortizacionesInteresImpuesto: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'InteresImpuesto'
    end
    object dxmAnexosAmortizacionesInteresTotal: TFMTBCDField
      DisplayWidth = 17
      FieldName = 'InteresTotal'
    end
    object dxmAnexosAmortizacionesImpactoISR: TFMTBCDField
      DisplayWidth = 12
      FieldName = 'ImpactoISR'
    end
    object dxmAnexosAmortizacionesPagoTotal: TFMTBCDField
      DisplayWidth = 18
      FieldName = 'PagoTotal'
    end
    object dxmAnexosAmortizacionesSaldoFinal: TFMTBCDField
      DisplayWidth = 20
      FieldName = 'SaldoFinal'
    end
    object dxmAnexosAmortizacionesFechaMoratorio: TDateTimeField
      DisplayWidth = 22
      FieldName = 'FechaMoratorio'
    end
    object dxmAnexosAmortizacionesMoratorioBase: TFMTBCDField
      DisplayWidth = 14
      FieldName = 'MoratorioBase'
    end
    object dxmAnexosAmortizacionesMoratorio: TFMTBCDField
      DisplayWidth = 12
      FieldName = 'Moratorio'
    end
    object dxmAnexosAmortizacionesMoratorioImpuesto: TFMTBCDField
      DisplayWidth = 18
      FieldName = 'MoratorioImpuesto'
    end
  end
  object adoqCredito: TADOQuery
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
      
        'SELECT Anexos.Fecha AS FechaPrestamo, AnexosCreditos.IdAnexoCred' +
        'ito, AnexosCreditos.FechaCorte,'
      
        'AnexosCreditos.FechaVencimiento, AnexosCreditos.Plazo, AnexosCre' +
        'ditos.TasaAnual, AnexosCreditos.ValorResidual,'
      'AnexosCreditos.ImpactoISR, AnexosCreditos.PagoMensual'
      'FROM AnexosCreditos'
      'INNER JOIN Anexos ON AnexosCreditos.IdAnexo = Anexos.IdAnexo'
      'WHERE AnexosCreditos.IdAnexoCreditoEstatus = 1'
      'AND Anexos.IdAnexo = :IdAnexo')
    Left = 216
    Top = 272
    object adoqCreditoIdAnexoCredito: TAutoIncField
      FieldName = 'IdAnexoCredito'
      ReadOnly = True
    end
    object adoqCreditoFechaPrestamo: TDateTimeField
      FieldName = 'FechaPrestamo'
    end
    object adoqCreditoFechaCorte: TDateTimeField
      FieldName = 'FechaCorte'
    end
    object adoqCreditoFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object adoqCreditoPlazo: TIntegerField
      FieldName = 'Plazo'
    end
    object adoqCreditoTasaAnual: TBCDField
      FieldName = 'TasaAnual'
      Precision = 19
    end
    object adoqCreditoValorResidual: TFMTBCDField
      FieldName = 'ValorResidual'
      Precision = 18
      Size = 6
    end
    object adoqCreditoImpactoISR: TFMTBCDField
      FieldName = 'ImpactoISR'
      Precision = 18
      Size = 6
    end
    object adoqCreditoPagoMensual: TFMTBCDField
      FieldName = 'PagoMensual'
      Precision = 18
      Size = 6
    end
  end
  object adocUptAnexosAmrtizaciones: TADOCommand
    CommandText = 
      'UPDATE AnexosAmortizaciones'#13#10'   SET '#13#10'SaldoInicial = :SaldoInici' +
      'al,'#13#10'Pago = :Pago,'#13#10'Capital = :Capital,'#13#10'CapitalImpuesto = :Capi' +
      'talImpuesto,'#13#10'CapitalTotal = :CapitalTotal,'#13#10'Interes = :Interes,' +
      #13#10'InteresImpuesto = :InteresImpuesto,'#13#10'InteresTotal = :InteresTo' +
      'tal,'#13#10'ImpactoISR = :ImpactoISR,'#13#10'PagoTotal = :PagoTotal,'#13#10'SaldoF' +
      'inal = :SaldoFinal'#13#10'WHERE IdAnexoAmortizacion = :IdAnexoAmortiza' +
      'cion'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'SaldoInicial'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Pago'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Capital'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'CapitalImpuesto'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'CapitalTotal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'Interes'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'InteresImpuesto'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'InteresTotal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'ImpactoISR'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'PagoTotal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'SaldoFinal'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'IdAnexoAmortizacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 224
    Top = 208
  end
end
