inherited dmAmortizaciones: TdmAmortizaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
  end
  inherited ActionList: TActionList
    object actCalcular: TAction
      Caption = 'Calcular'
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
    object dxmAmortizacionesFecha: TDateTimeField
      FieldName = 'Fecha'
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
      ',Periodo,Fecha,TasaAnual,SaldoInicial,Pago,Capital,CapitalImpues' +
      'to,CapitalTotal,Interes,InteresImpuesto,InteresTotal,ImpactoISR,' +
      'PagoTotal,SaldoFinal)'#13#10'VALUES (:IdAnexoCredito,:IdAnexoSegmento,' +
      ':Periodo,:Fecha,:TasaAnual,:SaldoInicial,:Pago,:Capital,:Capital' +
      'Impuesto,:CapitalTotal,:Interes,:InteresImpuesto,:InteresTotal,:' +
      'ImpactoISR,:PagoTotal,:SaldoFinal)'#13#10
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
        Name = 'Fecha'
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
    Left = 296
    Top = 168
  end
  object adoqAnexosAmortizaciones: TADOQuery
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
    Left = 296
    Top = 224
    object adoqAnexosAmortizacionesTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
end
