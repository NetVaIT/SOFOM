inherited dmRptCobertura: TdmRptCobertura
  Height = 246
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        Anexos.IdAnexo, Contratos.Identificador AS Contrat' +
      'o, Anexos.Identificador AS Anexo, Anexos.Fecha, Personas.RazonSo' +
      'cial AS Cliente, ISNULL(S.PorVencer / 1000, 0) AS PorVencer, ISN' +
      'ULL(S.Vencido / 1000, 0) AS Vencido, '#13#10'                         ' +
      'Anexos.Depositos / 1000 AS Depositos, Anexos.OpcionCompra / 1000' +
      ' AS OpcionCompra, Anexos.ValorResidual / 1000 AS ValorResidual, ' +
      '(ISNULL(S.PorVencer, 0) + ISNULL(S.Vencido, 0) '#13#10'               ' +
      '          + Anexos.OpcionCompra + Anexos.ValorResidual - Anexos.' +
      'Depositos) / 1000 AS TotalLiquidar, ISNULL(P.ValorComercial, 0) ' +
      '/ 1000 AS ValorComercial, ISNULL(P.TipoCambioOriginal, 0) AS Tip' +
      'oCambioOriginal, '#13#10'                         ISNULL(P.ValorComerc' +
      'ialActualizado, 0) / 1000 AS ValorComercialActualizado, (ISNULL(' +
      'P.ValorComercialActualizado, 0) - (ISNULL(S.PorVencer, 0) + ISNU' +
      'LL(S.Vencido, 0) '#13#10'                         + Anexos.OpcionCompr' +
      'a + Anexos.ValorResidual - Anexos.Depositos)) / 1000 AS Cobertur' +
      'a, CASE WHEN (ISNULL(S.PorVencer, 0) + ISNULL(S.Vencido, 0) + An' +
      'exos.OpcionCompra + Anexos.ValorResidual - Anexos.Depositos) '#13#10' ' +
      '                        <> 0 THEN ISNULL(P.ValorComercialActuali' +
      'zado, 0) / (ISNULL(S.PorVencer, 0) + ISNULL(S.Vencido, 0) + Anex' +
      'os.OpcionCompra + Anexos.ValorResidual - Anexos.Depositos) ELSE ' +
      '0 END AS Factor, ISNULL(S.DiasRetraso, 0) '#13#10'                    ' +
      '     AS DiasRetraso'#13#10'FROM            Anexos INNER JOIN'#13#10'        ' +
      '                 Contratos ON Anexos.IdContrato = Contratos.IdCo' +
      'ntrato INNER JOIN'#13#10'                         Personas ON Contrato' +
      's.IdPersona = Personas.IdPersona LEFT OUTER JOIN'#13#10'              ' +
      '               (SELECT        AC.IdAnexo, MAX(A.DiasRetraso) AS ' +
      'DiasRetraso, SUM(CASE WHEN A.DiasRetraso = 0 THEN A.PagoSaldo EL' +
      'SE 0 END) AS PorVencer, SUM(A.Saldo) AS Vencido'#13#10'               ' +
      '                FROM            v_AnexosAmortizaciones AS A INNE' +
      'R JOIN'#13#10'                                                        ' +
      ' AnexosCreditos AS AC ON A.IdAnexoCredito = AC.IdAnexoCredito'#13#10' ' +
      '                              WHERE        (AC.IdAnexoCreditoEst' +
      'atus = 1) AND (A.PagoSaldo > 0.01)'#13#10'                            ' +
      '   GROUP BY AC.IdAnexo) AS S ON Anexos.IdAnexo = S.IdAnexo LEFT ' +
      'OUTER JOIN'#13#10'                             (SELECT        IdAnexo,' +
      ' MAX(TipoCambio) AS TipoCambioOriginal, SUM(ValorComercial) AS V' +
      'alorComercial, SUM(ValorComercialActualizado) AS ValorComercialA' +
      'ctualizado'#13#10'                               FROM            Produ' +
      'ctos'#13#10'                               GROUP BY IdAnexo) AS P ON A' +
      'nexos.IdAnexo = P.IdAnexo'#13#10'WHERE ISNULL(S.DiasRetraso, 0) >= :Ve' +
      'ncidos'#13#10'ORDER BY Cobertura'
    Parameters = <
      item
        Name = 'Vencidos'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
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
    object adodsReportPorVencer: TFMTBCDField
      FieldName = 'PorVencer'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object adodsReportVencido: TFMTBCDField
      FieldName = 'Vencido'
      ReadOnly = True
      Precision = 38
      Size = 6
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
    object adodsReportDiasRetraso: TIntegerField
      FieldName = 'DiasRetraso'
      ReadOnly = True
    end
  end
  inherited dbpReport: TppDBPipeline
    object dbpReportppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdAnexo'
      FieldName = 'IdAnexo'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object dbpReportppField2: TppField
      FieldAlias = 'Contrato'
      FieldName = 'Contrato'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object dbpReportppField3: TppField
      FieldAlias = 'Anexo'
      FieldName = 'Anexo'
      FieldLength = 5
      DisplayWidth = 5
      Position = 2
    end
    object dbpReportppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object dbpReportppField5: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 300
      DisplayWidth = 300
      Position = 4
    end
    object dbpReportppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PorVencer'
      FieldName = 'PorVencer'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 39
      Position = 5
    end
    object dbpReportppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Vencido'
      FieldName = 'Vencido'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 39
      Position = 6
    end
    object dbpReportppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Depositos'
      FieldName = 'Depositos'
      FieldLength = 11
      DataType = dtDouble
      DisplayWidth = 24
      Position = 7
    end
    object dbpReportppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'OpcionCompra'
      FieldName = 'OpcionCompra'
      FieldLength = 11
      DataType = dtDouble
      DisplayWidth = 24
      Position = 8
    end
    object dbpReportppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorResidual'
      FieldName = 'ValorResidual'
      FieldLength = 11
      DataType = dtDouble
      DisplayWidth = 24
      Position = 9
    end
    object dbpReportppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalLiquidar'
      FieldName = 'TotalLiquidar'
      FieldLength = 11
      DataType = dtDouble
      DisplayWidth = 28
      Position = 10
    end
    object dbpReportppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorComercial'
      FieldName = 'ValorComercial'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 11
    end
    object dbpReportppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TipoCambioOriginal'
      FieldName = 'TipoCambioOriginal'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object dbpReportppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorComercialActualizado'
      FieldName = 'ValorComercialActualizado'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object dbpReportppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cobertura'
      FieldName = 'Cobertura'
      FieldLength = 11
      DataType = dtDouble
      DisplayWidth = 29
      Position = 14
    end
    object dbpReportppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Factor'
      FieldName = 'Factor'
      FieldLength = 17
      DataType = dtDouble
      DisplayWidth = 39
      Position = 15
    end
    object dbpReportppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'DiasRetraso'
      FieldName = 'DiasRetraso'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
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
      mmHeight = 47361
      inherited pplblFilters: TppLabel
        SaveOrder = -1
        mmTop = 11377
        mmWidth = 219075
        LayerName = Foreground
      end
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        VerticalAlignment = avCenter
        mmWidth = 219075
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
        Border.Weight = 0.748799979686737000
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
          PrinterSetup.PaperName = 'Letter (8,5" x 11")'
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
            mmHeight = 8202
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
              mmLeft = 246063
              mmTop = 3962
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
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Vencido'
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
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'PorVencer'
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
        mmLeft = 247374
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 264055
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'PorVencer'
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
        mmHeight = 3705
        mmLeft = 95338
        mmTop = 1323
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'Vencido'
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
        mmHeight = 3705
        mmLeft = 111147
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'Depositos'
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
        mmHeight = 3705
        mmLeft = 127022
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'OpcionCompra'
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
        mmHeight = 3705
        mmLeft = 142897
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'ValorResidual'
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
        mmHeight = 3705
        mmLeft = 158772
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'TotalLiquidar'
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
        mmHeight = 3705
        mmLeft = 174647
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
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
        mmHeight = 3705
        mmLeft = 190522
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'ValorComercialActualizado'
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
        mmHeight = 3705
        mmLeft = 219605
        mmTop = 1320
        mmWidth = 15871
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label15'
        Caption = 'Totales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3439
        mmLeft = 81486
        mmTop = 1587
        mmWidth = 10584
        BandType = 7
        LayerName = Foreground
      end
    end
  end
  inherited mdParams: TdxMemData
    OnNewRecord = mdParamsNewRecord
    object mdParamsVencidos: TIntegerField
      FieldName = 'Vencidos'
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
