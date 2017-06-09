inherited dmRptCobertura: TdmRptCobertura
  Height = 246
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        Anexos.IdAnexo, Contratos.Identificador AS Contrat' +
      'o, Anexos.Identificador AS Anexo, Anexos.Fecha, Personas.RazonSo' +
      'cial AS Cliente, Anexos.SaldoInsoluto / 1000 AS SaldoInsoluto, '#13 +
      #10'                         Anexos.MontoVencido / 1000 AS MontoVen' +
      'cido, Anexos.Depositos / 1000 AS Depositos, Anexos.OpcionCompra ' +
      '/ 1000 AS OpcionCompra, Anexos.ValorResidual / 1000 AS ValorResi' +
      'dual, '#13#10'                         (Anexos.SaldoInsoluto + Anexos.' +
      'MontoVencido + Anexos.OpcionCompra + Anexos.ValorResidual - Anex' +
      'os.Depositos) / 1000 AS TotalLiquidar, ISNULL(P.ValorComercial, ' +
      '0) / 1000 AS ValorComercial, '#13#10'                         ISNULL(P' +
      '.TipoCambioOriginal, 0) AS TipoCambioOriginal, ISNULL(P.ValorCom' +
      'ercialActualizado, 0) / 1000 AS ValorComercialActualizado, (ISNU' +
      'LL(P.ValorComercialActualizado, 0) '#13#10'                         - ' +
      '(Anexos.SaldoInsoluto + Anexos.MontoVencido + Anexos.OpcionCompr' +
      'a + Anexos.ValorResidual - Anexos.Depositos)) / 1000 AS Cobertur' +
      'a, '#13#10'                         CASE WHEN (Anexos.SaldoInsoluto + ' +
      'Anexos.MontoVencido + Anexos.OpcionCompra + Anexos.ValorResidual' +
      ' - Anexos.Depositos) <> 0 THEN ISNULL(P.ValorComercialActualizad' +
      'o, 0) '#13#10'                         / (Anexos.SaldoInsoluto + Anexo' +
      's.MontoVencido + Anexos.OpcionCompra + Anexos.ValorResidual - An' +
      'exos.Depositos) ELSE 0 END AS Factor'#13#10'FROM            Anexos INN' +
      'ER JOIN'#13#10'                         Contratos ON Anexos.IdContrato' +
      ' = Contratos.IdContrato INNER JOIN'#13#10'                         Per' +
      'sonas ON Contratos.IdPersona = Personas.IdPersona LEFT OUTER JOI' +
      'N'#13#10'                             (SELECT        IdAnexo, MAX(Tipo' +
      'Cambio) AS TipoCambioOriginal, SUM(ValorComercial) AS ValorComer' +
      'cial, SUM(ValorComercialActualizado) AS ValorComercialActualizad' +
      'o'#13#10'                               FROM            Productos'#13#10'   ' +
      '                            GROUP BY IdAnexo) AS P ON Anexos.IdA' +
      'nexo = P.IdAnexo'#13#10'ORDER BY Cobertura'#13#10
    object adodsReportIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object adodsReportContrato: TStringField
      FieldName = 'Contrato'
    end
    object adodsReportAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adodsReportFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      ReadOnly = True
      Precision = 23
      Size = 11
    end
    object adodsReportMontoVencido: TFMTBCDField
      FieldName = 'MontoVencido'
      ReadOnly = True
      Precision = 23
      Size = 11
    end
    object adodsReportDepositos: TFMTBCDField
      FieldName = 'Depositos'
      ReadOnly = True
      Precision = 23
      Size = 11
    end
    object adodsReportOpcionCompra: TFMTBCDField
      FieldName = 'OpcionCompra'
      ReadOnly = True
      Precision = 23
      Size = 11
    end
    object adodsReportValorResidual: TFMTBCDField
      FieldName = 'ValorResidual'
      ReadOnly = True
      Precision = 23
      Size = 11
    end
    object adodsReportTotalLiquidar: TFMTBCDField
      FieldName = 'TotalLiquidar'
      ReadOnly = True
      Precision = 27
      Size = 11
    end
    object adodsReportValorComercial: TBCDField
      FieldName = 'ValorComercial'
      ReadOnly = True
      Precision = 19
    end
    object adodsReportTipoCambioOriginal: TBCDField
      FieldName = 'TipoCambioOriginal'
      ReadOnly = True
      Precision = 19
    end
    object adodsReportValorComercialActualizado: TBCDField
      FieldName = 'ValorComercialActualizado'
      ReadOnly = True
      Precision = 19
    end
    object adodsReportCobertura: TFMTBCDField
      FieldName = 'Cobertura'
      ReadOnly = True
      Precision = 28
      Size = 11
    end
    object adodsReportFactor: TFMTBCDField
      FieldName = 'Factor'
      ReadOnly = True
      Precision = 38
      Size = 17
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279400
    Left = 256
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmHeight = 529
    end
    inherited ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmHeight = 42863
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        VerticalAlignment = avCenter
        mmWidth = 198702
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 34179
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 15875
        mmTop = 34179
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 34179
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 44979
        mmTop = 30210
        mmWidth = 50271
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Por vencer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 95254
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 111129
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127004
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 174630
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219605
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 235480
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'LineFooter1'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1321
        mmLeft = 0
        mmTop = 41540
        mmWidth = 264055
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Paridad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 206375
        mmTop = 30210
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 190621
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 30210
        mmWidth = 44979
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Factor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 251355
        mmTop = 30210
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219605
        mmTop = 34179
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'actual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 219605
        mmTop = 38147
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'original'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 206375
        mmTop = 34182
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 190502
        mmTop = 34182
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'garantia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 127004
        mmTop = 34182
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'Opci'#243'n de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144202
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144202
        mmTop = 34175
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 158754
        mmTop = 30210
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'residual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 158754
        mmTop = 34175
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 174626
        mmTop = 34182
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpParidad'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 20108
        mmWidth = 266700
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpParidad
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpVertical
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279400
          PrinterSetup.PaperSize = 1
          Units = utScreenPixels
          Version = '15.0'
          mmColumnWidth = 0
          DataPipelineName = 'dbpParidad'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 10583
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'Texto'
              DataPipeline = dbpParidad
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpParidad'
              mmHeight = 3969
              mmLeft = 221192
              mmTop = 0
              mmWidth = 40746
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'Importe'
              DataPipeline = dbpParidad
              DisplayFormat = '#,0.0000;-#,0.0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpParidad'
              mmHeight = 4233
              mmLeft = 246064
              mmTop = 3967
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3969
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Contrato'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Anexo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 18521
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Fecha'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Cliente'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 44979
        mmTop = 0
        mmWidth = 50271
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SaldoInsoluto'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 95188
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'MontoVencido'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 111121
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Depositos'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 126996
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'TotalLiquidar'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 174630
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'ValorComercialActualizado'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 219605
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Cobertura'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 235480
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'TipoCambioOriginal'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 206375
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ValorComercial'
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
        mmHeight = 3440
        mmLeft = 190500
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText101'
        DataField = 'Factor'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 251355
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'OpcionCompra'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 142879
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'ValorResidual'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 3440
        mmLeft = 158754
        mmTop = 0
        mmWidth = 15875
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
        mmLeft = 254794
        LayerName = Foreground
      end
    end
  end
  object adodsParidad: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        MonedasCotizaciones.Fecha, MonedasCotizaciones.Imp' +
      'orte, Monedas.Identificador AS Moneda, Monedas.Identificador + '#39 +
      ' al '#39' + CONVERT(nvarchar(12), MonedasCotizaciones.Fecha, 103) AS' +
      ' Texto'#13#10'FROM            MonedasCotizaciones INNER JOIN'#13#10'        ' +
      '                 Monedas ON MonedasCotizaciones.IdMoneda = Moned' +
      'as.IdMoneda'#13#10'WHERE        (MonedasCotizaciones.IdMonedaCotizacio' +
      'n = dbo.GetIdCotizacionMoneda(51, dbo.GetDateAux()))'
    Parameters = <>
    Left = 40
    Top = 160
  end
  object dsParidad: TDataSource
    DataSet = adodsParidad
    Left = 112
    Top = 160
  end
  object dbpParidad: TppDBPipeline
    DataSource = dsParidad
    UserName = 'dbpReport1'
    Left = 176
    Top = 160
  end
end
