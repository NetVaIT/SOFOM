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
    object dxmSegmentosValorPresente: TExtendedField
      DisplayLabel = 'Valor presente'
      FieldName = 'ValorPresente'
      currency = True
      Precision = 19
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
    object dxmSegmentosPagoMensual: TExtendedField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 19
    end
    object dxmSegmentosValorFuturo: TExtendedField
      DisplayLabel = 'Valor futuro'
      FieldName = 'ValorFuturo'
      currency = True
      Precision = 19
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
    object dxmAmortizacionesSaldoInicial: TExtendedField
      DisplayLabel = 'Saldo inicial'
      FieldName = 'SaldoInicial'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesTasaAnual: TExtendedField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      Precision = 19
    end
    object dxmAmortizacionesPago: TExtendedField
      FieldName = 'Pago'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesCapital: TExtendedField
      FieldName = 'Capital'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesCapitalImpuesto: TExtendedField
      DisplayLabel = 'IVA del capital'
      FieldName = 'CapitalImpuesto'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesCapitalTotal: TExtendedField
      DisplayLabel = 'Capital IVA incluido'
      FieldName = 'CapitalTotal'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesInteres: TExtendedField
      FieldName = 'Interes'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesInteresImpuesto: TExtendedField
      DisplayLabel = 'IVA de intereses'
      FieldName = 'InteresImpuesto'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesInteresTotal: TExtendedField
      DisplayLabel = 'Interes con IVA'
      FieldName = 'InteresTotal'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesSaldoFinal: TExtendedField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoFinal'
      currency = True
      Precision = 19
    end
    object dxmAmortizacionesPagoTotal: TExtendedField
      FieldName = 'PagoTotal'
      currency = True
      Precision = 19
    end
  end
end
