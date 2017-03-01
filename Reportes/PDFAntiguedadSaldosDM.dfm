inherited dmAntiguedadSaldosPDF: TdmAntiguedadSaldosPDF
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT     Cc.IdCuentaXCobrar,cc.IDAnexo, A.IDContrato, Con.IdCo' +
      'ntratoTipo, CT.Identificador as TC, ct.Descripcion as TipoContra' +
      'to, Cc.Fecha, Cc.IdPersona, cc.IdCuentaXCobrarEstatus, Cc.Total,' +
      ' CC.Saldo, '#13#10'                      PR.RazonSocial AS Cliente, CA' +
      'SE WHEN getdate() - Cc.Fecha < 30 THEN Cc.Saldo END AS '#39'Vigentes' +
      #39','#13#10'                       CASE WHEN (getdate() - Cc.Fecha < 60 ' +
      ') AND (getdate() - Cc.Fecha >= 30 ) '#13#10'                      THEN' +
      ' Cc.Saldo END AS '#39'Vencidos a 30 d'#237'as'#39', CASE WHEN (getdate() - Cc' +
      '.Fecha < 90 ) AND (getdate() '#13#10'                      - Cc.Fecha ' +
      '>= 60 ) THEN Cc.Saldo END AS '#39'Vencidos a 60 d'#237'as'#39', CASE WHEN (ge' +
      'tdate() - Cc.Fecha >= 90 ) AND '#13#10'                      (getdate(' +
      ') - Cc.Fecha < 120 ) THEN Cc.Saldo END AS '#39'Vencidos a 90 d'#237'as'#39', ' +
      'CASE WHEN getdate() '#13#10'                      - Cc.Fecha >= 120 TH' +
      'EN Cc.Saldo END AS '#39'Vencidos m'#225's de 90 d'#237'as'#39#13#10'FROM         Cuent' +
      'asXCobrar AS Cc INNER JOIN'#13#10'                      Personas AS PR' +
      ' ON Cc.IdPersona = PR.IdPersona'#13#10'             left join  Anexos ' +
      'As A ON Cc.IdAnexo=A.IdAnexo       -- Por si hubiese algo sin an' +
      'exo.. aunque no deber'#237'a'#13#10'             inner join Contratos as Co' +
      'n ON A.IdContrato=Con.IdContrato'#13#10'             inner join Contra' +
      'tosTipos as CT On Con.IdContratoTipo =CT.IdContratoTipo'#13#10' WHERE ' +
      '   (Cc.Saldo > 0) --  AND  -- mientras para que muestre todo'#13#10'  ' +
      '  '#13#10'ORDER BY Cliente'
    object adodsReportIdCuentaXCobrar: TAutoIncField
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object adodsReportIDAnexo: TIntegerField
      FieldName = 'IDAnexo'
    end
    object adodsReportIDContrato: TIntegerField
      FieldName = 'IDContrato'
    end
    object adodsReportIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
    end
    object adodsReportTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 50
    end
    object adodsReportFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsReportIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsReportIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object adodsReportTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adodsReportSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportVigentes: TFMTBCDField
      FieldName = 'Vigentes'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object adodsReportVencidosa30días: TFMTBCDField
      FieldName = 'Vencidos a 30 d'#237'as'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object adodsReportVencidosa60días: TFMTBCDField
      FieldName = 'Vencidos a 60 d'#237'as'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object adodsReportVencidosa90días: TFMTBCDField
      FieldName = 'Vencidos a 90 d'#237'as'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object adodsReportVencidosmásde90días: TFMTBCDField
      FieldName = 'Vencidos m'#225's de 90 d'#237'as'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object adodsReportTC: TStringField
      FieldName = 'TC'
      Size = 5
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279400
    Template.FileName = 'C:\Desarrollo\SOFOM\Reportes\rptAntiguedadSaldos.rtm'
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Caption = 'Antiguedad de Saldos '
        VerticalAlignment = avCenter
        mmWidth = 198702
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 13494
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 5821
        mmTop = 1323
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Cliente'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 20902
        mmTop = 1323
        mmWidth = 98161
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 4763
        mmTop = 7938
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Tipo C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 21428
        mmTop = 7938
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 33860
        mmTop = 7938
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 47626
        mmTop = 7938
        mmWidth = 20904
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Vigentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 70115
        mmTop = 7938
        mmWidth = 35400
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Venc. a 30 d'#237'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 106631
        mmTop = 7938
        mmWidth = 35400
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Venc. a 60 d'#237'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 143908
        mmTop = 8000
        mmWidth = 35400
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Venc. a 90 d'#237'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 181212
        mmTop = 8000
        mmWidth = 35400
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Venc. a m'#225's de 90 d'#237'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 218017
        mmTop = 7938
        mmWidth = 35400
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'LineFooter1'
        Anchors = [atLeft, atTop, atRight, atBottom]
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 12436
        mmWidth = 264055
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Anchors = [atLeft, atTop, atRight, atBottom]
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 265
        mmWidth = 264055
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'IDContrato'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 4763
        mmTop = 520
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'IDAnexo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 34918
        mmTop = 520
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TC'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 21428
        mmTop = 520
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Fecha'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 47626
        mmTop = 520
        mmWidth = 20904
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Vigentes'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 70115
        mmTop = 529
        mmWidth = 35400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Vencidos a 30 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 106606
        mmTop = 529
        mmWidth = 35400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Vencidos a 60 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 143938
        mmTop = 529
        mmWidth = 35400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Vencidos a 90 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 181212
        mmTop = 529
        mmWidth = 35400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Vencidos m'#225's de 90 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 218015
        mmTop = 529
        mmWidth = 35400
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 8731
      inherited ppLineFooter: TppLine
        mmHeight = 3968
        mmTop = 265
        mmWidth = 264055
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        mmTop = 2647
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        mmLeft = 254794
        mmTop = 2646
        mmWidth = 10583
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'Vigentes'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 3900
        mmWidth = 30956
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'Vencidos a 30 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 106627
        mmTop = 3900
        mmWidth = 34925
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'Vencidos a 60 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 148432
        mmTop = 3900
        mmWidth = 30956
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'Vencidos a 90 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 185209
        mmTop = 3900
        mmWidth = 30956
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'Vencidos m'#225's de 90 d'#237'as'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 222515
        mmTop = 3900
        mmWidth = 30956
        BandType = 7
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'LineFooter2'
        Anchors = [atLeft, atTop, atRight, atBottom]
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 38629
        mmTop = 2381
        mmWidth = 226748
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Total General'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 40217
        mmTop = 3969
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'Cliente'
      DataPipeline = dbpReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpReport'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'Vigentes'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 70644
          mmTop = 1589
          mmWidth = 34925
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'Vencidos a 30 d'#237'as'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 106627
          mmTop = 1589
          mmWidth = 34925
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'Vencidos a 60 d'#237'as'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 144463
          mmTop = 1589
          mmWidth = 34925
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'Vencidos a 90 d'#237'as'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 181240
          mmTop = 1589
          mmWidth = 34925
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          UserName = 'Line1'
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 38629
          mmTop = 264
          mmWidth = 225425
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'Vencidos m'#225's de 90 d'#237'as'
          DataPipeline = dbpReport
          DisplayFormat = '$#,0.00;-$#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpReport'
          mmHeight = 4498
          mmLeft = 218546
          mmTop = 1589
          mmWidth = 34925
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          AutoSize = False
          Caption = 'Total por Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4763
          mmLeft = 40217
          mmTop = 1854
          mmWidth = 28310
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
  end
end
