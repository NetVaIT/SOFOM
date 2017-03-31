inherited dmFacturas: TdmFacturas
  OldCreateOrder = True
  Height = 578
  Width = 711
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeOpen = adodsMasterBeforeOpen
    AfterOpen = adodsMasterAfterOpen
    OnNewRecord = adodsMasterNewRecord
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
      'ldoFactoraje'#13#10' from CFDI C'#13#10'-- where fecha>DATEADD(MM, DATEDIFF(' +
      'MM,0,GETDATE()), 0)'#13#10'order by IDCFDIESTATUS, Fecha '
    Left = 40
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object adodsMasterIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMasterIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object adodsMasterIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
      OnChange = adodsMasterIdPersonaReceptorChange
    end
    object adodsMasterIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object adodsMasterIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object adodsMasterIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object adodsMasterIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object adodsMasterIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
    end
    object adodsMasterIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object adodsMasterCuentaCte: TStringField
      FieldName = 'CuentaCte'
      Size = 30
    end
    object adodsMasterTipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object adodsMasterTipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object adodsMasterSerie: TStringField
      FieldName = 'Serie'
    end
    object adodsMasterFolio: TLargeintField
      FieldName = 'Folio'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterLugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object adodsMasterSello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object adodsMasterCondPago: TStringField
      FieldName = 'CondPago'
      Size = 250
    end
    object adodsMasterNoCertificado: TStringField
      FieldName = 'NoCertificado'
    end
    object adodsMasterCertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object adodsMasterSubTotal: TFloatField
      FieldName = 'SubTotal'
      currency = True
    end
    object adodsMasterDescto: TFloatField
      FieldName = 'Descto'
    end
    object adodsMasterMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Size = 50
    end
    object adodsMasterTotal: TFloatField
      FieldName = 'Total'
      currency = True
    end
    object adodsMasterNumCtaPago: TStringField
      FieldName = 'NumCtaPago'
    end
    object adodsMasterCadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Size = 2000
    end
    object adodsMasterTotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
      currency = True
    end
    object adodsMasterTotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
      currency = True
    end
    object adodsMasterSaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
      currency = True
    end
    object adodsMasterFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
    end
    object adodsMasterEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object adodsMasterUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object adodsMasterSelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Size = 400
    end
    object adodsMasterSelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Size = 250
    end
    object adodsMasterCertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
    end
    object adodsMasterFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStPersonaReceptor
      LookupKeyFields = 'idpersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaReceptor'
      Size = 150
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = ADODtStCFDIEstatus
      LookupKeyFields = 'IdCFDIEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDIEstatus'
      Lookup = True
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 50
      Lookup = True
    end
    object adodsMasterMetPagoClaveSAT: TStringField
      FieldKind = fkLookup
      FieldName = 'MetPagoClaveSAT'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'ClaveSAT2016'
      KeyFields = 'IdMetodoPago'
      Size = 10
      Lookup = True
    end
    object adodsMasterClaveMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveMoneda'
      LookupDataSet = ADODtStMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Identificador'
      KeyFields = 'IdMoneda'
      Size = 5
      Lookup = True
    end
    object adodsMasterTipoDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoDocumento'
      LookupDataSet = ADODtStTiposDocumentos
      LookupKeyFields = 'IdCFDITipoDocumento'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDITipoDocumento'
      Size = 15
      Lookup = True
    end
    object adodsMasterDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
    object adodsMasterDireccionC: TStringField
      FieldKind = fkLookup
      FieldName = 'DireccionC'
      LookupDataSet = ADODtStDireccionesCliente
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'DirCompleta'
      KeyFields = 'IdClienteDomicilio'
      Size = 150
      Lookup = True
    end
    object adodsMasterIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object adodsMasterSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 344
  end
  inherited ActionList: TActionList
    object actProcesaFactura: TAction
      Caption = 'actProcesaFactura'
      OnExecute = actProcesaFacturaExecute
    end
    object ActImprimeFactura: TAction
      Caption = 'ActImprimeFactura'
      OnExecute = ActImprimeFacturaExecute
    end
    object ActCancelarCFDI: TAction
      Caption = 'Cancelar CFDI'
      OnExecute = ActCancelarCFDIExecute
    end
  end
  object ADODtStCFDIConceptos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeInsert = ADODtStCFDIConceptosBeforeInsert
    AfterPost = ADODtStCFDIConceptosAfterPost
    AfterDelete = ADODtStCFDIConceptosAfterDelete
    OnNewRecord = ADODtStCFDIConceptosNewRecord
    CommandText = 
      'select IdCFDIConcepto, IdCFDI, IdUnidadMedida, Cantidad, Unidad,' +
      #13#10' Descripcion, NoIdentifica, ValorUnitario, Importe, IdCuentaXC' +
      'obrarDetalle'#13#10'from  CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
    DataSource = DSMaster
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
    Left = 40
    Top = 88
    object ADODtStCFDIConceptosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIConceptosIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStCFDIConceptosCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = ADODtStCFDIConceptosValorUnitarioChange
    end
    object ADODtStCFDIConceptosUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStCFDIConceptosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStCFDIConceptosNoIdentifica: TStringField
      DisplayLabel = 'No Identifica'
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStCFDIConceptosValorUnitario: TFMTBCDField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'ValorUnitario'
      OnChange = ADODtStCFDIConceptosValorUnitarioChange
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 176
    Top = 24
  end
  object ADODtStCFDIImpuestos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, TipoImp, Impuesto, Tasa, Importe  '#13#10'from CFDIImpu' +
      'estos where idCFDI=:IDCFDI'
    DataSource = DSMaster
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
    Left = 176
    Top = 88
    object ADODtStCFDIImpuestosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIImpuestosTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object ADODtStCFDIImpuestosImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 10
    end
    object ADODtStCFDIImpuestosTasa: TFloatField
      FieldName = 'Tasa'
    end
    object ADODtStCFDIImpuestosImporte: TFloatField
      FieldName = 'Importe'
    end
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
    Left = 320
    Top = 160
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
  object ADODtStPersonaReceptor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.idpersona, Pe.RazonSocial,Pe.RFC,'#13#10'Pe.IdMetodoPago ,Pe' +
      '.NumCtaPagoCliente ,'#13#10'PD.IdPersonaDomicilio,  Pd.IdDomicilio, '#13#10 +
      'Pd.IdDomicilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, ' +
      'D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipi' +
      'o,'#13#10' P.Descripcion Poblacion,'#13#10' E.Descripcion Estado,'#13#10'Pa.descri' +
      'pcion Pais'#13#10#13#10'from  Personas Pe'#13#10'Left Join PersonasDomicilios PD' +
      ' on Pe.IdPersona=PD.IdPersona'#13#10'Left join Domicilios D on PD.IDDo' +
      'micilio=D.IDDomicilio'#13#10'Left Join Poblaciones P on P.idPoblacion=' +
      'd.IdPoblacion'#13#10'left join Municipios M on M.idmunicipio=D.IdMunic' +
      'ipio'#13#10'Left Join Estados E on E.idestado=D.idestado'#13#10'Left Join Pa' +
      'ises Pa on Pa.idpais=D.Idpais'#13#10'where Pe.iDRolTipo=3 and Pe.IdPer' +
      'sona>0 and Pe.IdPersonaEstatus=1'#13#10'order by Pe.RazonSocial'
    Parameters = <>
    Left = 315
    Top = 232
    object ADODtStPersonaReceptoridpersona: TAutoIncField
      FieldName = 'idpersona'
      ReadOnly = True
    end
    object ADODtStPersonaReceptorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaReceptorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStPersonaReceptorNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStPersonaReceptorIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStPersonaReceptorIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStPersonaReceptorIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStPersonaReceptorPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStPersonaReceptorCalle: TStringField
      DisplayWidth = 50
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStPersonaReceptorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStPersonaReceptorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStPersonaReceptorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStPersonaReceptorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStPersonaReceptorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStPersonaReceptorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStPersonaReceptorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStPersonaReceptorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStPersonaReceptorIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
  end
  object ADODtStBuscaFolioSerie: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoDocumento, Descripcion, SerieDoc, FolioDoc, '#13#10'T' +
      'ipoComprobante from CFDITipoDocumento'#13#10'where IdCFDITipoDocumento' +
      '=:IdCFDITipoDocumento'
    Parameters = <
      item
        Name = 'IdCFDITipoDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 496
    Top = 80
    object ADODtStBuscaFolioSerieIdCFDITipoDocumento: TAutoIncField
      FieldName = 'IdCFDITipoDocumento'
      ReadOnly = True
    end
    object ADODtStBuscaFolioSerieDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStBuscaFolioSerieSerieDoc: TStringField
      FieldName = 'SerieDoc'
    end
    object ADODtStBuscaFolioSerieFolioDoc: TLargeintField
      FieldName = 'FolioDoc'
    end
    object ADODtStBuscaFolioSerieTipoComprobante: TStringField
      FieldName = 'TipoComprobante'
      Size = 10
    end
  end
  object ADODtStCFDIEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDIEstatus, Identificador, Descripcion from CFDIEstatu' +
      's'
    Parameters = <>
    Left = 40
    Top = 160
  end
  object ADODtStFormasPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IDCFDIFormaPago, Identificador, Descripcion from CFDIForm' +
      'asPago'
    Parameters = <>
    Left = 40
    Top = 216
    object ADODtStFormasPagoIDCFDIFormaPago: TAutoIncField
      FieldName = 'IDCFDIFormaPago'
      ReadOnly = True
    end
    object ADODtStFormasPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADODtStFormasPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADODtStMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta, Cl' +
      'aveSAT2016 '#13#10' from MetodosPago where idMetodoPago>0'
    Parameters = <>
    Left = 40
    Top = 264
    object ADODtStMetodoPagoIdMetodoPago: TAutoIncField
      FieldName = 'IdMetodoPago'
      ReadOnly = True
    end
    object ADODtStMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
    object ADODtStMetodoPagoClaveSAT2016: TStringField
      FieldName = 'ClaveSAT2016'
      Size = 10
    end
  end
  object ADODtStMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, IdPais, Identificador, Descripcion from Monedas'
    Parameters = <>
    Left = 40
    Top = 328
  end
  object ADODtStTiposDocumentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoDocumento, Descripcion, SerieDoc, FolioDoc, Tip' +
      'oComprobante from CFDITipoDocumento'
    Parameters = <>
    Left = 48
    Top = 392
    object ADODtStTiposDocumentosIdCFDITipoDocumento: TAutoIncField
      FieldName = 'IdCFDITipoDocumento'
      ReadOnly = True
    end
    object ADODtStTiposDocumentosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStTiposDocumentosSerieDoc: TStringField
      FieldName = 'SerieDoc'
    end
    object ADODtStTiposDocumentosFolioDoc: TLargeintField
      FieldName = 'FolioDoc'
    end
    object ADODtStTiposDocumentosTipoComprobante: TStringField
      FieldName = 'TipoComprobante'
      Size = 10
    end
  end
  object adodsArchivosCerKey: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdDocumentoCER, IdDocumentoKEY, Clave, '#13#10'Venci' +
      'miento, CER.nombreArchivo NomCert, CER.IdArchivo IdCert, CER.Arc' +
      'hivo ArchiCer, '#13#10'LLave.nombreArchivo NomKey, llave.IdArchivo IdK' +
      'ey, Llave.Archivo  ArchiKey '#13#10' from PersonasCSD '#13#10'inner join Doc' +
      'umentos Cer on CER.IDdocumento=IDDocumentoCER'#13#10'inner join Docume' +
      'ntos Llave on llave.iddocumento =IDDocumentoKey'#13#10'where idPersona' +
      '= :idpersona'
    Parameters = <
      item
        Name = 'idpersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 320
    Top = 320
    object adodsArchivosCerKeyIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsArchivosCerKeyIdDocumentoCER: TIntegerField
      FieldName = 'IdDocumentoCER'
    end
    object adodsArchivosCerKeyIdDocumentoKEY: TIntegerField
      FieldName = 'IdDocumentoKEY'
    end
    object adodsArchivosCerKeyClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsArchivosCerKeyVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object adodsArchivosCerKeyNomCert: TStringField
      FieldName = 'NomCert'
      Size = 200
    end
    object adodsArchivosCerKeyIdCert: TGuidField
      FieldName = 'IdCert'
      FixedChar = True
      Size = 38
    end
    object adodsArchivosCerKeyArchiCer: TBlobField
      FieldName = 'ArchiCer'
    end
    object adodsArchivosCerKeyNomKey: TStringField
      FieldName = 'NomKey'
      Size = 200
    end
    object adodsArchivosCerKeyIdKey: TGuidField
      FieldName = 'IdKey'
      FixedChar = True
      Size = 38
    end
    object adodsArchivosCerKeyArchiKey: TBlobField
      FieldName = 'ArchiKey'
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    Parameters = <>
    Left = 440
    Top = 320
    object adodsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsDocumentoIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsDocumentoIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsDocumentoIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsDocumentoArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 316
    Top = 393
  end
  object ADODSAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.idPersona, P.RazonSocial, P.RFC, PD.identificador, PD.I' +
      'dPersonaDomicilio, D.Calle, D.NoExterior,d.NoInterior,D.CodigoPo' +
      'stal,'#13#10'PA.Descripcion as Pais, E.Descripcion as Estado, M.Descri' +
      'pcion as Municipio, PO.Descripcion as Poblacion'#13#10'  from Personas' +
      ' P'#13#10' inner join  PersonasDomicilios PD on P.idPersona=PD.IdPerso' +
      'na '#13#10' inner join Domicilios D on D.IDDomicilio=PD.IdDomicilio'#13#10' ' +
      'inner join Paises PA on PA.IdPais=d.IdPais'#13#10' inner join Estados ' +
      'E on E.IdEstado =D.IdEstado'#13#10' inner join Municipios M on  M.IdMu' +
      'nicipio=D.IdMunicipio'#13#10' left join Poblaciones PO on PO.IdPoblaci' +
      'on =D.IdPoblacion'#13#10' '#13#10' '#13#10' where idRol=1 and P.IdPersonaEstatus=1' +
      ' or P.IdPersonaEstatus is null'
    Parameters = <>
    Left = 432
    Top = 392
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesClienteCalcFields
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.' +
      'NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,' +
      ' P.Descripcion Poblacion, E.Descripcion Estado,'#13#10'Pa.descripcion ' +
      'Pais'#13#10'from PersonasDomicilios PD'#13#10'inner join Domicilios D on PD.' +
      'IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P on P.idPoblac' +
      'ion=d.IdPoblacion'#13#10'left join Municipios M on M.idmunicipio=D.IdM' +
      'unicipio'#13#10'Left Join Estados E on E.idestado=D.idestado'#13#10'Left Joi' +
      'n Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10#13#10#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdPersonaDomicilio'
    MasterFields = 'IdClienteDomicilio'
    Parameters = <>
    Left = 616
    Top = 144
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
  object ADODtStDireccAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesClienteCalcFields
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, Pd.Predeterminado '#13#10',D.Calle, D.NoExterior, D.' +
      'NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEscripcion Municipio,' +
      ' P.Descripcion Poblacion, E.Descripcion Estado,'#13#10'Pa.descripcion ' +
      'Pais'#13#10'from PersonasDomicilios PD'#13#10'inner join Domicilios D on PD.' +
      'IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaciones P on P.idPoblac' +
      'ion=d.IdPoblacion'#13#10'left join Municipios M on M.idmunicipio=D.IdM' +
      'unicipio'#13#10'Left Join Estados E on E.idestado=D.idestado'#13#10'Left Joi' +
      'n Paises Pa on Pa.idpais=D.Idpais'#13#10'where PD.IDPersona=:IDPersona' +
      #13#10#13#10#13#10#13#10
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 616
    Top = 202
    object AutoIncField2: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'IdPersona'
    end
    object IntegerField10: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object IntegerField11: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object BooleanField1: TBooleanField
      FieldName = 'Predeterminado'
    end
    object StringField2: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object StringField9: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object StringField10: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object StringField11: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
end
