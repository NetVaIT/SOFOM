inherited dmRptAnexosProductos: TdmRptAnexosProductos
  Height = 282
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT        Anexos.IdAnexo, Empleados.Identificador AS Emplead' +
      'o, ContratosTipos.Identificador AS ContratoTipo, Contratos.Ident' +
      'ificador AS Contrato, Anexos.Identificador AS Anexo, Anexos.Fech' +
      'a, Anexos.FechaVencimiento, '#13#10'Anexos.CartaCompensacion,AnexosEst' +
      'atus.Descripcion AS Estatus, Clientes.RazonSocial AS Cliente, An' +
      'exos.PrecioTotal, Anexos.MontoFinanciar'#13#10'FROM            Anexos ' +
      'INNER JOIN'#13#10'                         Personas AS Empleados ON An' +
      'exos.IdPersonaEmpleado = Empleados.IdPersona INNER JOIN'#13#10'       ' +
      '                  Contratos ON Anexos.IdContrato = Contratos.IdC' +
      'ontrato INNER JOIN'#13#10'                         ContratosTipos ON C' +
      'ontratos.IdContratoTipo = ContratosTipos.IdContratoTipo INNER JO' +
      'IN'#13#10'                         AnexosEstatus ON Anexos.IdAnexoEsta' +
      'tus = AnexosEstatus.IdAnexoEstatus INNER JOIN'#13#10'                 ' +
      '        Personas AS Clientes ON Contratos.IdPersona = Clientes.I' +
      'dPersona'#13#10
    Left = 40
    object adodsReportIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object adodsReportEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 5
    end
    object adodsReportContratoTipo: TStringField
      FieldName = 'ContratoTipo'
      Size = 5
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
    object adodsReportFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object adodsReportCartaCompensacion: TBooleanField
      FieldName = 'CartaCompensacion'
    end
    object adodsReportEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
    object adodsReportCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsReportPrecioTotal: TFMTBCDField
      FieldName = 'PrecioTotal'
      Precision = 18
      Size = 6
    end
    object adodsReportMontoFinanciar: TFMTBCDField
      FieldName = 'MontoFinanciar'
      Precision = 18
      Size = 6
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279400
    DataPipelineName = 'dbpReport'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 29104
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmWidth = 198702
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Vend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19834
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 19834
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 21167
        mmTop = 19834
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 19834
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 63500
        mmTop = 19834
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Carta compensaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 82021
        mmTop = 19834
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Estatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 19834
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 129646
        mmTop = 19834
        mmWidth = 79375
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Valor equipo(s) IVA incluido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 209021
        mmTop = 19834
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Valor financiado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 236273
        mmTop = 19834
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Color = clGray
        Pen.Width = 2
        Position = lpBottom
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 26184
        mmWidth = 262732
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 14023
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Empleado'
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
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ContratoTipo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Contrato'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 21167
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Anexo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 0
        mmWidth = 15875
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 63500
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbpProductos'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7938
        mmWidth = 266700
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbpProductos
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
          DataPipelineName = 'dbpProductos'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel11: TppLabel
              UserName = 'Label11'
              AutoSize = False
              Caption = 'Equipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 5292
              mmTop = 0
              mmWidth = 79375
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 84667
              mmTop = 0
              mmWidth = 31750
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              AutoSize = False
              Caption = 'Familia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 116417
              mmTop = 0
              mmWidth = 31750
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              AutoSize = False
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 148167
              mmTop = 0
              mmWidth = 31750
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              AutoSize = False
              Caption = 'Modelo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 179917
              mmTop = 0
              mmWidth = 31750
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              AutoSize = False
              Caption = 'Estatus'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 211667
              mmTop = 0
              mmWidth = 31750
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine1: TppLine
              UserName = 'LineFooter1'
              Pen.Color = clGray
              Pen.Width = 2
              Position = lpBottom
              Weight = 1.500000000000000000
              mmHeight = 2646
              mmLeft = 5299
              mmTop = 2110
              mmWidth = 238085
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'Descripcion'
              DataPipeline = dbpProductos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpProductos'
              mmHeight = 4233
              mmLeft = 5292
              mmTop = 0
              mmWidth = 79375
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'Tipo'
              DataPipeline = dbpProductos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpProductos'
              mmHeight = 4233
              mmLeft = 84667
              mmTop = 0
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'Familia'
              DataPipeline = dbpProductos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpProductos'
              mmHeight = 4233
              mmLeft = 116417
              mmTop = 0
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'Marca'
              DataPipeline = dbpProductos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpProductos'
              mmHeight = 4233
              mmLeft = 148167
              mmTop = 0
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'Modelo'
              DataPipeline = dbpProductos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpProductos'
              mmHeight = 4233
              mmLeft = 179917
              mmTop = 0
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'Estatus'
              DataPipeline = dbpProductos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbpProductos'
              mmHeight = 4233
              mmLeft = 211667
              mmTop = 0
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
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
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Estatus'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
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
        mmLeft = 129646
        mmTop = 0
        mmWidth = 79375
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'PrecioTotal'
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
        mmHeight = 4233
        mmLeft = 209021
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'MontoFinanciar'
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
        mmHeight = 4233
        mmLeft = 236273
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = dbpReport
        DataField = 'CartaCompensacion'
        DataPipelineName = 'dbpReport'
        mmHeight = 6350
        mmLeft = 89429
        mmTop = 0
        mmWidth = 6350
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
        mmLeft = 246063
        mmWidth = 16669
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'PrecioTotal'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 209021
        mmTop = 1323
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 209035
        mmTop = 0
        mmWidth = 52361
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MontoFinanciar'
        DataPipeline = dbpReport
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 236273
        mmTop = 1323
        mmWidth = 25135
        BandType = 7
        LayerName = Foreground
      end
    end
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        Productos.IdProducto, Productos.IdAnexo, Productos' +
      '.Descripcion, ProductosTipos.Descripcion AS Tipo, Familias.Descr' +
      'ipcion AS Familia, Marcas.Descripcion AS Marca, Productos.Modelo' +
      ', '#13#10'                         ProductosEstatus.Descripcion AS Est' +
      'atus'#13#10'FROM            Productos INNER JOIN'#13#10'                    ' +
      '     ProductosTipos ON Productos.IdProductoTipo = ProductosTipos' +
      '.IdProductoTipo INNER JOIN'#13#10'                         Familias ON' +
      ' Productos.IdFamilia = Familias.IdFamila INNER JOIN'#13#10#9#9#9#9#9#9' Marc' +
      'as ON Productos.IdMarca = Marcas.IdMarca INNER JOIN'#13#10'           ' +
      '              ProductosEstatus ON Productos.IdProductoEstatus = ' +
      'ProductosEstatus.IdProductoEstatus '#13#10'WHERE Productos.IdAnexo = :' +
      'IdAnexo'
    DataSource = dsReport
    MasterFields = 'IdAnexo'
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 17
      end>
    Left = 40
    Top = 168
    object adodsProductosIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
    end
    object adodsProductosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object adodsProductosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsProductosTipo: TStringField
      FieldName = 'Tipo'
      Size = 50
    end
    object adodsProductosFamilia: TStringField
      FieldName = 'Familia'
      Size = 50
    end
    object adodsProductosMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object adodsProductosModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object adodsProductosEstatus: TStringField
      FieldName = 'Estatus'
      Size = 50
    end
  end
  object dsProductos: TDataSource
    DataSet = adodsProductos
    Left = 112
    Top = 168
  end
  object dbpProductos: TppDBPipeline
    DataSource = dsProductos
    UserName = 'dbpProductos'
    Left = 176
    Top = 168
    MasterDataPipelineName = 'dbpReport'
  end
end
