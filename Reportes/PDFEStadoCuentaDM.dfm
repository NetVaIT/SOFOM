inherited dmRepEstadoCta: TdmRepEstadoCta
  inherited adodsReport: TADODataSet
    CommandText = 
      'select IdEstadoCuenta, Ec.IdPersona, Ec.IdContrato ,'#13#10' FechaVenc' +
      'imiento,FechaCorte, SaldoInsoluto, SaldoAnterior, '#13#10'SaldoAPagar,' +
      ' SaldoVencido, P.RazonSocial,P.RFC, C.Identificador,CT.Identific' +
      'ador TipoContrato'#13#10'from EstadosCuenta EC '#13#10'inner join Personas P' +
      ' on P.idPersona=EC.IdPersona'#13#10'inner join Contratos C on C.IdCont' +
      'rato=EC.IdContrato'#13#10'inner join ContratosTipos CT on CT.idContrat' +
      'oTipo=C.IdContratoTipo'#13#10'where idEstadoCuenta=:IDEstadoCuenta'
    Parameters = <
      item
        Name = 'IDEstadoCuenta'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Top = 16
    object adodsReportIdEstadoCuenta: TAutoIncField
      FieldName = 'IdEstadoCuenta'
      ReadOnly = True
    end
    object adodsReportIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsReportIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object adodsReportFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object adodsReportFechaCorte: TDateTimeField
      FieldName = 'FechaCorte'
    end
    object adodsReportSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportSaldoAnterior: TFMTBCDField
      FieldName = 'SaldoAnterior'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportSaldoAPagar: TFMTBCDField
      FieldName = 'SaldoAPagar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportSaldoVencido: TFMTBCDField
      FieldName = 'SaldoVencido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsReportIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsReportTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 5
    end
    object adodsReportRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
  end
  inherited ppReport: TppReport
    DataPipeline = ppDBPplnDetalle
    Template.FileName = 'C:\Desarrollo\SOFOM\Reportes\rptEstadoCuenta2.rtm'
    DataPipelineName = 'ppDBPplnDetalle'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 0
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 60590
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Caption = 'Estado de Cuenta'
        VerticalAlignment = avCenter
        mmHeight = 17994
        mmTop = 527
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Fecha Vencimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 8467
        mmTop = 45009
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FechaVencimiento'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 40481
        mmTop = 45009
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fecha Corte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 8467
        mmTop = 38924
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FechaCorte'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 40481
        mmTop = 38924
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'No.Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 8467
        mmTop = 32045
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Identificador'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 39688
        mmTop = 32045
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Saldo Insoluto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 127000
        mmTop = 24373
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SaldoInsoluto'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 24373
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Saldo Anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 127000
        mmTop = 30459
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'SaldoAnterior'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 30459
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Saldo A Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 127000
        mmTop = 45011
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'SaldoAPagar'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 45011
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Saldo Vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 127000
        mmTop = 37603
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'SaldoVencido'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 37603
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 7673
        mmTop = 20932
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'RazonSocial'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 39688
        mmTop = 20932
        mmWidth = 76729
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'RFC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 7673
        mmTop = 26224
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'RFC'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 39688
        mmTop = 26224
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'TipoContrato'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 102923
        mmTop = 32045
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Tipo Contrato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 79375
        mmTop = 32045
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 6350
        mmTop = 55330
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Fecha Movto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 23800
        mmTop = 55330
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 57944
        mmTop = 55330
        mmWidth = 62706
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Abono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 162190
        mmTop = 55330
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 124619
        mmTop = 55330
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'LineFooter1'
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 1323
        mmTop = 60056
        mmWidth = 200555
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'IdAnexo'
        DataPipeline = ppDBPplnDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPplnDetalle'
        mmHeight = 4763
        mmLeft = 6350
        mmTop = 265
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FechaMovimiento'
        DataPipeline = ppDBPplnDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPplnDetalle'
        mmHeight = 4763
        mmLeft = 23800
        mmTop = 265
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Concepto'
        DataPipeline = ppDBPplnDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPplnDetalle'
        mmHeight = 4763
        mmLeft = 57944
        mmTop = 265
        mmWidth = 62706
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'Cargos'
        DataPipeline = ppDBPplnDetalle
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPplnDetalle'
        mmHeight = 4763
        mmLeft = 124619
        mmTop = 265
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'Abonos'
        DataPipeline = ppDBPplnDetalle
        DisplayFormat = '$#,0.00;-$#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPplnDetalle'
        mmHeight = 4763
        mmLeft = 163248
        mmTop = 265
        mmWidth = 25929
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
  end
  inherited mdParams: TdxMemData
    Left = 312
    Top = 96
  end
  object ADORepDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select IdEstadoCuentaDetalle, IdEstadoCuenta, '#13#10'IdAnexo, IdCuent' +
      'aXCobrar, IdCuentaXCobrarDetalle, '#13#10'IdPagoAplicacion, FechaMovim' +
      'iento,'#13#10' Concepto, CASE WHEN TipoMovimiento=1 then Importe END a' +
      's '#39'Cargos'#39', '#13#10'CASE WHEN TipoMovimiento=0 then Importe END as '#39'Ab' +
      'onos'#39' from EstadosCuentaDetalle '#13#10'where IdEstadoCuenta=:IdEstado' +
      'Cuenta'
    DataSource = dsReport
    IndexFieldNames = 'IdEstadoCuenta'
    MasterFields = 'IdEstadoCuenta'
    Parameters = <
      item
        Name = 'IdEstadoCuenta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 88
    object ADORepDetalleIdEstadoCuentaDetalle: TAutoIncField
      FieldName = 'IdEstadoCuentaDetalle'
      ReadOnly = True
    end
    object ADORepDetalleIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object ADORepDetalleIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADORepDetalleIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADORepDetalleIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADORepDetalleIdPagoAplicacion: TIntegerField
      FieldName = 'IdPagoAplicacion'
    end
    object ADORepDetalleFechaMovimiento: TDateTimeField
      FieldName = 'FechaMovimiento'
    end
    object ADORepDetalleConcepto: TStringField
      FieldName = 'Concepto'
      Size = 150
    end
    object ADORepDetalleCargos: TFMTBCDField
      FieldName = 'Cargos'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object ADORepDetalleAbonos: TFMTBCDField
      FieldName = 'Abonos'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object ppDBPplnDetalle: TppDBPipeline
    DataSource = dsDetalle
    UserName = 'dbpRepDetalle'
    Left = 168
    Top = 88
    MasterDataPipelineName = 'dbpReport'
  end
  object dsDetalle: TDataSource
    DataSet = ADORepDetalle
    Left = 96
    Top = 88
  end
end
