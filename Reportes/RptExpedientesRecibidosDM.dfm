inherited dmRptExpedientesRecibidos: TdmRptExpedientesRecibidos
  Height = 301
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        Cotizaciones.IdCotizacion, '#13#10'--Cotizaciones.IdPers' +
      'ona, Cotizaciones.IdCotizacionEstatus, Cotizaciones.IdCotizacion' +
      'Causa, Cotizaciones.IdContratoTipo, Cotizaciones.IdUsuario, '#13#10'Co' +
      'tizaciones.Identificador, Cotizaciones.Elaboracion,  Personas.Ra' +
      'zonSocial AS Cliente, CotizacionesEstatus.Descripcion AS Estatus' +
      ', CotizacionesCausas.Descripcion AS Causa'#13#10'--Cotizaciones.Descri' +
      'pcion, Cotizaciones.Vigencia, '#13#10'FROM            Cotizaciones INN' +
      'ER JOIN'#13#10'                         Personas ON Cotizaciones.IdPer' +
      'sona = Personas.IdPersona INNER JOIN'#13#10'                         C' +
      'otizacionesEstatus ON Cotizaciones.IdCotizacionEstatus = Cotizac' +
      'ionesEstatus.IdCotizacionEstatus LEFT JOIN'#13#10'                    ' +
      '     CotizacionesCausas ON Cotizaciones.IdCotizacionCausa = Coti' +
      'zacionesCausas.IdCotizacionCausa'#13#10'ORDER BY Cotizaciones.Elaborac' +
      'ion'#13#10
    object adodsReportIdCotizacion: TAutoIncField
      FieldName = 'IdCotizacion'
      ReadOnly = True
    end
    object adodsReportIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsReportElaboracion: TDateTimeField
      FieldName = 'Elaboracion'
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsReportCausa: TStringField
      FieldName = 'Causa'
      Size = 50
    end
  end
  inherited ppReport: TppReport
    Units = utScreenPixels
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 39952
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmHeight = 31750
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Elaboracion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 0
        mmWidth = 79375
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Estatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 105834
        mmTop = 0
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Observaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 132292
        mmTop = 0
        mmWidth = 66146
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Elaboracion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Cliente'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 0
        mmWidth = 79375
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Estatus'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 105834
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Causa'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 132292
        mmTop = 0
        mmWidth = 66146
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpEstatus'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 2117
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpEstatus
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter (8,5" x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279400
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Units = utScreenPixels
          Version = '15.0'
          mmColumnWidth = 0
          DataPipelineName = 'dbpEstatus'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Caption = 'Estatus'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 52917
              mmTop = 0
              mmWidth = 52917
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Caption = 'Cuenta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 105834
              mmTop = 0
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              AutoSize = False
              Caption = 'Porcentaje'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 135996
              mmTop = 0
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'Estatus'
              DataPipeline = dbpEstatus
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpEstatus'
              mmHeight = 4233
              mmLeft = 52917
              mmTop = 0
              mmWidth = 52917
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'Cuenta'
              DataPipeline = dbpEstatus
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpEstatus'
              mmHeight = 4233
              mmLeft = 105834
              mmTop = 0
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'Porcentaje'
              DataPipeline = dbpEstatus
              DisplayFormat = '0.00 %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpEstatus'
              mmHeight = 4233
              mmLeft = 135996
              mmTop = 0
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'Cuenta'
              DataPipeline = dbpEstatus
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpEstatus'
              mmHeight = 4498
              mmLeft = 105834
              mmTop = 1323
              mmWidth = 27517
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'Porcentaje'
              DataPipeline = dbpEstatus
              DisplayFormat = '0.00 %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpEstatus'
              mmHeight = 4498
              mmLeft = 135996
              mmTop = 1323
              mmWidth = 27517
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 52917
              mmTop = 0
              mmWidth = 110596
              BandType = 7
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
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'dbpCausa'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8467
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbpCausa
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Letter (8,5" x 11")'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279400
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Units = utScreenPixels
          Version = '15.0'
          mmColumnWidth = 0
          DataPipelineName = 'dbpCausa'
          object ppTitleBand3: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label8'
              AutoSize = False
              Caption = 'Estatus'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 52917
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              AutoSize = False
              Caption = 'Observaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 52917
              mmTop = 0
              mmWidth = 79375
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              AutoSize = False
              Caption = 'Cuenta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 132292
              mmTop = 0
              mmWidth = 26458
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              AutoSize = False
              Caption = 'Porcentaje'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 158750
              mmTop = 0
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'Estatus'
              DataPipeline = dbpCausa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpCausa'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 52917
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'Causa'
              DataPipeline = dbpCausa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpCausa'
              mmHeight = 4233
              mmLeft = 52917
              mmTop = 0
              mmWidth = 79375
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'Cuenta'
              DataPipeline = dbpCausa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpCausa'
              mmHeight = 4233
              mmLeft = 132292
              mmTop = 0
              mmWidth = 26458
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'Porcentaje'
              DataPipeline = dbpCausa
              DisplayFormat = '0.00 %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpCausa'
              mmHeight = 4233
              mmLeft = 158750
              mmTop = 0
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 186267
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'Cuenta'
              DataPipeline = dbpCausa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpCausa'
              mmHeight = 4498
              mmLeft = 132292
              mmTop = 1323
              mmWidth = 26458
              BandType = 7
              LayerName = Foreground2
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'Porcentaje'
              DataPipeline = dbpCausa
              DisplayFormat = '0.00 %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbpCausa'
              mmHeight = 4498
              mmLeft = 158750
              mmTop = 1323
              mmWidth = 27517
              BandType = 7
              LayerName = Foreground2
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'DECLARE @TOTAL float'#13#10'SELECT @TOTAL = COUNT(*) FROM Cotizaciones' +
      ' WHERE Cotizaciones.IdCotizacionEstatus IN (3,4)'#13#10'SELECT        ' +
      'Cotizaciones.IdCotizacionEstatus, CotizacionesEstatus.Descripcio' +
      'n AS Estatus, COUNT(*) AS Cuenta, CASE WHEN @TOTAL = 0 THEN 0 EL' +
      'SE COUNT(*)*100/@TOTAL END AS Porcentaje'#13#10'FROM            Cotiza' +
      'ciones INNER JOIN'#13#10'                         CotizacionesEstatus ' +
      'ON Cotizaciones.IdCotizacionEstatus = CotizacionesEstatus.IdCoti' +
      'zacionEstatus'#13#10'WHERE Cotizaciones.IdCotizacionEstatus IN (3,4)'#13#10 +
      'GROUP BY Cotizaciones.IdCotizacionEstatus, CotizacionesEstatus.D' +
      'escripcion'#13#10#13#10
    Parameters = <>
    Left = 32
    Top = 152
    object adodsEstatusIdCotizacionEstatus: TIntegerField
      FieldName = 'IdCotizacionEstatus'
    end
    object adodsEstatusEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsEstatusCuenta: TIntegerField
      FieldName = 'Cuenta'
      ReadOnly = True
    end
    object adodsEstatusPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      ReadOnly = True
    end
  end
  object dsEstatus: TDataSource
    DataSet = adodsEstatus
    Left = 104
    Top = 152
  end
  object dbpEstatus: TppDBPipeline
    DataSource = dsEstatus
    UserName = 'dbpEstatus'
    Left = 168
    Top = 152
  end
  object adodsCausa: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'DECLARE @TOTAL float'#13#10'SELECT @TOTAL = COUNT(*) FROM Cotizaciones' +
      ' WHERE Cotizaciones.IdCotizacionEstatus IN (3,4)'#13#10'SELECT        ' +
      'Cotizaciones.IdCotizacionCausa, CotizacionesEstatus.Descripcion ' +
      'AS Estatus, CotizacionesCausas.Descripcion AS Causa, COUNT(*) AS' +
      ' Cuenta,  CASE WHEN @TOTAL = 0 THEN 0 ELSE COUNT(*)*100/@TOTAL E' +
      'ND AS Porcentaje'#13#10'FROM            Cotizaciones INNER JOIN'#13#10'     ' +
      '                    CotizacionesEstatus ON Cotizaciones.IdCotiza' +
      'cionEstatus = CotizacionesEstatus.IdCotizacionEstatus LEFT JOIN'#13 +
      #10'                         CotizacionesCausas ON Cotizaciones.IdC' +
      'otizacionCausa = CotizacionesCausas.IdCotizacionCausa'#13#10'WHERE Cot' +
      'izaciones.IdCotizacionEstatus IN (3,4)'#13#10'GROUP BY Cotizaciones.Id' +
      'CotizacionCausa, CotizacionesEstatus.Descripcion, CotizacionesCa' +
      'usas.Descripcion '#13#10
    Parameters = <>
    Left = 32
    Top = 208
    object adodsCausaIdCotizacionCausa: TIntegerField
      FieldName = 'IdCotizacionCausa'
    end
    object adodsCausaEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsCausaCausa: TStringField
      FieldName = 'Causa'
      Size = 50
    end
    object adodsCausaCuenta: TIntegerField
      FieldName = 'Cuenta'
      ReadOnly = True
    end
    object adodsCausaPorcentaje: TFloatField
      FieldName = 'Porcentaje'
      ReadOnly = True
    end
  end
  object dsCausa: TDataSource
    DataSet = adodsCausa
    Left = 104
    Top = 208
  end
  object dbpCausa: TppDBPipeline
    DataSource = dsCausa
    UserName = 'dbpCausa'
    Left = 168
    Top = 208
  end
end
