inherited dmFacturas: TdmFacturas
  OldCreateOrder = True
  Height = 578
  Width = 905
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeOpen = adodsMasterBeforeOpen
    AfterOpen = adodsMasterAfterOpen
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT C.IdCFDI, C.IdCFDITipoDocumento, C.IdCFDIFormaPago, C.IdM' +
      'etodoPago, C.IdMoneda, C.IdPersonaEmisor, C.IdPersonaReceptor, C' +
      '.IdDocumentoCBB, C.IdDocumentoXML, C.IdDocumentoPDF, C.IdCFDIEst' +
      'atus, '#13#10'C.IdCFDIFacturaGral, C.IdClienteDomicilio, C.IdCuentaXCo' +
      'brar, C.IdCFDIFormaPago33, C.IdCFDIMetodoPago33, C.IDCFDITipoRel' +
      'acion, C.IdCFDIUsoCFDI, C.IdPago, C.Version, C.CuentaCte, C.Tipo' +
      'Cambio, C.TipoComp, C.Serie, '#13#10'C.Folio, C.Fecha, C.LugarExpedici' +
      'on, C.Sello, C.CondPago, C.NoCertificado, C.Certificado, C.SubTo' +
      'tal, C.Descto, C.MotivoDescto, C.Total, C.NumCtaPago, C.CadenaOr' +
      'iginal, C.TotalImpuestoRetenido, C.TotalImpuestoTrasladado, '#13#10'C.' +
      'SaldoDocumento, C.FechaCancelacion, C.Observaciones, C.Porcentaj' +
      'eIVA, C.EmailCliente, C.UUID_TB, C.SelloCFD_TB, C.SelloSAT_TB, C' +
      '.CertificadoSAT_TB, C.FechaTimbrado_TB, C.SaldoFactoraje, C.NumP' +
      'agosAplicados, '#13#10'CCP.IdCFDIComplementoPago, CCP.IdCFDITipoCadena' +
      'Pago, CCP.VersionPago, CCP.FechaPago, CCP.FormaPagoP, CCP.Moneda' +
      'P, CCP.TipoCambioP, CCP.Monto, CCP.NumOperacion'#13#10', C.Cancelacion' +
      'EnProc '#13#10'FROM CFDI AS C '#13#10'LEFT OUTER JOIN CFDIComplementoPagos A' +
      'S CCP ON C.IdCFDI = CCP.IdCFDI'#13#10
    Left = 56
    Top = 24
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
      Visible = False
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
      Visible = False
    end
    object adodsMasterIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
      Visible = False
    end
    object adodsMasterIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
      Visible = False
      OnChange = adodsMasterIdPersonaReceptorChange
    end
    object adodsMasterIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
      Visible = False
    end
    object adodsMasterIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
      Visible = False
    end
    object adodsMasterIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
      Visible = False
    end
    object adodsMasterIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
      Visible = False
    end
    object adodsMasterIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
      Visible = False
    end
    object adodsMasterIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
      Visible = False
    end
    object adodsMasterIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
      Visible = False
    end
    object adodsMasterIdCFDIFormaPago33: TIntegerField
      FieldName = 'IdCFDIFormaPago33'
      Visible = False
    end
    object adodsMasterIdCFDIMetodoPago33: TIntegerField
      FieldName = 'IdCFDIMetodoPago33'
      Visible = False
    end
    object adodsMasterIDCFDITipoRelacion: TIntegerField
      FieldName = 'IDCFDITipoRelacion'
      Visible = False
    end
    object adodsMasterIDCFDIUsoCFDI: TIntegerField
      FieldName = 'IDCFDIUsoCFDI'
      Visible = False
    end
    object adodsMasterIdPago: TIntegerField
      FieldName = 'IdPago'
      Visible = False
    end
    object adodsMasterIdCFDIComplementoPago: TLargeintField
      FieldName = 'IdCFDIComplementoPago'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdCFDITipoCadenaPago: TIntegerField
      FieldName = 'IdCFDITipoCadenaPago'
      Visible = False
    end
    object adodsMasterVersion: TStringField
      FieldName = 'Version'
      Size = 5
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
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
    object adodsMasterTipoComp: TStringField
      DisplayLabel = 'Tipo de comprobante'
      FieldName = 'TipoComp'
      Size = 10
    end
    object adodsMasterTipoDocumento: TStringField
      DisplayLabel = 'Tipo documento'
      FieldKind = fkLookup
      FieldName = 'TipoDocumento'
      LookupDataSet = ADODtStTiposDocumentos
      LookupKeyFields = 'IdCFDITipoDocumento'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDITipoDocumento'
      Visible = False
      Size = 15
      Lookup = True
    end
    object adodsMasterSerie: TStringField
      FieldName = 'Serie'
    end
    object adodsMasterFolio: TLargeintField
      FieldName = 'Folio'
    end
    object adodsMasterUUID_TB: TStringField
      DisplayLabel = 'UUID'
      FieldName = 'UUID_TB'
      Size = 40
    end
    object adodsMasterRFCEmisor: TStringField
      FieldKind = fkLookup
      FieldName = 'RFCEmisor'
      LookupDataSet = ADODtStPersonaEmisor
      LookupKeyFields = 'idpersona'
      LookupResultField = 'RFC'
      KeyFields = 'IdPersonaEmisor'
      Size = 13
      Lookup = True
    end
    object adodsMasterCuentaCte: TStringField
      DisplayLabel = 'Cuenta cliente'
      FieldName = 'CuentaCte'
      Visible = False
      Size = 30
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
    object adodsMasterDireccionC: TStringField
      DisplayLabel = 'Direccion'
      FieldKind = fkLookup
      FieldName = 'DireccionC'
      LookupDataSet = ADODtStDireccionesCliente
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'DirCompleta'
      KeyFields = 'IdClienteDomicilio'
      Visible = False
      Size = 150
      Lookup = True
    end
    object adodsMasterLugarExpedicion: TStringField
      DisplayLabel = 'Lugar de expedici'#243'n'
      FieldName = 'LugarExpedicion'
      Visible = False
      Size = 100
    end
    object adodsMasterSello: TStringField
      FieldName = 'Sello'
      Visible = False
      Size = 2000
    end
    object adodsMasterNoCertificado: TStringField
      DisplayLabel = 'No certificado'
      FieldName = 'NoCertificado'
      Visible = False
    end
    object adodsMasterCertificado: TStringField
      FieldName = 'Certificado'
      Visible = False
      Size = 2000
    end
    object adodsMasterClaveMoneda: TStringField
      DisplayLabel = 'Moneda'
      FieldKind = fkLookup
      FieldName = 'ClaveMoneda'
      LookupDataSet = ADODtStMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Identificador'
      KeyFields = 'IdMoneda'
      Visible = False
      Size = 5
      Lookup = True
    end
    object adodsMasterTipoCambio: TStringField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      Visible = False
    end
    object adodsMasterSubTotal: TFloatField
      FieldName = 'SubTotal'
      currency = True
    end
    object adodsMasterDescto: TFloatField
      DisplayLabel = 'Descuento'
      FieldName = 'Descto'
      Visible = False
    end
    object adodsMasterMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Visible = False
      Size = 50
    end
    object adodsMasterPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
      Visible = False
    end
    object adodsMasterTotalImpuestoRetenido: TFloatField
      DisplayLabel = 'Total impuesto retenido'
      FieldName = 'TotalImpuestoRetenido'
      Visible = False
      currency = True
    end
    object adodsMasterTotalImpuestoTrasladado: TFloatField
      DisplayLabel = 'Total impuesto trasladado'
      FieldName = 'TotalImpuestoTrasladado'
      currency = True
    end
    object adodsMasterTotal: TFloatField
      FieldName = 'Total'
      currency = True
    end
    object adodsMasterNumPagosAplicados: TIntegerField
      DisplayLabel = 'Pagos aplicados'
      FieldName = 'NumPagosAplicados'
    end
    object adodsMasterSaldoDocumento: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SaldoDocumento'
      currency = True
    end
    object adodsMasterSaldoFactoraje: TFMTBCDField
      DisplayLabel = 'Saldo factoraje'
      FieldName = 'SaldoFactoraje'
      Visible = False
      Precision = 18
      Size = 6
    end
    object adodsMasterCondPago: TStringField
      FieldName = 'CondPago'
      Visible = False
      Size = 250
    end
    object adodsMasterNumCtaPago: TStringField
      FieldName = 'NumCtaPago'
      Visible = False
    end
    object adodsMasterMetodoPago: TStringField
      DisplayLabel = 'M'#233'todo de pago'
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Visible = False
      Size = 50
      Lookup = True
    end
    object adodsMasterMetPagoClaveSAT: TStringField
      DisplayLabel = 'M'#233'todo de pago SAT'
      FieldKind = fkLookup
      FieldName = 'MetPagoClaveSAT'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'ClaveSAT2016'
      KeyFields = 'IdMetodoPago'
      Visible = False
      Size = 10
      Lookup = True
    end
    object adodsMasterMetodoPago33: TStringField
      DisplayLabel = 'M'#233'todo de pago'
      FieldKind = fkLookup
      FieldName = 'MetodoPago33'
      LookupDataSet = adoqMetodosPago33
      LookupKeyFields = 'IdCFDIMetodoPago33'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDIMetodoPago33'
      Size = 50
      Lookup = True
    end
    object adodsMasterFormaPago33: TStringField
      DisplayLabel = 'Forma de pago'
      FieldKind = fkLookup
      FieldName = 'FormaPago33'
      LookupDataSet = adoqFormasPago33
      LookupKeyFields = 'IdCFDIFormaPago33'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDIFormaPago33'
      Size = 50
      Lookup = True
    end
    object adodsMasterTipoRelacion: TStringField
      DisplayLabel = 'Tipo de relaci'#243'n'
      FieldKind = fkLookup
      FieldName = 'TipoRelacion'
      LookupDataSet = adoqTiposRelaciones
      LookupKeyFields = 'IdCFDITipoRelacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IDCFDITipoRelacion'
      Size = 80
      Lookup = True
    end
    object adodsMasterUsoCFDI: TStringField
      DisplayLabel = 'Uso'
      FieldKind = fkLookup
      FieldName = 'UsoCFDI'
      LookupDataSet = adoqUsosCFDI
      LookupKeyFields = 'IdCFDIUsoCFDI'
      LookupResultField = 'Descripcion'
      KeyFields = 'IDCFDIUsoCFDI'
      Size = 100
      Lookup = True
    end
    object adodsMasterFechaCancelacion: TDateTimeField
      DisplayLabel = 'Fecha de cancelaci'#243'n'
      FieldName = 'FechaCancelacion'
      Visible = False
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Visible = False
      Size = 300
    end
    object adodsMasterEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Visible = False
      Size = 100
    end
    object adodsMasterCadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Visible = False
      Size = 2000
    end
    object adodsMasterSelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Visible = False
      Size = 400
    end
    object adodsMasterSelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Visible = False
      Size = 250
    end
    object adodsMasterCertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
      Visible = False
    end
    object adodsMasterFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
      Visible = False
    end
    object adodsMasterVersionPago: TStringField
      DisplayLabel = 'Version pago'
      FieldName = 'VersionPago'
      Visible = False
      Size = 5
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fecha de pago'
      FieldName = 'FechaPago'
    end
    object adodsMasterFormaPagoP: TStringField
      DisplayLabel = 'Forma pago del pago'
      FieldName = 'FormaPagoP'
      Size = 2
    end
    object adodsMasterMonedaP: TStringField
      DisplayLabel = 'Moneda del pago'
      FieldName = 'MonedaP'
      Size = 3
    end
    object adodsMasterTipoCambioP: TFMTBCDField
      DisplayLabel = 'Tipo de cambio del pago'
      FieldName = 'TipoCambioP'
      Precision = 18
      Size = 6
    end
    object adodsMasterMonto: TFMTBCDField
      FieldName = 'Monto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterNumOperacion: TStringField
      DisplayLabel = 'N'#250'mero de operaci'#243'n'
      FieldName = 'NumOperacion'
      Size = 100
    end
    object adodsMasterRFCREceptor: TStringField
      FieldKind = fkLookup
      FieldName = 'RFCReceptor'
      LookupDataSet = ADODtStPersonaReceptor
      LookupKeyFields = 'idpersona'
      LookupResultField = 'RFC'
      KeyFields = 'IdPersonaReceptor'
      Size = 13
      Lookup = True
    end
    object adodsMasterCancelacionEnProc: TBooleanField
      FieldName = 'CancelacionEnProc'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 440
  end
  inherited ActionList: TActionList
    Left = 440
    Top = 72
    object actTimbrarCFDI: TAction
      Caption = 'Timbrar'
      Hint = 'Timbrar'
      ImageIndex = 17
      OnExecute = actTimbrarCFDIExecute
      OnUpdate = actTimbrarCFDIUpdate
    end
    object actImprimirCFDI: TAction
      Caption = 'Imprimir'
      Hint = 'Imprimir'
      ImageIndex = 18
      OnExecute = actImprimirCFDIExecute
    end
    object actCancelarCFDI: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 19
      OnExecute = actCancelarCFDIExecute
      OnUpdate = actCancelarCFDIUpdate
    end
    object actRelacionarCFDI: TAction
      Caption = '...'
      Hint = 'Relacionar los CFDi anteriores'
      OnExecute = actRelacionarCFDIExecute
      OnUpdate = actRelacionarCFDIUpdate
    end
    object actEliminar: TAction
      Caption = 'ELiminar'
      ImageIndex = 12
      OnExecute = actEliminarExecute
      OnUpdate = actEliminarUpdate
    end
    object ActConsultaEstado: TAction
      Caption = 'ActConsultaEstado'
      Hint = 'Consulta Estado en SAT'
      OnExecute = ActConsultaEstadoExecute
    end
  end
  object adodsCFDIConceptos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeInsert = adodsCFDIConceptosBeforeInsert
    AfterPost = adodsCFDIConceptosAfterPost
    BeforeDelete = adodsCFDIConceptosBeforeDelete
    AfterDelete = adodsCFDIConceptosAfterDelete
    OnNewRecord = adodsCFDIConceptosNewRecord
    CommandText = 
      'SELECT        IdCFDIConcepto, IdCFDI, IdUnidadMedida, Cantidad, ' +
      'Unidad, Descripcion, NoIdentifica, ValorUnitario, Importe, IdCue' +
      'ntaXCobrarDetalle, Descuento, SATClaveProdServ, SATClaveUnidad'#13#10 +
      'FROM            CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
    DataSource = dsMaster
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Value = '60'
      end>
    Left = 232
    Top = 24
    object adodsCFDIConceptosIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object adodsCFDIConceptosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object adodsCFDIConceptosIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object adodsCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object adodsCFDIConceptosSATClaveProdServ: TStringField
      DisplayLabel = 'ClaveProdServ'
      FieldName = 'SATClaveProdServ'
      Size = 10
    end
    object adodsCFDIConceptosCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = adodsCFDIConceptosValorUnitarioChange
    end
    object adodsCFDIConceptosUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object adodsCFDIConceptosSATClaveUnidad: TStringField
      DisplayLabel = 'ClaveUnidad'
      FieldName = 'SATClaveUnidad'
      Size = 5
    end
    object adodsCFDIConceptosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 400
    end
    object adodsCFDIConceptosNoIdentifica: TStringField
      DisplayLabel = 'No Identifica'
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object adodsCFDIConceptosValorUnitario: TFMTBCDField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'ValorUnitario'
      OnChange = adodsCFDIConceptosValorUnitarioChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCFDIConceptosImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCFDIConceptosDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    OnDataChange = dsMasterDataChange
    Left = 136
    Top = 24
  end
  object ADODtStCFDIImpuestos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, TipoImp, Impuesto, Tasa, Importe  '#13#10'from CFDIImpu' +
      'estos where idCFDI=:IDCFDI'
    DataSource = dsMaster
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IDCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '60'
      end>
    Left = 336
    Top = 256
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
    Left = 56
    Top = 256
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
    Left = 59
    Top = 312
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
    Left = 440
    Top = 256
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
    Left = 64
    Top = 368
  end
  object ADODtStMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta, Cl' +
      'aveSAT2016 '#13#10' from MetodosPago where idMetodoPago>0'
    Parameters = <>
    Left = 56
    Top = 136
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
    Left = 56
    Top = 192
  end
  object ADODtStTiposDocumentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoDocumento, Descripcion, SerieDoc, FolioDoc, Tip' +
      'oComprobante from CFDITipoDocumento'
    Parameters = <>
    Left = 56
    Top = 80
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
    Left = 440
    Top = 312
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
    Top = 176
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
    Left = 336
    Top = 433
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
    Left = 336
    Top = 496
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
    DataSource = dsMaster
    IndexFieldNames = 'IdPersonaDomicilio'
    MasterFields = 'IdClienteDomicilio'
    Parameters = <>
    Left = 64
    Top = 432
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
    Left = 336
    Top = 370
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
  object ADODtStSelMetPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta, '#13#10 +
      'ClaveSAT2016 from MetodosPago'#13#10'where idmetodoPago>0'
    Parameters = <>
    Left = 336
    Top = 312
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
  object adospGenPrefactura: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenPreFactura;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdIdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCFDI'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 592
    Top = 512
  end
  object adoqCFDI: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '2053'
      end>
    SQL.Strings = (
      
        'SELECT        C.IdCFDI, C.IdCuentaXCobrar, C.IdCFDITipoDocumento' +
        ', C.IdCFDIFormaPago, C.IdMetodoPago, C.IdMoneda, C.IdCFDIFormaPa' +
        'go33, C.IdCFDIMetodoPago33, C.IDCFDITipoRelacion, C.IDCFDIUsoCFD' +
        'I, C.IdPersonaEmisor, '
      
        '                         C.IdPersonaReceptor, C.IdDocumentoCBB, ' +
        'C.IdDocumentoXML, C.IdDocumentoPDF, C.IdCFDIEstatus, C.IdCFDIFac' +
        'turaGral, C.IdClienteDomicilio, C.Version, C.VersionPago, C.Seri' +
        'e, C.Folio, C.Fecha, C.CondPago, '
      
        '                         FP.Identificador AS FormaPago33, MP.Ide' +
        'ntificador AS MetodoPago33, C.CuentaCte, C.TipoCambio, Monedas.I' +
        'dentificador AS Moneda, C.TipoComp, TD.Descripcion AS TipoDocume' +
        'nto, C.LugarExpedicion, PE.RFC AS EmisorRFC,'
      
        '                          PE.RazonSocial AS EmisorNombre, RF.SAT' +
        'Clave AS EmisorRegimenFiscal, PR.RFC AS ReceptorRFC, PR.RazonSoc' +
        'ial AS ReceptorNombre, UC.Identificador AS UsoCFDI, C.SubTotal, ' +
        'C.Descto, C.MotivoDescto, C.Total, '
      
        '                         C.NumCtaPago, C.TotalImpuestoRetenido, ' +
        'C.TotalImpuestoTrasladado, C.SaldoDocumento, C.Sello, C.NoCertif' +
        'icado, C.Certificado, C.CadenaOriginal, C.FechaCancelacion, C.Ob' +
        'servaciones, C.PorcentajeIVA, C.EmailCliente, '
      
        '                         C.UUID_TB, C.SelloCFD_TB, C.SelloSAT_TB' +
        ', C.CertificadoSAT_TB, C.FechaTimbrado_TB, C.RFCProvCertifica_TB' +
        ', C.LeyendaSAT_TB, C.Confirmacion, TR.Identificador AS CFDITipoR' +
        'elacion'
      'FROM            CFDI AS C INNER JOIN'
      
        '                         CFDITipoDocumento AS TD ON C.IdCFDITipo' +
        'Documento = TD.IdCFDITipoDocumento LEFT OUTER JOIN'
      ''
      
        '                         Monedas ON C.IdMoneda = Monedas.IdMoned' +
        'a INNER JOIN'
      
        '                         Personas AS PE ON C.IdPersonaEmisor = P' +
        'E.IdPersona INNER JOIN'
      
        '                         RegimenesFiscales AS RF ON PE.IdRegimen' +
        'Fiscal = RF.IdRegimenFiscal INNER JOIN'
      
        '                         Personas AS PR ON C.IdPersonaReceptor =' +
        ' PR.IdPersona LEFT OUTER JOIN'
      
        '                         CFDIFormasPago33 AS FP ON C.IdCFDIForma' +
        'Pago33 = FP.IdCFDIFormaPago33 LEFT OUTER JOIN'
      
        '                         CFDIMetodosPago33 AS MP ON C.IdCFDIMeto' +
        'doPago33 = MP.IdCFDIMetodoPago33 LEFT OUTER JOIN'
      
        '                         CFDITiposRelaciones AS TR ON C.IDCFDITi' +
        'poRelacion = TR.IdCFDITipoRelacion LEFT OUTER JOIN'
      
        '                         CFDIUsosCFDI AS UC ON C.IDCFDIUsoCFDI =' +
        ' UC.IdCFDIUsoCFDI'
      'WHERE        (C.IdCFDI = :IdCFDI)')
    Left = 584
    Top = 24
    object adoqCFDIIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object adoqCFDIIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object adoqCFDIIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object adoqCFDIIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
    end
    object adoqCFDIIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adoqCFDIIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adoqCFDIIdCFDIFormaPago33: TIntegerField
      FieldName = 'IdCFDIFormaPago33'
    end
    object adoqCFDIIdCFDIMetodoPago33: TIntegerField
      FieldName = 'IdCFDIMetodoPago33'
    end
    object adoqCFDIIDCFDITipoRelacion: TIntegerField
      FieldName = 'IDCFDITipoRelacion'
    end
    object adoqCFDIIDCFDIUsoCFDI: TIntegerField
      FieldName = 'IDCFDIUsoCFDI'
    end
    object adoqCFDIIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object adoqCFDIIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object adoqCFDIIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object adoqCFDIIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object adoqCFDIIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object adoqCFDIIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object adoqCFDIIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
    end
    object adoqCFDIIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object adoqCFDIVersion: TStringField
      FieldName = 'Version'
      Size = 5
    end
    object adoqCFDIVersionPago: TStringField
      FieldName = 'VersionPago'
      Size = 5
    end
    object adoqCFDISerie: TStringField
      FieldName = 'Serie'
    end
    object adoqCFDIFolio: TLargeintField
      FieldName = 'Folio'
    end
    object adoqCFDIFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adoqCFDICondPago: TStringField
      FieldName = 'CondPago'
      Size = 250
    end
    object adoqCFDIFormaPago33: TStringField
      FieldName = 'FormaPago33'
      Size = 5
    end
    object adoqCFDIMetodoPago33: TStringField
      FieldName = 'MetodoPago33'
      Size = 5
    end
    object adoqCFDICuentaCte: TStringField
      FieldName = 'CuentaCte'
      Size = 30
    end
    object adoqCFDITipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object adoqCFDIMoneda: TStringField
      FieldName = 'Moneda'
      Size = 3
    end
    object adoqCFDITipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object adoqCFDITipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Size = 50
    end
    object adoqCFDILugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object adoqCFDIEmisorRFC: TStringField
      FieldName = 'EmisorRFC'
      Size = 13
    end
    object adoqCFDIEmisorNombre: TStringField
      FieldName = 'EmisorNombre'
      Size = 300
    end
    object adoqCFDIEmisorRegimenFiscal: TStringField
      FieldName = 'EmisorRegimenFiscal'
      Size = 5
    end
    object adoqCFDIReceptorRFC: TStringField
      FieldName = 'ReceptorRFC'
      Size = 13
    end
    object adoqCFDIReceptorNombre: TStringField
      FieldName = 'ReceptorNombre'
      Size = 300
    end
    object adoqCFDIUsoCFDI: TStringField
      FieldName = 'UsoCFDI'
      Size = 5
    end
    object adoqCFDISubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object adoqCFDIDescto: TFloatField
      FieldName = 'Descto'
    end
    object adoqCFDIMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Size = 50
    end
    object adoqCFDITotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adoqCFDINumCtaPago: TStringField
      FieldName = 'NumCtaPago'
    end
    object adoqCFDITotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
    end
    object adoqCFDITotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object adoqCFDISaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object adoqCFDISello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object adoqCFDINoCertificado: TStringField
      FieldName = 'NoCertificado'
    end
    object adoqCFDICertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object adoqCFDICadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Size = 2000
    end
    object adoqCFDIFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object adoqCFDIObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adoqCFDIPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
    end
    object adoqCFDIEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object adoqCFDIUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object adoqCFDISelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Size = 400
    end
    object adoqCFDISelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Size = 250
    end
    object adoqCFDICertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
    end
    object adoqCFDIFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
    end
    object adoqCFDIRFCProvCertifica_TB: TStringField
      FieldName = 'RFCProvCertifica_TB'
      Size = 13
    end
    object adoqCFDILeyendaSAT_TB: TStringField
      FieldName = 'LeyendaSAT_TB'
      Size = 150
    end
    object adoqCFDIConfirmacion: TStringField
      FieldName = 'Confirmacion'
      Size = 5
    end
    object adoqCFDICFDITipoRelacion: TStringField
      FieldName = 'CFDITipoRelacion'
      Size = 5
    end
  end
  object dsCFDI: TDataSource
    AutoEdit = False
    DataSet = adoqCFDI
    Left = 688
    Top = 24
  end
  object adoqCFDIConceptos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsCFDI
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Value = '2053'
      end>
    SQL.Strings = (
      
        'SELECT        IdCFDIConcepto, IdUnidadMedida, IdCuentaXCobrarDet' +
        'alle, Cantidad, Unidad, Descripcion, NoIdentifica, ValorUnitario' +
        ', Importe, Descuento, SATClaveProdServ, SATClaveUnidad'
      'FROM            CFDIConceptos'
      'WHERE IdCFDI = :IdCFDI'
      '')
    Left = 584
    Top = 80
    object adoqCFDIConceptosIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object adoqCFDIConceptosIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object adoqCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object adoqCFDIConceptosSATClaveProdServ: TStringField
      FieldName = 'SATClaveProdServ'
      Size = 10
    end
    object adoqCFDIConceptosNoIdentifica: TStringField
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object adoqCFDIConceptosCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object adoqCFDIConceptosSATClaveUnidad: TStringField
      FieldName = 'SATClaveUnidad'
      Size = 5
    end
    object adoqCFDIConceptosUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object adoqCFDIConceptosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 400
    end
    object adoqCFDIConceptosValorUnitario: TFMTBCDField
      FieldName = 'ValorUnitario'
      Precision = 18
      Size = 6
    end
    object adoqCFDIConceptosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adoqCFDIConceptosDescuento: TFMTBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 6
    end
  end
  object adoqCFDIConceptosImpuestos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsCFDIConceptos
    Parameters = <
      item
        Name = 'IdCFDIConcepto'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '3852'
      end>
    SQL.Strings = (
      
        'SELECT        IdCFDIConceptoImpuesto, IdCFDITipoImpuesto, TipoIm' +
        'p, Base, ClaveImpuesto, Impuesto, TipoFactor, TasaOCuota, Import' +
        'e'
      'FROM            CFDIConceptosImpuestos'
      
        'WHERE TipoImp = '#39'Trasladado'#39' AND IdCFDIConcepto = :IdCFDIConcept' +
        'o')
    Left = 584
    Top = 136
    object adoqCFDIConceptosImpuestosIdCFDIConceptoImpuesto: TAutoIncField
      FieldName = 'IdCFDIConceptoImpuesto'
      ReadOnly = True
    end
    object adoqCFDIConceptosImpuestosIdCFDITipoImpuesto: TIntegerField
      FieldName = 'IdCFDITipoImpuesto'
    end
    object adoqCFDIConceptosImpuestosTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object adoqCFDIConceptosImpuestosBase: TFMTBCDField
      FieldName = 'Base'
      Precision = 18
      Size = 6
    end
    object adoqCFDIConceptosImpuestosClaveImpuesto: TStringField
      FieldName = 'ClaveImpuesto'
      Size = 3
    end
    object adoqCFDIConceptosImpuestosImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 5
    end
    object adoqCFDIConceptosImpuestosTipoFactor: TStringField
      FieldName = 'TipoFactor'
      Size = 10
    end
    object adoqCFDIConceptosImpuestosTasaOCuota: TFMTBCDField
      FieldName = 'TasaOCuota'
      Precision = 18
      Size = 6
    end
    object adoqCFDIConceptosImpuestosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
  end
  object adoqCFDIImpuestos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsCFDI
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '2053'
      end>
    SQL.Strings = (
      
        'SELECT        IdCFDIImpuesto, TipoImp, Impuesto, Tasa, Importe, ' +
        'IdCFDITipoImpuesto, TipoFactor, ClaveImpuesto'
      'FROM            CFDIImpuestos'
      'WHERE TipoImp = '#39'Trasladado'#39' AND IdCFDI = :IdCFDI')
    Left = 584
    Top = 184
    object adoqCFDIImpuestosIdCFDIImpuesto: TAutoIncField
      FieldName = 'IdCFDIImpuesto'
      ReadOnly = True
    end
    object adoqCFDIImpuestosIdCFDITipoImpuesto: TIntegerField
      FieldName = 'IdCFDITipoImpuesto'
    end
    object adoqCFDIImpuestosTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object adoqCFDIImpuestosClaveImpuesto: TStringField
      FieldName = 'ClaveImpuesto'
      Size = 3
    end
    object adoqCFDIImpuestosImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 10
    end
    object adoqCFDIImpuestosTipoFactor: TStringField
      FieldName = 'TipoFactor'
      Size = 10
    end
    object adoqCFDIImpuestosTasa: TFloatField
      FieldName = 'Tasa'
    end
    object adoqCFDIImpuestosImporte: TFloatField
      FieldName = 'Importe'
    end
  end
  object dsCFDIConceptos: TDataSource
    AutoEdit = False
    DataSet = adoqCFDIConceptos
    Left = 688
    Top = 80
  end
  object adopUpdCFDITimbre: TADOCommand
    CommandText = 
      'UPDATE CFDI'#13#10'SET '#13#10#9'IdCFDIEstatus = :IdCFDIEstatus,'#13#10#9'Sello = :S' +
      'ello,'#13#10#9'NoCertificado = :NoCertificado,'#13#10#9'Certificado = :Certifi' +
      'cado,'#13#10#9'CadenaOriginal = :CadenaOriginal,'#13#10#9'CadenaTimbre = :Cade' +
      'naTimbre,'#13#10#9'UUID_TB = :UUID_TB,'#13#10#9'SelloCFD_TB = :SelloCFD_TB,'#13#10#9 +
      'SelloSAT_TB = :SelloSAT_TB,'#13#10#9'CertificadoSAT_TB = :CertificadoSA' +
      'T_TB,'#13#10#9'FechaTimbrado_TB = :FechaTimbrado_TB,'#13#10#9'RFCProvCertifica' +
      '_TB = :RFCProvCertifica_TB,'#13#10#9'LeyendaSAT_TB = :LeyendaSAT_TB,'#13#10#9 +
      'NumRegistroIdTrib33 = :NumRegistroIdTrib33'#13#10'WHERE IdCFDI = :IdCF' +
      'DI'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCFDIEstatus'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Sello'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2000
        Value = Null
      end
      item
        Name = 'NoCertificado'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Certificado'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2000
        Value = Null
      end
      item
        Name = 'CadenaOriginal'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2000
        Value = Null
      end
      item
        Name = 'CadenaTimbre'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end
      item
        Name = 'UUID_TB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'SelloCFD_TB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 400
        Value = Null
      end
      item
        Name = 'SelloSAT_TB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 400
        Value = Null
      end
      item
        Name = 'CertificadoSAT_TB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'FechaTimbrado_TB'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'RFCProvCertifica_TB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 13
        Value = Null
      end
      item
        Name = 'LeyendaSAT_TB'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end
      item
        Name = 'NumRegistroIdTrib33'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 584
    Top = 288
  end
  object adospSetCFDIFolio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCFDIFolio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCFDI'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 696
    Top = 288
  end
  object adocUpdCFDIArchivos: TADOCommand
    CommandText = 
      'UPDATE CFDI'#13#10'SET '#13#10#9'IdDocumentoCBB = :IdDocumentoCBB,'#13#10#9'IdDocume' +
      'ntoXML = :IdDocumentoXML,'#13#10#9'IdDocumentoPDF = :IdDocumentoPDF'#13#10'WH' +
      'ERE IdCFDI = :IdCFDI'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdDocumentoCBB'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdDocumentoXML'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdDocumentoPDF'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 584
    Top = 344
  end
  object adocSetConceptoImpuesto: TADOCommand
    CommandText = 
      'DECLARE @IdCFDIConcepto int'#13#10'DECLARE @IdCFDITipoImpuesto int'#13#10'DE' +
      'CLARE @Base decimal(18,6)'#13#10'SET @IdCFDIConcepto = :IdCFDIConcepto' +
      #13#10'SET @IdCFDITipoImpuesto = :IdCFDITipoImpuesto'#13#10'SET @Base = :Ba' +
      'se'#13#10'-- Inserta concepto impuesto'#13#10'IF NOT EXISTS (SELECT * FROM C' +
      'FDIConceptosImpuestos WHERE IdCFDIConcepto = @IdCFDIConcepto AND' +
      ' IdCFDITipoImpuesto = @IdCFDITipoImpuesto) '#13#10'BEGIN'#13#10#9'INSERT INTO' +
      ' CFDIConceptosImpuestos (IdCFDIConcepto,IdCFDITipoImpuesto,Clave' +
      'Impuesto,Impuesto,TipoImp,TipoFactor,TasaOCuota,Base,Importe)'#13#10#9 +
      'SELECT @IdCFDIConcepto, IdCFDITipoImpuesto, Identificador, Descr' +
      'ipcion, TipoImpuesto, Factor, TasaOCuota,@Base,ROUND(@Base*TasaO' +
      'Cuota,2)'#13#10#9'FROM CFDITiposImpuestos'#13#10#9'WHERE IdCFDITipoImpuesto = ' +
      '@IdCFDITipoImpuesto'#13#10'END'#13#10'ELSE'#13#10'BEGIN'#13#10#9'UPDATE CFDIConceptosImpu' +
      'estos SET Base = @Base, Importe =ROUND(@Base*TasaOCuota,2)'#13#10#9'WHE' +
      'RE IdCFDIConcepto = @IdCFDIConcepto AND IdCFDITipoImpuesto = @Id' +
      'CFDITipoImpuesto'#13#10'END'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCFDIConcepto'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdCFDITipoImpuesto'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Base'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    Left = 592
    Top = 400
  end
  object adocUpdCFDITotales: TADOCommand
    CommandText = 
      'DECLARE @IdCFDI int'#13#10'DECLARE @Subtotal decimal(18,6)'#13#10'DECLARE @D' +
      'escuento decimal(18,6)'#13#10'DECLARE @TotalImpuestoTrasladado decimal' +
      '(18,6)'#13#10'DECLARE @Total decimal(18,6)'#13#10'SET @IdCFDI =:IdCFDI'#13#10'-- A' +
      'ctualiza totales CFDI'#13#10'SELECT @Subtotal= ISNULL(SUM(Importe),0),' +
      ' @Descuento = ISNULL(SUM(Descuento),0) FROM CFDIConceptos WHERE ' +
      'IdCFDI = @IdCFDI'#13#10'SELECT @TotalImpuestoTrasladado = ISNULL(SUM(I' +
      'mporte),0) FROM CFDIImpuestos WHERE IdCFDITipoImpuesto = 1 AND I' +
      'dCFDI = @IdCFDI'#13#10'SET @Total = @Subtotal - @Descuento + @TotalImp' +
      'uestoTrasladado'#13#10'UPDATE CFDI '#13#10'SET Subtotal = @Subtotal'#13#10',Descto' +
      ' = @Descuento'#13#10',TotalImpuestoTrasladado = @TotalImpuestoTraslada' +
      'do'#13#10',Total = @Total'#13#10',SaldoDocumento = @Total'#13#10',SaldoFactoraje =' +
      ' @Total'#13#10'WHERE IdCFDI = @IdCFDI'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCFDI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 592
    Top = 456
  end
  object adocSetImpuestos: TADOCommand
    CommandText = 
      'DECLARE @IdCFDI int'#13#10'SET @IdCFDI = :IdCFDI'#13#10'-- Actualiza Impuest' +
      'os'#13#10'IF NOT EXISTS (SELECT * FROM CFDIImpuestos WHERE IdCFDI = @I' +
      'dCFDI) '#13#10'BEGIN'#13#10#9'INSERT INTO CFDIImpuestos (IdCFDI,IdCFDITipoImp' +
      'uesto,TipoImp,ClaveImpuesto,Impuesto,TipoFactor,Tasa,Importe)'#13#10#9 +
      'SELECT @IdCFDI, IdCFDITipoImpuesto, TipoImp, ClaveImpuesto, Impu' +
      'esto, TipoFactor, TasaOCuota, SUM(Importe)'#13#10#9'FROM CFDIConceptosI' +
      'mpuestos'#13#10#9'WHERE IdCFDIConcepto IN (SELECT IdCFDIConcepto FROM C' +
      'FDIConceptos WHERE IdCFDI = @IdCFDI)'#13#10#9'GROUP BY IdCFDITipoImpues' +
      'to, TipoImp, ClaveImpuesto, Impuesto, TipoFactor, TasaOCuota'#13#10'EN' +
      'D'#13#10'ELSE'#13#10'BEGIN'#13#10#9'UPDATE CFDIImpuestos SET Importe = (SELECT SUM(' +
      'Importe) FROM CFDIConceptosImpuestos'#9'WHERE IdCFDIConcepto IN (SE' +
      'LECT IdCFDIConcepto FROM CFDIConceptos WHERE IdCFDI = @IdCFDI))'#13 +
      #10#9'WHERE IdCFDI = @IdCFDI '#13#10'END'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCFDI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 680
    Top = 448
  end
  object adocDelConceptoImpuesto: TADOCommand
    CommandText = 
      'DELETE CFDIConceptosImpuestos WHERE IdCFDIConcepto = :IdCFDIConc' +
      'epto'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdCFDIConcepto'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 680
    Top = 392
  end
  object adoqCFDIRelacionados: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsCFDI
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Value = '2053'
      end>
    SQL.Strings = (
      'SELECT        IdCFDIRelacionado, UUID'
      'FROM            CFDIRelacionados'
      'WHERE        IdCFDI = :IdCFDI')
    Left = 584
    Top = 240
    object adoqCFDIRelacionadosIdCFDIRelacionado: TLargeintField
      FieldName = 'IdCFDIRelacionado'
      ReadOnly = True
    end
    object adoqCFDIRelacionadosUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
  end
  object adospGenCFDIPago: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenCFDIPago;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCFDI'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 696
    Top = 512
  end
  object adoqFormasPago33: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select IdCFDIFormaPago33, Identificador, Descripcion from CFDIFo' +
        'rmasPago33')
    Left = 168
    Top = 200
  end
  object adoqMetodosPago33: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select IdCFDIMetodoPago33, Identificador, Descripcion from CFDIM' +
        'etodosPago33')
    Left = 168
    Top = 264
  end
  object adoqTiposRelaciones: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select IdCFDITipoRelacion, Identificador, Descripcion from CFDIT' +
        'iposRelaciones')
    Left = 168
    Top = 328
  end
  object adoqUsosCFDI: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select IdCFDIUsoCFDI, Identificador, Descripcion from CFDIUsosCF' +
        'DI')
    Left = 168
    Top = 392
  end
  object adodsCFDICPRelacionados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCFDIComplementoPagoRelacionado, IdCFDIComplementoPago, ' +
      'IdCFDIAsociado, UUID, Serie, Folio, MonedaDR, TipoCambioDR, Meto' +
      'doPagoDR, NumParcialidad, ImpSaldoAnt, ImpPagado, ImpSaldoInsolu' +
      'to'#13#10'FROM CFDIComplementoPagosRelacionado'#13#10'WHERE IdCFDIComplement' +
      'oPago = :IdCFDIComplementoPago'
    DataSource = dsMaster
    MasterFields = 'IdCFDIComplementoPago'
    Parameters = <
      item
        Name = 'IdCFDIComplementoPago'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 232
    Top = 80
    object adodsCFDICPRelacionadosIdCFDIComplementoPagoRelacionado: TLargeintField
      FieldName = 'IdCFDIComplementoPagoRelacionado'
      ReadOnly = True
      Visible = False
    end
    object adodsCFDICPRelacionadosIdCFDIComplementoPago: TLargeintField
      FieldName = 'IdCFDIComplementoPago'
      Visible = False
    end
    object adodsCFDICPRelacionadosIdCFDIAsociado: TLargeintField
      FieldName = 'IdCFDIAsociado'
      Visible = False
    end
    object adodsCFDICPRelacionadosUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
    object adodsCFDICPRelacionadosSerie: TStringField
      FieldName = 'Serie'
      Size = 25
    end
    object adodsCFDICPRelacionadosFolio: TStringField
      FieldName = 'Folio'
      Size = 40
    end
    object adodsCFDICPRelacionadosMonedaDR: TStringField
      DisplayLabel = 'Moneda'
      FieldName = 'MonedaDR'
      Size = 3
    end
    object adodsCFDICPRelacionadosTipoCambioDR: TFMTBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambioDR'
      Precision = 18
      Size = 6
    end
    object adodsCFDICPRelacionadosMetodoPagoDR: TStringField
      DisplayLabel = 'Metodo de pago'
      FieldName = 'MetodoPagoDR'
      Size = 3
    end
    object adodsCFDICPRelacionadosNumParcialidad: TIntegerField
      DisplayLabel = 'N'#250'mero parcialidad'
      FieldName = 'NumParcialidad'
    end
    object adodsCFDICPRelacionadosImpSaldoAnt: TFMTBCDField
      DisplayLabel = 'Saldo anterior'
      FieldName = 'ImpSaldoAnt'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCFDICPRelacionadosImpPagado: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'ImpPagado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCFDICPRelacionadosImpSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'ImpSaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adoqCFDIInfo: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CFDI.IdCFDI, CFDI.IdCFDITipoDocumento, CFDI.IdCFDIEstatus' +
        ', CFDI.IdCuentaXCobrar, CFDI.IdPago, CFDI.Version, CFDIComplemen' +
        'toPagos.VersionPago'
      'FROM CFDI'
      
        'LEFT OUTER JOIN CFDIComplementoPagos ON CFDI.IdCFDI = CFDIComple' +
        'mentoPagos.IdCFDI'
      'WHERE CFDI.IdCFDI = :IdCFDI')
    Left = 776
    Top = 32
    object adoqCFDIInfoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object adoqCFDIInfoIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object adoqCFDIInfoIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object adoqCFDIInfoIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object adoqCFDIInfoIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object adoqCFDIInfoVersion: TStringField
      FieldName = 'Version'
      Size = 5
    end
    object adoqCFDIInfoVersionPago: TStringField
      FieldName = 'VersionPago'
      Size = 5
    end
  end
  object adoqCFDIComplementoPagos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsCFDI
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT IdCFDIComplementoPago, IdCFDI, IdCFDITipoCadenaPago, Fech' +
        'aPago, FormaPagoP, MonedaP, TipoCambioP, Monto, NumOperacion, RF' +
        'CEmisorCtaOrd, NomBancoOrdExt, CtaOrdenante, RFCEmisorCtaBen, Ct' +
        'aBeneficiario, '
      'TipoCadPago, CerPago, CadPago, SelloPago'
      'FROM CFDIComplementoPagos'
      'WHERE IdCFDI = :IdCFDI')
    Left = 720
    Top = 144
    object adoqCFDIComplementoPagosIdCFDIComplementoPago: TLargeintField
      FieldName = 'IdCFDIComplementoPago'
      ReadOnly = True
    end
    object adoqCFDIComplementoPagosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object adoqCFDIComplementoPagosIdCFDITipoCadenaPago: TIntegerField
      FieldName = 'IdCFDITipoCadenaPago'
    end
    object adoqCFDIComplementoPagosFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adoqCFDIComplementoPagosFormaPagoP: TStringField
      FieldName = 'FormaPagoP'
      Size = 2
    end
    object adoqCFDIComplementoPagosMonedaP: TStringField
      FieldName = 'MonedaP'
      Size = 3
    end
    object adoqCFDIComplementoPagosTipoCambioP: TFMTBCDField
      FieldName = 'TipoCambioP'
      Precision = 18
      Size = 6
    end
    object adoqCFDIComplementoPagosMonto: TFMTBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 6
    end
    object adoqCFDIComplementoPagosNumOperacion: TStringField
      FieldName = 'NumOperacion'
      Size = 100
    end
    object adoqCFDIComplementoPagosRFCEmisorCtaOrd: TStringField
      FieldName = 'RFCEmisorCtaOrd'
      Size = 13
    end
    object adoqCFDIComplementoPagosNomBancoOrdExt: TStringField
      FieldName = 'NomBancoOrdExt'
      Size = 300
    end
    object adoqCFDIComplementoPagosCtaOrdenante: TStringField
      FieldName = 'CtaOrdenante'
      Size = 50
    end
    object adoqCFDIComplementoPagosRFCEmisorCtaBen: TStringField
      FieldName = 'RFCEmisorCtaBen'
      Size = 13
    end
    object adoqCFDIComplementoPagosCtaBeneficiario: TStringField
      FieldName = 'CtaBeneficiario'
      Size = 50
    end
    object adoqCFDIComplementoPagosTipoCadPago: TStringField
      FieldName = 'TipoCadPago'
      Size = 2
    end
    object adoqCFDIComplementoPagosCerPago: TStringField
      FieldName = 'CerPago'
      Size = 2000
    end
    object adoqCFDIComplementoPagosCadPago: TStringField
      FieldName = 'CadPago'
      Size = 8000
    end
    object adoqCFDIComplementoPagosSelloPago: TStringField
      FieldName = 'SelloPago'
      Size = 2000
    end
  end
  object adoqCFDIComplementoPagosRelacionado: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsCFDIComplementoPagos
    Parameters = <
      item
        Name = 'IdCFDIComplementoPago'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT IdCFDIComplementoPagoRelacionado, IdCFDIComplementoPago, ' +
        'IdCFDIAsociado, UUID, Serie, Folio, MonedaDR, TipoCambioDR, Meto' +
        'doPagoDR, NumParcialidad, ImpSaldoAnt, ImpPagado, ImpSaldoInsolu' +
        'to'
      'FROM CFDIComplementoPagosRelacionado'
      'WHERE IdCFDIComplementoPago = :IdCFDIComplementoPago')
    Left = 720
    Top = 200
    object adoqCFDIComplementoPagosRelacionadoIdCFDIComplementoPagoRelacionado: TLargeintField
      FieldName = 'IdCFDIComplementoPagoRelacionado'
      ReadOnly = True
    end
    object adoqCFDIComplementoPagosRelacionadoIdCFDIComplementoPago: TLargeintField
      FieldName = 'IdCFDIComplementoPago'
    end
    object adoqCFDIComplementoPagosRelacionadoIdCFDIAsociado: TLargeintField
      FieldName = 'IdCFDIAsociado'
    end
    object adoqCFDIComplementoPagosRelacionadoUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
    object adoqCFDIComplementoPagosRelacionadoSerie: TStringField
      FieldName = 'Serie'
      Size = 25
    end
    object adoqCFDIComplementoPagosRelacionadoFolio: TStringField
      FieldName = 'Folio'
      Size = 40
    end
    object adoqCFDIComplementoPagosRelacionadoMonedaDR: TStringField
      FieldName = 'MonedaDR'
      Size = 3
    end
    object adoqCFDIComplementoPagosRelacionadoTipoCambioDR: TFMTBCDField
      FieldName = 'TipoCambioDR'
      Precision = 18
      Size = 6
    end
    object adoqCFDIComplementoPagosRelacionadoMetodoPagoDR: TStringField
      FieldName = 'MetodoPagoDR'
      Size = 3
    end
    object adoqCFDIComplementoPagosRelacionadoNumParcialidad: TIntegerField
      FieldName = 'NumParcialidad'
    end
    object adoqCFDIComplementoPagosRelacionadoImpSaldoAnt: TFMTBCDField
      FieldName = 'ImpSaldoAnt'
      Precision = 18
      Size = 6
    end
    object adoqCFDIComplementoPagosRelacionadoImpPagado: TFMTBCDField
      FieldName = 'ImpPagado'
      Precision = 18
      Size = 6
    end
    object adoqCFDIComplementoPagosRelacionadoImpSaldoInsoluto: TFMTBCDField
      FieldName = 'ImpSaldoInsoluto'
      Precision = 18
      Size = 6
    end
  end
  object dsCFDIComplementoPagos: TDataSource
    AutoEdit = False
    DataSet = adoqCFDIComplementoPagos
    Left = 808
    Top = 136
  end
  object adospDelCFDI: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_DelCFDI;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCFDI'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Eliminar'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 808
    Top = 512
  end
end
