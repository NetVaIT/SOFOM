inherited dmCuentasXCobrar: TdmCuentasXCobrar
  Height = 466
  Width = 869
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    CommandText = 
      'select IdCuentaXCobrar, IdCuentaXCobrarEstatus, IdPersona,'#13#10' IdA' +
      'nexosAmortizaciones, Fecha, Importe, Impuesto, Interes, '#13#10'Total,' +
      ' Saldo from CuentasXCobrar '#13#10'--where idcuentaxcobrarEstatus =-1 ' +
      '-- precargada'
    Left = 48
    Top = 24
    object adodsMasterIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No.Cuenta X Cobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object adodsMasterIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIdAnexosAmortizaciones: TIntegerField
      FieldName = 'IdAnexosAmortizaciones'
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      Precision = 18
      Size = 6
    end
    object adodsMasterInteres: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object adodsMasterEstatusCXC: TStringField
      FieldKind = fkLookup
      FieldName = 'EstatusCXC'
      LookupDataSet = ADODSCXCEstatus
      LookupKeyFields = 'IdCuentaXCobrarEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaXCobrarEstatus'
      Size = 15
      Lookup = True
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
  end
  inherited ActionList: TActionList
    object actGeneraPreFacturas: TAction
      Caption = 'Generar PreFacturas'
      OnExecute = actGeneraPreFacturasExecute
    end
  end
  object ADOdsCXCDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarDetlle, IdCuentaXCobrar, '#13#10'IdCuentaXCobrar' +
      'Tipo, Identificador, Descripcion, '#13#10'Importe, Saldo from CuentasX' +
      'CobrarDetalle '#13#10'where IdCuentaXCobrar =:IDCuentaXCobrar'
    DataSource = DSMaster
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 96
    object ADOdsCXCDetalleIdCuentaXCobrarDetlle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetlle'
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
      Precision = 18
      Size = 6
    end
    object ADOdsCXCDetalleSaldo: TFMTBCDField
      FieldName = 'Saldo'
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
    Left = 40
    Top = 176
  end
  object ADODSCXCEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarEstatus, Identificador, Descripcion'#13#10'from ' +
      'CuentasXCobrarEstatus'
    Parameters = <>
    Left = 192
    Top = 96
  end
  object ADOSPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo,'#13#10 +
      ' IdSexo, IdEstadoCivil, IdPais, IdPoblacion, RFC, CURP,'#13#10' RazonS' +
      'ocial, Nombre, ApellidoPaterno, ApellidoMaterno,'#13#10'IdMetodoPago,I' +
      'dPersonaEstatus,NumCtaPagoCliente '#13#10'from Personas'
    Parameters = <>
    Left = 192
    Top = 176
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 168
    Top = 24
  end
  object DetallesCXCParaFacturar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaXCobrarDetlle, IdCuentaXCobrar, '#13#10'CXCD.IdCuentaXC' +
      'obrarTipo, CXCD.Identificador, CXCD.Descripcion, '#13#10'CXCD.Importe,' +
      ' CXCD.Saldo,  CXCTC.Facturar,  CXCTC.IdTipoContrato,'#13#10'CXCTC.EsIV' +
      'A,CXCTC.Temporalidad'#13#10'from CuentasXCobrarDetalle  CXCD '#13#10'inner j' +
      'oin CuentasXCobrarTiposConceptos CXCTC on CXCD.IdCuentaXCobrarTi' +
      'po=CXCTC.IdCuentaXCobrarTipo'#13#10' where  CXCTC.Facturar=1 and '#13#10'CXC' +
      'TC.EsIVA =0 and CXCD.IdCuentaXCobrar =:IDCuentaXCobrar'
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
    Left = 56
    Top = 256
    object DetallesCXCParaFacturarIdCuentaXCobrarDetlle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetlle'
      ReadOnly = True
    end
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
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarSaldo: TFMTBCDField
      FieldName = 'Saldo'
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
  end
  object ADOSumaIVA: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect SUM(CXCD.importe) from CuentasXCobrarDetalle  CXCD   -- p' +
      'ara confirmar valor de IVA'#13#10'inner join CuentasXCobrarTiposConcep' +
      'tos CXCTC on CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13 +
      #10' where CXCTC.Facturar=1 and CXCTC.EsIVA =1 '#13#10'and CXCD.IdCuentaX' +
      'Cobrar =:IDCuentaXCobrar'
    DataSource = DSMaster
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 192
    Top = 240
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
      'T_TB, CertificadoSAT_TB, FechaTimbrado_TB, IdCXC '#13#10' from CFDI C'#13 +
      #10'where fecha>DATEADD(MM, DATEDIFF(MM,0,GETDATE()), 0)'#13#10'order by ' +
      'IDCFDIESTATUS, Fecha '
    Parameters = <>
    Left = 456
    Top = 24
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
    object ADODtStPrefacturasCFDIIdCXC: TIntegerField
      FieldName = 'IdCXC'
    end
  end
  object ADODtStCFDIConceptosPref: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStCFDIConceptosPrefAfterPost
    OnNewRecord = ADODtStCFDIConceptosPrefNewRecord
    CommandText = 
      'select IdCFDIConcepto, IdCFDI, IdUnidadMedida, Cantidad, Unidad,' +
      #13#10' Descripcion, NoIdentifica, ValorUnitario, Importe, IdCXCItem ' +
      #13#10'from  CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
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
    Left = 464
    Top = 96
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
    object ADODtStCFDIConceptosPrefIdCXCItem: TIntegerField
      FieldName = 'IdCXCItem'
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
    Left = 728
    Top = 96
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
    Left = 456
    Top = 184
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
    Left = 728
    Top = 232
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 628
    Top = 241
  end
end
