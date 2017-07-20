inherited dmAplicacionesConsulta: TdmAplicacionesConsulta
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select PA.FechaAplicacion ,pa.importe, PR.FechaPago as FechaPago' +
      ','#13#10' PR.FolioPago, Pr.SeriePago,Cc.IdCuentaXCobrar NoCuentaXCobra' +
      'r,'#13#10' CC.FechaVencimiento as FechaCXC ,P.RazonSocial as Cliente,C' +
      'C.IDAnexo,A.DEscripcion Anexo,'#13#10'PA.IdPagoAplicacion, Pa.IdPago, ' +
      'PA.IdPersonaCliente,'#13#10'A.IdContrato, P.idMetodoPago , CC.IdCFDI, ' +
      #13#10'Ci.Serie SerieFactura, Ci.Folio FolioFactura -- jul 11/17'#13#10',CC' +
      '.Descripcion '#13#10'from PagosAplicaciones PA'#13#10'inner join Pagos PR on' +
      ' PA.IdPago=PR.IdPago'#13#10'inner join CuentasXCobrar CC on PA.IdCuent' +
      'aXCobrar =Cc.IdcuentaXCobrar'#13#10'inner join CFDI Ci on Ci.IdCFDI =C' +
      'C.IdCFDI -- jul 11/17'#13#10' inner join Anexos A on A.IdAnexo=cc.IdAn' +
      'exo '#13#10'inner join Personas P on P.IdPersona =Cc.IdPersona'
    object adodsMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsMasterNoCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No CuentaXCobrar'
      FieldName = 'NoCuentaXCobrar'
      ReadOnly = True
    end
    object adodsMasterFechaCXC: TDateTimeField
      DisplayLabel = 'Fecha Cta X Cobrar'
      FieldName = 'FechaCXC'
    end
    object adodsMasterFechaAplicacion: TDateTimeField
      DisplayLabel = 'Fecha Aplicaci'#243'n'
      FieldName = 'FechaAplicacion'
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fecha Pago'
      FieldName = 'FechaPago'
    end
    object adodsMasterSeriePago: TStringField
      DisplayLabel = 'Serie Pago'
      FieldName = 'SeriePago'
    end
    object adodsMasterFolioPago: TIntegerField
      DisplayLabel = 'Folio Pago'
      FieldName = 'FolioPago'
    end
    object adodsMasterimporte: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterIdPagoAplicacion: TAutoIncField
      FieldName = 'IdPagoAplicacion'
      ReadOnly = True
    end
    object adodsMasterIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object adodsMasterIDAnexo: TIntegerField
      FieldName = 'IDAnexo'
    end
    object adodsMasterAnexo: TStringField
      FieldName = 'Anexo'
      Size = 100
    end
    object adodsMasterIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object adodsMasteridMetodoPago: TIntegerField
      FieldName = 'idMetodoPago'
    end
    object adodsMasterSerieFactura: TStringField
      FieldName = 'SerieFactura'
    end
    object adodsMasterFolioFactura: TLargeintField
      FieldName = 'FolioFactura'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
    Top = 8
  end
  inherited ActionList: TActionList
    object ActAplicaMoratorioInteno: TAction
      OnExecute = ActAplicaMoratorioIntenoExecute
    end
    object ActCreaPagoDeposito: TAction
      Caption = 'Crea Pago Dep'#243'sito'
      OnExecute = ActCreaPagoDepositoExecute
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 28
    Top = 91
  end
  object ADODtstAplicacionesInternas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IDPagoAplicacionInterna, PAI.IDPagoAplicacion,'#13#10'PAI.IdCue' +
      'ntaXCobrarDetalle,  CXC.FechaVencimiento fechaCXC, CCd.Descripci' +
      'on as ItemCXC , ccd.Saldo saldoCXC,'#13#10' PAI.IDCFDI, IDCFDIConcepto' +
      ','#13#10'PAI.Importe ImportePagado'#13#10#13#10' from PagosAplicacionesInternas ' +
      'PAI'#13#10' inner join CuentasXCobrarDetalle CCD '#13#10'          on ccd.Id' +
      'CuentaXCobrarDEtalle=PAI.IdCuentaXCobrarDEtalle'#13#10' inner join Cue' +
      'ntasXCobrar CXC  '#13#10'          on CXC.IdCuentaXCobrar=CCD.IdCuenta' +
      'XCobrar'#13#10' where'#13#10' IDPagoAplicacion=:IDPagoAplicacion'
    DataSource = DSMaster
    IndexFieldNames = 'IDPagoAplicacion'
    MasterFields = 'IDPagoAplicacion'
    Parameters = <
      item
        Name = 'IDPagoAplicacion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10
      end>
    Left = 147
    Top = 91
    object ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField
      FieldName = 'IDPagoAplicacionInterna'
    end
    object ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField
      FieldName = 'IDPagoAplicacion'
    end
    object ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtstAplicacionesInternasIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtstAplicacionesInternasfechaCXC: TDateTimeField
      DisplayLabel = 'FechaCXC'
      FieldName = 'fechaCXC'
    end
    object ADODtstAplicacionesInternasItemCXC: TStringField
      FieldName = 'ItemCXC'
      Size = 100
    end
    object ADODtstAplicacionesInternassaldoCXC: TFMTBCDField
      DisplayLabel = 'Saldo CXC'
      FieldName = 'saldoCXC'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtstAplicacionesInternasImportePagado: TFMTBCDField
      DisplayLabel = 'Importe Pagado'
      FieldName = 'ImportePagado'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 148
    Top = 16
  end
  object ADODtStConfiguraciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select UltimoFolioPago, UltimaSeriePago from Configuraciones'
    Parameters = <>
    Left = 36
    Top = 227
    object ADODtStConfiguracionesUltimoFolioPago: TIntegerField
      FieldName = 'UltimoFolioPago'
    end
    object ADODtStConfiguracionesUltimaSeriePago: TStringField
      FieldName = 'UltimaSeriePago'
    end
  end
end
