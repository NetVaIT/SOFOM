inherited dmAnexosSegmentos: TdmAnexosSegmentos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoSegmento, IdAnexo, Segmento, ValorPresente, TasaAn' +
      'ual, PeriodoInicial, PeriodoFinal, PagoMensual, ValorFuturo from' +
      ' AnexosSegmentos'#13#10'where IdAnexo = :IdAnexo'
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdAnexoSegmento: TIntegerField
      FieldName = 'IdAnexoSegmento'
      Visible = False
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsMasterSegmento: TIntegerField
      FieldName = 'Segmento'
    end
    object adodsMasterValorPresente: TFMTBCDField
      DisplayLabel = 'Valor presente'
      FieldName = 'ValorPresente'
      Precision = 18
      Size = 6
    end
    object adodsMasterPeriodoInicial: TIntegerField
      DisplayLabel = 'Periodo inicial'
      FieldName = 'PeriodoInicial'
    end
    object adodsMasterPeriodoFinal: TIntegerField
      DisplayLabel = 'Periodo final'
      FieldName = 'PeriodoFinal'
    end
    object adodsMasterTasaAnual: TFloatField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
    end
    object adodsMasterPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      Precision = 18
      Size = 6
    end
    object adodsMasterValorFuturo: TFMTBCDField
      DisplayLabel = 'Valor futuro'
      FieldName = 'ValorFuturo'
      Precision = 18
      Size = 6
    end
  end
end
