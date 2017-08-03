inherited DMListaCXCPendFactPDF: TDMListaCXCPendFactPDF
  inherited adodsReport: TADODataSet
    CommandText = 
      'select CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrarEstatus,Cxc.IdPer' +
      'sona, P.RazonSocial,'#13#10' IdAnexosAmortizaciones, CXC.Fecha, Import' +
      'e, CXC.Impuesto,'#13#10'CXC. Interes, CXC.Total, Saldo, CXC.SaldoFacto' +
      'raje, Cxc.IdCFDI ,'#13#10'CXC.IdAnexo, CXC.IdCuentaXCobrarBase,CXC.Fec' +
      'haVencimiento, EsMoratorio'#13#10', CXC.Descripcion, A.identificador a' +
      's Anexo,'#13#10'cXCe.Descripcion as EstatusCXC, ci.IdCFDIEstatus, Ce.D' +
      'escripcion as EstatusFactura'#13#10',  case when (Cxc.IdCuentaXCobrarE' +
      'status=-1)  then '#39'CXC Pendiente de Facturar'#39' '#13#10'   else case when' +
      ' (Cxc.IdCuentaXCobrarEstatus=0 and ci.IdCFDIEstatus =1 )  then '#39 +
      'CXC Prefacturada y Factura Pendiente de Timbre'#39' '#13#10'   else case w' +
      'hen (Cxc.IdCuentaXCobrarEstatus=3 and ci.IdCFDIEstatus =1 and Es' +
      'Moratorio=1 )  then '#39'Moratorios Pagados, Factura pendiente de Ti' +
      'mbrar'#39#13#10'   else case when (Cxc.IdCuentaXCobrarEstatus=3 and ci.I' +
      'dCFDIEstatus =1 )  then '#39'CXC Pagada, Factura pendiente de Timbra' +
      'r'#39#13#10'end end end'#13#10'end as Observacion'#13#10'from CuentasXCobrar CXC '#13#10#13 +
      #10'inner join CuentasXCobrarEstatus CXCE on CXCE.IdCuentaXCobrarEs' +
      'tatus = CXC.IdCuentaXCobrarEstatus'#13#10'inner join Personas P on P.i' +
      'dPersona=CXC.idPersona'#13#10'left Join Anexos A on A.idanexo=CXC.IdAn' +
      'exo'#13#10'left  join CFDI ci on ci.Idcfdi=cxc.IdCFDI'#13#10'left join CFDIE' +
      'status Ce on ce.IdCFDIEstatus=ci.IdCFDIEstatus'#13#10'where (( (CXC.id' +
      'cuentaxcobrarEstatus in (-1 ,0) or  (CXC.idcuentaxcobrarEstatus ' +
      '= 3 and ci.IdCFDIEstatus=1)) and EsMoratorio=0) '#13#10'   or (EsMorat' +
      'orio=1 and CXC.idcuentaxcobrarEstatus = 3 and ci.IdCFDIEstatus=1' +
      '))'#13#10'-- and EsMoratorio=0'#13#10'order by   IdAnexo, IDAnexosAmortizaci' +
      'ones'#13#10
    Top = 16
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279400
    DataPipelineName = 'dbpReport'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 25400
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Caption = 
          '                          Reporte de Estatus de Cuentas x Cobrar' +
          ' y                                                              ' +
          '          Facturas asociadas '
        TextAlignment = taLeftJustified
        WordWrap = True
        VerticalAlignment = avCenter
        mmLeft = 44978
        mmWidth = 216694
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'No.CXC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 91301
        mmTop = 20638
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 102674
        mmTop = 20638
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 127545
        mmTop = 20638
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'EstatusCXC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 143420
        mmTop = 20638
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Estatus Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 168797
        mmTop = 20638
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Observaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 195543
        mmTop = 20638
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 7938
        mmTop = 20638
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Anexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 65371
        mmTop = 20108
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 6615
        mmLeft = 6350
        mmTop = 24077
        mmWidth = 258763
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'IdCuentaXCobrar'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 91298
        mmTop = 794
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Descripcion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 102671
        mmTop = 794
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Fecha'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 127542
        mmTop = 794
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'EstatusCXC'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 143420
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'EstatusFactura'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 168797
        mmTop = 794
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'Observacion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 195543
        mmTop = 794
        mmWidth = 69586
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'RazonSocial'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 7938
        mmTop = 794
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Anexo'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 65368
        mmTop = 794
        mmWidth = 23283
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
end
