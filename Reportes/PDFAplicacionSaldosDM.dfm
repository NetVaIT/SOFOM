inherited DmRptAplicacionPagospdf: TDmRptAplicacionPagospdf
  inherited adodsReport: TADODataSet
    CommandText = 
      'select PA.FechaAplicacion ,pa.importe, PR.FechaPago as FechaPago' +
      ','#13#10' PR.FolioPago, Pr.SeriePago,Cc.IdCuentaXCobrar NoCuentaXCobra' +
      'r,'#13#10' CC.FechaVencimiento as FechaCXC ,P.RazonSocial as Cliente,C' +
      'C.IDAnexo,A.DEscripcion Anexo,'#13#10'PA.IdPagoAplicacion, Pa.IdPago, ' +
      'PA.IdPersonaCliente,'#13#10'A.IdContrato, P.idMetodoPago , CC.IdCFDI, ' +
      'cc.Saldo saldoCXC,'#13#10'Ci.Serie SerieFactura, Ci.Folio FolioFactura' +
      ', Ci.Total TotalFactura -- jul 11/17'#13#10',CC.Descripcion '#13#10'from Pag' +
      'osAplicaciones PA'#13#10'inner join Pagos PR on PA.IdPago=PR.IdPago'#13#10'i' +
      'nner join CuentasXCobrar CC on PA.IdCuentaXCobrar =Cc.IdcuentaXC' +
      'obrar'#13#10'inner join CFDI Ci on Ci.IdCFDI =CC.IdCFDI -- jul 11/17'#13#10 +
      ' inner join Anexos A on A.IdAnexo=cc.IdAnexo '#13#10'inner join Person' +
      'as P on P.IdPersona =Cc.IdPersona'
    object adodsReportFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object adodsReportimporte: TFMTBCDField
      FieldName = 'importe'
      Precision = 18
      Size = 6
    end
    object adodsReportFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adodsReportFolioPago: TIntegerField
      FieldName = 'FolioPago'
    end
    object adodsReportSeriePago: TStringField
      FieldName = 'SeriePago'
    end
    object adodsReportNoCuentaXCobrar: TAutoIncField
      FieldName = 'NoCuentaXCobrar'
      ReadOnly = True
    end
    object adodsReportFechaCXC: TDateTimeField
      FieldName = 'FechaCXC'
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportIDAnexo: TIntegerField
      FieldName = 'IDAnexo'
    end
    object adodsReportAnexo: TStringField
      FieldName = 'Anexo'
      Size = 100
    end
    object adodsReportIdPagoAplicacion: TAutoIncField
      FieldName = 'IdPagoAplicacion'
      ReadOnly = True
    end
    object adodsReportIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object adodsReportIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsReportIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object adodsReportidMetodoPago: TIntegerField
      FieldName = 'idMetodoPago'
    end
    object adodsReportIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object adodsReportSerieFactura: TStringField
      FieldName = 'SerieFactura'
    end
    object adodsReportFolioFactura: TLargeintField
      FieldName = 'FolioFactura'
    end
    object adodsReportDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsReportsaldoCXC: TFMTBCDField
      FieldName = 'saldoCXC'
      Precision = 18
      Size = 6
    end
    object adodsReportTotalFactura: TFMTBCDField
      FieldName = 'TotalFactura'
      Precision = 18
      Size = 6
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279400
    Left = 248
    DataPipelineName = 'dbpReport'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 25400
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Caption = 'REPORTE DE  APLICACIONES DE PAGOS'
        Font.Size = 18
        WordWrap = True
        mmWidth = 215636
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
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 19845
        mmWidth = 40217
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 50003
        mmTop = 19845
        mmWidth = 40217
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'NoCXC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 109538
        mmTop = 19845
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3965
        mmLeft = 138907
        mmTop = 19847
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Folio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 169334
        mmTop = 19844
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Serie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3435
        mmLeft = 154782
        mmTop = 19847
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Importe Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 180983
        mmTop = 19844
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Serie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 219869
        mmTop = 19844
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Folio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3435
        mmLeft = 231775
        mmTop = 19847
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 243959
        mmTop = 19845
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'SaldoCXC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 202412
        mmTop = 19844
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1843
        mmLeft = 4499
        mmTop = 23550
        mmWidth = 256646
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Fecha Aplica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 6350
        mmLeft = 122502
        mmTop = 16932
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Caption = 'PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 138907
        mmTop = 14817
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Caption = 'FACTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 222515
        mmTop = 14817
        mmWidth = 38100
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 9525
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
        WordWrap = True
        DataPipelineName = 'dbpReport'
        mmHeight = 8996
        mmLeft = 3969
        mmTop = 529
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Anexo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'dbpReport'
        mmHeight = 8996
        mmLeft = 50003
        mmTop = 529
        mmWidth = 58473
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NoCuentaXCobrar'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 109538
        mmTop = 529
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'FechaPago'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 138926
        mmTop = 529
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FolioPago'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 169334
        mmTop = 529
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SeriePago'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 154801
        mmTop = 529
        mmWidth = 13226
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'importe'
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
        mmHeight = 4233
        mmLeft = 180983
        mmTop = 529
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'SerieFactura'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 219869
        mmTop = 529
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FolioFactura'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 231779
        mmTop = 529
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TotalFactura'
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
        mmHeight = 4233
        mmLeft = 245006
        mmTop = 529
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'saldoCXC'
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
        mmHeight = 4233
        mmLeft = 202412
        mmTop = 529
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FechaAplicacion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 122510
        mmTop = 529
        mmWidth = 15611
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 8996
      inherited pplblPrintDate: TppSystemVariable [0]
        SaveOrder = -1
        mmLeft = 2646
        mmTop = 2381
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable [1]
        SaveOrder = -1
        mmLeft = 248709
        mmTop = 2648
        LayerName = Foreground
      end
      inherited ppLineFooter: TppLine [2]
        mmHeight = 1060
        mmLeft = 2646
        mmTop = 263
        mmWidth = 264055
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'importe'
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
        mmHeight = 4498
        mmLeft = 178065
        mmTop = 1852
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'saldoCXC'
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
        mmHeight = 4498
        mmLeft = 202407
        mmTop = 1852
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'TotalFactura'
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
        mmHeight = 4498
        mmLeft = 243948
        mmTop = 1854
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3969
        mmTop = 264
        mmWidth = 256646
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Weight = 0.748799979686737100
        Caption = 'TOTALES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 154782
        mmTop = 1852
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
    end
  end
end
