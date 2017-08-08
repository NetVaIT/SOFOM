inherited dmRptPagoAplicacionesMensual: TdmRptPagoAplicacionesMensual
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT IdPersona, Cliente, Anio, ISNULL([1],0) AS Enero, ISNULL(' +
      '[2],0) AS Febrero, ISNULL([3],0) AS Marzo, ISNULL([4],0) AS Abri' +
      'l, ISNULL([5],0) AS Mayo, ISNULL([6],0) AS Junio, '#13#10'ISNULL([7],0' +
      ') AS Julio, ISNULL([8],0) AS Agosto, ISNULL([9],0) AS Septiembre' +
      ', ISNULL([10],0) AS Octubre, ISNULL([11],0) AS Noviembre, ISNULL' +
      '([12],0) AS Diciembre'#13#10'FROM'#13#10'('#13#10'SELECT Personas.IdPersona, Perso' +
      'nas.RazonSocial AS Cliente, YEAR(PagosAplicaciones.FechaAplicaci' +
      'on) AS Anio, MONTH(PagosAplicaciones.FechaAplicacion) AS Mes, Pa' +
      'gosAplicaciones.Importe'#13#10'FROM            PagosAplicaciones '#13#10'INN' +
      'ER JOIN Personas ON PagosAplicaciones.IdPersonaCliente = Persona' +
      's.IdPersona'#13#10'WHERE YEAR(PagosAplicaciones.FechaAplicacion) = :Ye' +
      'ar'#13#10') ps PIVOT (SUM(Importe) FOR Mes IN ([1],[2],[3],[4],[5],[6]' +
      ',[7],[8],[9],[10],[11],[12])) AS pvt'#13#10'ORDER BY Anio, Cliente'
    Parameters = <
      item
        Name = 'Year'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    object adodsReportIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportAnio: TIntegerField
      FieldName = 'Anio'
      ReadOnly = True
    end
    object adodsReportEnero: TFMTBCDField
      FieldName = 'Enero'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportFebrero: TFMTBCDField
      FieldName = 'Febrero'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportMarzo: TFMTBCDField
      FieldName = 'Marzo'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportAbril: TFMTBCDField
      FieldName = 'Abril'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportMayo: TFMTBCDField
      FieldName = 'Mayo'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportJunio: TFMTBCDField
      FieldName = 'Junio'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportJulio: TFMTBCDField
      FieldName = 'Julio'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportAgosto: TFMTBCDField
      FieldName = 'Agosto'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportSeptiembre: TFMTBCDField
      FieldName = 'Septiembre'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportOctubre: TFMTBCDField
      FieldName = 'Octubre'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportNoviembre: TFMTBCDField
      FieldName = 'Noviembre'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportDiciembre: TFMTBCDField
      FieldName = 'Diciembre'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279400
    DataPipelineName = 'dbpReport'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 24871
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmWidth = 217488
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 21167
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Enero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 39667
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Febrero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 58183
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Marzo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 76700
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Abril'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 95217
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Mayo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 113734
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Junio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 132228
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Julio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 150767
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Agosto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 169284
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Septiembre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 187800
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Octubre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 206375
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Noviembre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 224893
        mmTop = 21167
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Diciembre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 243415
        mmTop = 20902
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4763
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Cliente'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Enero'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 39667
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Febrero'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 58183
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Marzo'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 76700
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Abril'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 95217
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Mayo'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 113734
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Junio'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 132228
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Julio'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 150767
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Agosto'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 169284
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Septiembre'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 187800
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Octubre'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 206375
        mmTop = 529
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Noviembre'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 224893
        mmTop = 529
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Diciembre'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3704
        mmLeft = 243415
        mmTop = 529
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        mmWidth = 264055
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        mmLeft = 248709
        LayerName = Foreground
      end
    end
  end
  inherited mdParams: TdxMemData
    OnNewRecord = mdParamsNewRecord
    object mdParamsYear: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'Year'
    end
  end
end
