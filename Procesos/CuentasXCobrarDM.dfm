inherited dmCuentasXCobrar: TdmCuentasXCobrar
  OldCreateOrder = True
  Height = 480
  Width = 850
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforeInsert = adodsMasterBeforeInsert
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdCuentaXCobrar, IdCuentaXCobrarBase, IdCuentaXCobrarEsta' +
      'tus, IdPersona, IdAnexosAmortizaciones, IdAnexo, IdCFDI, Fecha, ' +
      'FechaVencimiento, '#13#10'Descripcion, (Importe-descuento) as Importe,' +
      ' Descuento,  Impuesto, Interes, Total, Saldo, SaldoFactoraje, Es' +
      'Moratorio'#13#10'FROM CuentasXCobrar AS CXC'#13#10'WHERE EsMoratorio = 0'#13#10'an' +
      'd IdCuentaXCobrarRestructura is null -- dic 3 /18'#13#10'ORDER BY IdAn' +
      'exo, IdAnexosAmortizaciones'#13#10
    Left = 56
    Top = 24
    object adodsMasterIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'Cuenta por cobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdCuentaXCobrarBase: TIntegerField
      FieldName = 'IdCuentaXCobrarBase'
      Visible = False
    end
    object adodsMasterIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Required = True
      Visible = False
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsMasterIdAnexosAmortizaciones: TIntegerField
      FieldName = 'IdAnexosAmortizaciones'
      Visible = False
    end
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      Visible = False
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADOSPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 150
      Lookup = True
    end
    object adodsMasterContrato: TStringField
      FieldKind = fkLookup
      FieldName = 'Contrato'
      LookupDataSet = ADODtStAdicionalesContratoAnexo
      LookupKeyFields = 'IdAnexo'
      LookupResultField = 'Contrato'
      KeyFields = 'IdAnexo'
      Size = 100
      Lookup = True
    end
    object adodsMasterAnexo: TStringField
      FieldKind = fkLookup
      FieldName = 'Anexo'
      LookupDataSet = ADODtStAdicionalesContratoAnexo
      LookupKeyFields = 'IdAnexo'
      LookupResultField = 'Anexo'
      KeyFields = 'IdAnexo'
      Size = 100
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
      Required = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsMasterEstatusCXC: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'EstatusCXC'
      LookupDataSet = ADODSCXCEstatus
      LookupKeyFields = 'IdCuentaXCobrarEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaXCobrarEstatus'
      Size = 15
      Lookup = True
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
    object adodsMasterImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterInteres: TFMTBCDField
      FieldName = 'Interes'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoFactoraje: TFMTBCDField
      DisplayLabel = 'Saldo factoraje'
      FieldName = 'SaldoFactoraje'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEsMoratorio: TBooleanField
      DisplayLabel = 'Es moratorio'
      FieldName = 'EsMoratorio'
      Visible = False
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
  end
  inherited ActionList: TActionList
    Left = 328
    object actGeneraPreFacturas: TAction
      Caption = 'Generar Factura'
      OnExecute = actGeneraPreFacturasExecute
    end
    object ActActualizaMoratorios: TAction
      Caption = 'Actualiza Moratorios'
      OnExecute = ActActualizaMoratoriosExecute
    end
    object ActGeneraCuentasXCobrar: TAction
      Caption = 'Generar CXC'
      OnExecute = ActGeneraCuentasXCobrarExecute
    end
    object ActTotalesCXC: TAction
      Caption = 'TotalesCXC'
    end
    object ActRepCxCEstatusFactPendiente: TAction
      Caption = 'CXC Pendiente Factura'
      Hint = 'Reporte CXC pendientes de prefacturar o de emisi'#243'n de Factura'
      OnExecute = ActRepCxCEstatusFactPendienteExecute
    end
    object actEliminar: TAction
      Caption = '&Eliminar'
      Hint = 'Eliminar'
      ImageIndex = 12
      OnExecute = actEliminarExecute
      OnUpdate = actEliminarUpdate
    end
    object actAgregarCXCDetalle: TAction
      Caption = '&Insertar'
      Hint = 'Insertar'
      ImageIndex = 10
      OnExecute = actAgregarCXCDetalleExecute
    end
  end
  object ADOdsCXCDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADOdsCXCDetalleAfterPost
    AfterDelete = ADOdsCXCDetalleAfterDelete
    CommandText = 
      'select IdCuentaXCobrarDetalle, IdCuentaXCobrar, '#13#10'IdCuentaXCobra' +
      'rTipo, Identificador, Descripcion, '#13#10' (Importe-descuento) as Imp' +
      'orte, Descuento,'#13#10'Saldo, SaldoFactoraje,'#13#10' PagosAplicados, Pagos' +
      'AplicadosFactoraje'#13#10' from CuentasXCobrarDetalle '#13#10'where IdCuenta' +
      'XCobrar =:IDCuentaXCobrar'
    DataSource = DSMaster
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 168
    Top = 80
    object ADOdsCXCDetalleIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADOdsCXCDetalleIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADOdsCXCDetalleIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADOdsCXCDetalleIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADOdsCXCDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADOdsCXCDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADOdsCXCDetalleDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
    object ADOdsCXCDetalleSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADOdsCXCDetalleSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADOdsCXCDetallePagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADOdsCXCDetallePagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object ADODsCXCTiposConc: TADODataSet
    Connection = _dmConection.ADOConnection
    CommandText = 
      'select IdCuentaXCobrarTipo, IdTipoContrato, Identificador,'#13#10' Des' +
      'cripcion, Facturar, Acumula, AcumulaAQuien, EsIVA,'#13#10' BaseIVA, Es' +
      'tadoCuenta, Fase, Temporalidad'#13#10' from CuentasXCobrarTiposConcept' +
      'os'
    Parameters = <>
    Left = 168
    Top = 136
  end
  object ADODSCXCEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarEstatus, Identificador, Descripcion'#13#10'from ' +
      'CuentasXCobrarEstatus'
    Parameters = <>
    Left = 56
    Top = 80
  end
  object ADOSPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RazonSocial FROM Personas'#13#10'WHERE IdRolTipo = 3' +
      #13#10'ORDER BY RazonSocial'
    Parameters = <>
    Left = 56
    Top = 128
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = DSMasterDataChange
    Left = 168
    Top = 24
  end
  object DetallesCXCParaFacturar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarDetalle, IdCuentaXCobrar, '#13#10'CXCD.IdCuentaX' +
      'CobrarTipo, CXCD.Identificador, CXCD.Descripcion, '#13#10'CXCD.Importe' +
      ', CXCD.Saldo,  CXCTC.Facturar,  CXCTC.IdTipoContrato,'#13#10'CXCTC.EsI' +
      'VA,CXCTC.Temporalidad, CXCTC.EsMoratorios'#13#10'from CuentasXCobrarDe' +
      'talle  CXCD '#13#10'inner join CuentasXCobrarTiposConceptos CXCTC on C' +
      'XCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13#10' where  CXCTC' +
      '.Facturar=1 and'#13#10'CXCTC.EsIVA =0 and CXCD.IdCuentaXCobrar =:IDCue' +
      'ntaXCobrar'
    DataSource = DSMaster
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 616
    Top = 240
    object DetallesCXCParaFacturarIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object DetallesCXCParaFacturarIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object DetallesCXCParaFacturarIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object DetallesCXCParaFacturarDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object DetallesCXCParaFacturarImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object DetallesCXCParaFacturarIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object DetallesCXCParaFacturarEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object DetallesCXCParaFacturarTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object DetallesCXCParaFacturarIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object DetallesCXCParaFacturarEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
  end
  object ADOSumaIVA: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect SUM(CXCD.importe) as IVAReg  from CuentasXCobrarDetalle  ' +
      'CXCD   -- para confirmar valor de IVA'#13#10'inner join CuentasXCobrar' +
      'TiposConceptos CXCTC on CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaX' +
      'CobrarTipo'#13#10' where CXCTC.Facturar=1 and CXCTC.EsIVA =1 -- and CX' +
      'CTC.EsMoratorios=0'#13#10'and CXCD.IdCuentaXCobrar =:IDCuentaXCobrar'
    MasterFields = 'IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 568
    Top = 192
  end
  object ADODtStPrefacturasCFDI: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeOpen = ADODtStPrefacturasCFDIBeforeOpen
    OnNewRecord = ADODtStPrefacturasCFDINewRecord
    CommandText = 
      'select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago,'#13#10' IdMetodo' +
      'Pago, C.IdMoneda, IdPersonaEmisor, IdPersonaReceptor, '#13#10'IdDocume' +
      'ntoCBB, IdDocumentoXML, IdDocumentoPDF, '#13#10'IdCFDIEstatus, IdCFDIF' +
      'acturaGral, IdClienteDomicilio,'#13#10' CuentaCte, TipoCambio, TipoCom' +
      'p, Serie, Folio, Fecha,'#13#10' LugarExpedicion, Sello, CondPago, NoCe' +
      'rtificado, Certificado,'#13#10' SubTotal, Descto, MotivoDescto, Total,' +
      ' NumCtaPago, '#13#10'CadenaOriginal, TotalImpuestoRetenido, TotalImpue' +
      'stoTrasladado, '#13#10'SaldoDocumento, FechaCancelacion, Observaciones' +
      ', '#13#10'PorcentajeIVA, EmailCliente, UUID_TB, SelloCFD_TB, '#13#10'SelloSA' +
      'T_TB, CertificadoSAT_TB, FechaTimbrado_TB,'#13#10' IdCuentaXCobrar, Sa' +
      'ldoFactoraje'#13#10' from CFDI C'#13#10'where fecha>DATEADD(MM, DATEDIFF(MM,' +
      '0,[dbo].getDateAux()), 0)'#13#10'order by IDCFDIESTATUS, Fecha '
    Parameters = <>
    Left = 552
    Top = 64
    object ADODtStPrefacturasCFDIIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStPrefacturasCFDIIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStPrefacturasCFDIIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
    end
    object ADODtStPrefacturasCFDIIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtStPrefacturasCFDIIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object ADODtStPrefacturasCFDIIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object ADODtStPrefacturasCFDIIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStPrefacturasCFDIIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object ADODtStPrefacturasCFDIIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object ADODtStPrefacturasCFDIIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object ADODtStPrefacturasCFDIIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStPrefacturasCFDIIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
    end
    object ADODtStPrefacturasCFDIIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStPrefacturasCFDICuentaCte: TStringField
      FieldName = 'CuentaCte'
      Size = 30
    end
    object ADODtStPrefacturasCFDITipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object ADODtStPrefacturasCFDITipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object ADODtStPrefacturasCFDISerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStPrefacturasCFDIFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStPrefacturasCFDIFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStPrefacturasCFDILugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object ADODtStPrefacturasCFDISello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object ADODtStPrefacturasCFDICondPago: TStringField
      FieldName = 'CondPago'
      Size = 250
    end
    object ADODtStPrefacturasCFDINoCertificado: TStringField
      FieldName = 'NoCertificado'
    end
    object ADODtStPrefacturasCFDICertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object ADODtStPrefacturasCFDISubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object ADODtStPrefacturasCFDIDescto: TFloatField
      FieldName = 'Descto'
    end
    object ADODtStPrefacturasCFDIMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Size = 50
    end
    object ADODtStPrefacturasCFDITotal: TFloatField
      FieldName = 'Total'
    end
    object ADODtStPrefacturasCFDINumCtaPago: TStringField
      FieldName = 'NumCtaPago'
      LookupDataSet = ADOdsCXCDetalle
    end
    object ADODtStPrefacturasCFDICadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Size = 2000
    end
    object ADODtStPrefacturasCFDITotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
    end
    object ADODtStPrefacturasCFDITotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object ADODtStPrefacturasCFDISaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
    end
    object ADODtStPrefacturasCFDIFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object ADODtStPrefacturasCFDIObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStPrefacturasCFDIPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
    end
    object ADODtStPrefacturasCFDIEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object ADODtStPrefacturasCFDIUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object ADODtStPrefacturasCFDISelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Size = 400
    end
    object ADODtStPrefacturasCFDISelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Size = 250
    end
    object ADODtStPrefacturasCFDICertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
    end
    object ADODtStPrefacturasCFDIFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
    end
    object ADODtStPrefacturasCFDIIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStPrefacturasCFDISaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCFDIConceptosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStCFDIConceptosPrefAfterPost
    OnNewRecord = ADODtStCFDIConceptosPrefNewRecord
    CommandText = 
      'select IdCFDIConcepto, IdCFDI, IdUnidadMedida, Cantidad, Unidad,' +
      #13#10' Descripcion, NoIdentifica, ValorUnitario, Importe, IdCuentaXC' +
      'obrarDetalle'#13#10'from  CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
    DataSource = DSPrefacturasCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '8534'
      end>
    Left = 560
    Top = 136
    object ADODtStCFDIConceptosPrefIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIConceptosPrefIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStCFDIConceptosPrefCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStCFDIConceptosPrefUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStCFDIConceptosPrefDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStCFDIConceptosPrefNoIdentifica: TStringField
      DisplayLabel = 'No Identifica'
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStCFDIConceptosPrefValorUnitario: TFMTBCDField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'ValorUnitario'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosPrefImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosPrefIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCFDIConceptosPrefIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
  end
  object ADODtStCFDIImpuestosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, TipoImp, Impuesto, Tasa, Importe  '#13#10'from CFDIImpu' +
      'estos where idCFDI=:IDCFDI'
    DataSource = DSPrefacturasCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 600
    Top = 96
    object ADODtStCFDIImpuestosPrefIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIImpuestosPrefTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object ADODtStCFDIImpuestosPrefImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 10
    end
    object ADODtStCFDIImpuestosPrefTasa: TFloatField
      FieldName = 'Tasa'
    end
    object ADODtStCFDIImpuestosPrefImporte: TFloatField
      FieldName = 'Importe'
    end
  end
  object DSPrefacturasCFDI: TDataSource
    DataSet = ADODtStPrefacturasCFDI
    Left = 576
    Top = 24
  end
  object ADODtStPersonaEmisor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.idpersona, Pe.RazonSocial,Pe.RFC,'#13#10'Pe.IdMetodoPago,Pe.' +
      'NumCtaPagoCliente ,'#13#10'Pe.IDRegimenFiscal,RF.Descripcion RegimenFi' +
      'scalEmisor,'#13#10'PD.IdPersonaDomicilio,  Pd.IdDomicilio, '#13#10'Pd.IdDomi' +
      'cilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.NoInter' +
      'ior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,'#13#10' P.De' +
      'scripcion Poblacion,'#13#10' E.Descripcion Estado,'#13#10'Pa.descripcion Pai' +
      's'#13#10#13#10'from  Personas Pe'#13#10'Left Join PersonasDomicilios PD on Pe.Id' +
      'Persona=PD.IdPersona '#13#10'and PD.idDomicilioTipo=4'#13#10'Left join Domic' +
      'ilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P' +
      ' on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on M.idm' +
      'unicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=D.ides' +
      'tado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'Left join Regim' +
      'enesFiscales RF on RF.idRegimenFiscal=Pe.IdRegimenFiscal'#13#10'where ' +
      'Pe.IdRolTipo=9 '
    IndexFieldNames = 'idpersona'
    MasterFields = 'IdPersonaEmisor'
    Parameters = <>
    Left = 688
    Top = 120
    object ADODtStPersonaEmisoridpersona: TAutoIncField
      FieldName = 'idpersona'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaEmisorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStPersonaEmisorNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStPersonaEmisorPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStPersonaEmisorCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStPersonaEmisorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStPersonaEmisorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStPersonaEmisorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStPersonaEmisorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStPersonaEmisorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStPersonaEmisorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStPersonaEmisorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStPersonaEmisorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField
      FieldName = 'RegimenFiscalEmisor'
      Size = 150
    end
    object ADODtStPersonaEmisorIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.' +
      'NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,' +
      ' P.Descripcion Poblacion, E.Descripcion Estado,'#13#10'Pa.descripcion ' +
      'Pais'#13#10'from PersonasDomicilios PD'#13#10'inner join Domicilios D on PD.' +
      'IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P on P.idPoblac' +
      'ion=d.IdPoblacion'#13#10'left join Municipios M on M.idmunicipio=D.IdM' +
      'unicipio'#13#10'Left Join Estados E on E.idestado=D.idestado'#13#10'Left Joi' +
      'n Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10'Where idpersona=:IdPersona ' +
      #13#10#13#10
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 680
    Top = 48
    object ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccionesClienteIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccionesClienteIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccionesClientePredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccionesClienteCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStDireccionesClienteNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccionesClienteNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccionesClienteColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccionesClienteCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccionesClienteMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccionesClientePoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccionesClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccionesClientePais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccionesClienteDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
  object ADOdsAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 672
    Top = 200
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 324
    Top = 145
  end
  object ADOStrprcActGralMoratorios: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenMoratorios;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 72
    Top = 392
  end
  object ADOStrdPrcGeneraCXC: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenAmortizaciones;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FechaCorte'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 72
    Top = 328
  end
  object ADODTSTCXCMoratorios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforeInsert = adodsMasterBeforeInsert
    CommandText = 
      'select IdCuentaXCobrar, IdCuentaXCobrarEstatus, IdPersona,'#13#10' IdA' +
      'nexosAmortizaciones, CXC.Fecha,CXC.FechaVencimiento,'#13#10' Importe, ' +
      'CXC.Impuesto,'#13#10'CXC. Interes, CXC.Total, Saldo, SaldoFactoraje, I' +
      'dCFDI ,'#13#10'CXC.IdAnexo, CXC.IdCuentaXCobrarBase, '#39'Inter'#233's Moratori' +
      'o '#39' as Descripcion'#13#10'from CuentasXCobrar CXC '#13#10'where EsMoratorio ' +
      '=1 and CXC.IdCuentaXCobrarBase=:IdCuentaXCobrar'#13#10'order by   CXC.' +
      'Fecha'#13#10#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdCuentaXCobrarBase'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 104
    Top = 256
    object ADODTSTCXCMoratoriosIdCuentaXCobrar: TAutoIncField
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object ADODTSTCXCMoratoriosIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object ADODTSTCXCMoratoriosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODTSTCXCMoratoriosIdAnexosAmortizaciones: TIntegerField
      FieldName = 'IdAnexosAmortizaciones'
    end
    object ADODTSTCXCMoratoriosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODTSTCXCMoratoriosDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 18
    end
    object ADODTSTCXCMoratoriosImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODTSTCXCMoratoriosImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODTSTCXCMoratoriosInteres: TFMTBCDField
      FieldName = 'Interes'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODTSTCXCMoratoriosTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODTSTCXCMoratoriosSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODTSTCXCMoratoriosSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODTSTCXCMoratoriosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODTSTCXCMoratoriosIdCuentaXCobrarBase: TIntegerField
      FieldName = 'IdCuentaXCobrarBase'
    end
    object ADODTSTCXCMoratoriosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODTSTCXCMoratoriosFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
  end
  object adospUpdCuentasXCobrarTotales: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdCuentasXCobrarTotales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Temporal'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 232
    Top = 392
  end
  object ADODtStAdicionalesContratoAnexo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforeInsert = adodsMasterBeforeInsert
    CommandText = 
      'select A.IdAnexo, C.IdContrato, A.Identificador as Anexo, C.Iden' +
      'tificador As Contrato'#13#10' from Anexos A, Contratos C '#13#10'where A.idC' +
      'ontrato=C.IdContrato '
    Parameters = <>
    Left = 104
    Top = 192
    object ADODtStAdicionalesContratoAnexoIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object ADODtStAdicionalesContratoAnexoIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
    end
    object ADODtStAdicionalesContratoAnexoAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object ADODtStAdicionalesContratoAnexoContrato: TStringField
      FieldName = 'Contrato'
    end
  end
  object ADOQryAux2: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 324
    Top = 209
  end
  object ADODtStSelMetPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta, '#13#10 +
      'ClaveSAT2016 from MetodosPago'#13#10'where idmetodoPago>0'
    Parameters = <>
    Left = 608
    Top = 168
    object ADODtStSelMetPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtStSelMetPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStSelMetPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStSelMetPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
    object ADODtStSelMetPagoClaveSAT2016: TStringField
      FieldName = 'ClaveSAT2016'
      Size = 10
    end
  end
  object adospDelCuentasXCobrar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelCuentasXCobrar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 328
  end
  object adospGenCuentasXCobrarDetalle: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenCuentasXCobrarDetalle;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrarTipoBase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DescripcionBase'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@ImporteBase'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrarDetalle'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 376
    Top = 336
  end
  object adocUpdEstatusCXC: TADOCommand
    CommandText = 
      'UPDATE CuentasXCobrar SET IdCuentaXCobrarEstatus = :IdCuentaXCob' +
      'rarEstatus WHERE IdCuentaXCobrar = :IdCuentaXCobrar'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCuentaXCobrarEstatus'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 384
    Top = 392
  end
end
