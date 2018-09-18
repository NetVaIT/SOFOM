inherited DMPagosReales: TDMPagosReales
  OldCreateOrder = True
  Height = 685
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforePost = adodsMasterBeforePost
    AfterPost = adodsMasterAfterPost
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IDPagoReal, IdPersonaCliente, IdBanco, FechaPago,'#13#10' Refer' +
      'encia, Importe, Saldo, IdMoneda, IdFormaPago33,'#13#10' IdCuentaBancoO' +
      'rdenante, IdCuentaBancoBeneficiario'#13#10', IdCFDITipoCadenaPago, Cer' +
      'tificado, Cadena, Sello ,'#13#10'EsNotaCredito, IdCuentaBancariaEstado' +
      'Cuenta, IdCFDI_NCR'#13#10'from PagosReales'
    Left = 40
    object adodsMasterIDPagoReal: TAutoIncField
      FieldName = 'IDPagoReal'
      ReadOnly = True
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fecha de pago'
      FieldName = 'FechaPago'
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 100
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterIdFormaPago33: TIntegerField
      FieldName = 'IdFormaPago33'
    end
    object adodsMasterIdCuentaBancoOrdenante: TIntegerField
      FieldName = 'IdCuentaBancoOrdenante'
    end
    object adodsMasterIdCuentaBancoBeneficiario: TIntegerField
      FieldName = 'IdCuentaBancoBeneficiario'
    end
    object adodsMasterIdCFDITipoCadenaPago: TIntegerField
      FieldName = 'IdCFDITipoCadenaPago'
    end
    object adodsMasterCertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object adodsMasterCadena: TStringField
      FieldName = 'Cadena'
      Size = 8000
    end
    object adodsMasterSello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterFormaPago: TStringField
      DisplayLabel = 'Forma de pago'
      FieldKind = fkLookup
      FieldName = 'FormaPago'
      LookupDataSet = adodsFormaPago33
      LookupKeyFields = 'IdCFDIFormaPago33'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdFormaPago33'
      Size = 100
      Lookup = True
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = adodsBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 100
      Lookup = True
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaCliente'
      Size = 200
      Lookup = True
    end
    object adodsMasterCuentaOrdenante: TStringField
      DisplayLabel = 'Cuenta ordenante'
      FieldKind = fkLookup
      FieldName = 'CuentaOrdenante'
      LookupDataSet = adodsCuentasOrdenante
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'Cuenta'
      KeyFields = 'IdCuentaBancoOrdenante'
      Size = 50
      Lookup = True
    end
    object adodsMasterCuentaBeneficiario: TStringField
      DisplayLabel = 'Cuenta beneficiario'
      FieldKind = fkLookup
      FieldName = 'CuentaBeneficiario'
      LookupDataSet = adodsCuentasBeneficiario
      LookupKeyFields = 'IdCuentaBancaria'
      LookupResultField = 'Cuenta'
      KeyFields = 'IdCuentaBancoBeneficiario'
      Size = 100
      Lookup = True
    end
    object adodsMasterTipoCadena: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoCadena'
      LookupDataSet = adodsCadenaPago
      LookupKeyFields = 'IdCFDITipoCadenaPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDITipoCadenaPago'
      Size = 25
      Lookup = True
    end
    object adodsMasterEsNotaCredito: TBooleanField
      FieldName = 'EsNotaCredito'
    end
    object adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
    end
    object adodsMasterIdCFDI_NCR: TLargeintField
      FieldName = 'IdCFDI_NCR'
    end
  end
  inherited ActionList: TActionList
    object actAddCuentaOrdenante: TAction
      Caption = 'actAddCuentaOrdenante'
      OnExecute = actAddCuentaOrdenanteExecute
    end
    object actFragmentarPago: TAction
      Caption = 'actFragmentarPago'
      OnExecute = actFragmentarPagoExecute
    end
  end
  object adodsBancos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBanco, IdPaisBanco, Identificador, Nombre, '#13#10'Descripcio' +
      'n, Siglas from Bancos'
    Parameters = <>
    Left = 40
    Top = 83
    object adodsBancosIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object adodsBancosIdPaisBanco: TIntegerField
      FieldName = 'IdPaisBanco'
    end
    object adodsBancosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object adodsBancosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object adodsBancosSiglas: TStringField
      FieldName = 'Siglas'
      Size = 10
    end
  end
  object adodsPersonas: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo,'#13#10 +
      ' IdSexo, IdEstadoCivil, IdPais, IdPoblacion, RFC, CURP,'#13#10' RazonS' +
      'ocial, Nombre, ApellidoPaterno, ApellidoMaterno,'#13#10'IdMetodoPago,I' +
      'dPersonaEstatus,NumCtaPagoCliente '#13#10'from Personas where idRolTip' +
      'o=3'#13#10'Order by RazonSocial'
    Parameters = <>
    Left = 40
    Top = 136
    object adodsPersonasIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsPersonasIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
    end
    object adodsPersonasIdRolTipo: TIntegerField
      FieldName = 'IdRolTipo'
    end
    object adodsPersonasIdRazonSocialTipo: TIntegerField
      FieldName = 'IdRazonSocialTipo'
    end
    object adodsPersonasIdSexo: TIntegerField
      FieldName = 'IdSexo'
    end
    object adodsPersonasIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
    end
    object adodsPersonasIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object adodsPersonasIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
    end
    object adodsPersonasRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsPersonasCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adodsPersonasRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsPersonasNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object adodsPersonasApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 100
    end
    object adodsPersonasApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 100
    end
    object adodsPersonasIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsPersonasIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object adodsPersonasNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
  end
  object adodsFormaPago33: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDIFormaPago33, Identificador, Descripcion, Bancarizad' +
      'o from CFDIFormasPago33'
    Parameters = <>
    Left = 40
    Top = 211
  end
  object adodsCuentasOrdenante: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        CuentasBancarias.IdCuentaBancaria, CuentasBancaria' +
      's.CuentaBancaria + '#39'-'#39' +Bancos.Nombre AS Cuenta, CuentasBancaria' +
      's.ClabeInterbancaria'#13#10'FROM            CuentasBancarias INNER JOI' +
      'N'#13#10'                         Bancos ON CuentasBancarias.IdBanco =' +
      ' Bancos.IdBanco'#13#10'WHERE CuentasBancarias.IdPersona = :IdPersonaCl' +
      'iente'
    MasterFields = 'IdPersonaCliente'
    Parameters = <
      item
        Name = 'IdPersonaClientE'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 570
      end>
    Left = 40
    Top = 259
  end
  object adodsCuentasBeneficiario: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        CuentasBancarias.IdCuentaBancaria, CuentasBancaria' +
      's.CuentaBancaria + '#39'-'#39' +Bancos.Nombre AS Cuenta, CuentasBancaria' +
      's.ClabeInterbancaria'#13#10'FROM            CuentasBancarias INNER JOI' +
      'N'#13#10'                         Bancos ON CuentasBancarias.IdBanco =' +
      ' Bancos.IdBanco'#13#10'WHERE CuentasBancarias.IdPersona IN (SELECT IdP' +
      'ersona FROM Personas WHERE IdRolTipo = 9)'#13#10
    Parameters = <>
    Left = 40
    Top = 315
  end
  object adodsCadenaPago: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoCadenaPago, Identificador, Descripcion from CFD' +
      'ITiposCadenaPago'
    Parameters = <>
    Left = 40
    Top = 379
  end
  object adodsMonedas: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'where UsoComun = 1'
    Parameters = <>
    Left = 136
    Top = 208
  end
  object ADOdsPagosFragmentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeEdit = ADOdsPagosFragmentosBeforeEdit
    BeforePost = ADOdsPagosFragmentosBeforePost
    AfterPost = ADOdsPagosFragmentosAfterPost
    CommandText = 
      'SELECT        PA.IdPago, PA.IdBanco, PA.IdPersonaCliente, PA.IdC' +
      'uentaBancariaEstadoCuenta, PA.IdMetodoPago, PA.IdCFDIFormaPago33' +
      ', PA.IdCuentaBancariaOrdenante, PA.IdCuentaBancariaBeneficiario,' +
      ' PA.IdCFDITipoCadenaPago, '#13#10'                         PA.IdContra' +
      'to, PA.IdAnexo, PA.IdCFDI_NCR, PA.IdMonedaOrigen, PA.FechaPago, ' +
      'PA.FolioPago, PA.SeriePago, PA.Referencia, PA.Importe, PA.Saldo,' +
      ' PA.Observaciones, PA.CuentaPago, PA.OrigenPago, PA.EsDeposito, ' +
      #13#10'                         PA.Certificado, PA.Cadena, pa.sello, ' +
      'Pa.IdPagoReal'#13#10'From Pagos PA'#13#10'where  Pa.IdPagoReal=:IdPagoReal'
    DataSource = dsMaster
    MasterFields = 'IdPagoReal'
    Parameters = <
      item
        Name = 'IdPagoReal'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 264
    Top = 160
    object ADOdsPagosFragmentosIdPago: TAutoIncField
      FieldName = 'IdPago'
      ReadOnly = True
    end
    object ADOdsPagosFragmentosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADOdsPagosFragmentosIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object ADOdsPagosFragmentosIdCuentaBancariaEstadoCuenta: TIntegerField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
    end
    object ADOdsPagosFragmentosIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADOdsPagosFragmentosIdCFDIFormaPago33: TIntegerField
      FieldName = 'IdCFDIFormaPago33'
    end
    object ADOdsPagosFragmentosIdCuentaBancariaOrdenante: TIntegerField
      FieldName = 'IdCuentaBancariaOrdenante'
    end
    object ADOdsPagosFragmentosIdCuentaBancariaBeneficiario: TIntegerField
      FieldName = 'IdCuentaBancariaBeneficiario'
    end
    object ADOdsPagosFragmentosIdCFDITipoCadenaPago: TIntegerField
      FieldName = 'IdCFDITipoCadenaPago'
    end
    object ADOdsPagosFragmentosIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object ADOdsPagosFragmentosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADOdsPagosFragmentosIdCFDI_NCR: TLargeintField
      FieldName = 'IdCFDI_NCR'
    end
    object ADOdsPagosFragmentosIdMonedaOrigen: TIntegerField
      FieldName = 'IdMonedaOrigen'
    end
    object ADOdsPagosFragmentosFechaPago: TDateTimeField
      DisplayLabel = 'Fecha de pago'
      FieldName = 'FechaPago'
    end
    object ADOdsPagosFragmentosSeriePago: TStringField
      DisplayLabel = 'Serie de pago'
      FieldName = 'SeriePago'
    end
    object ADOdsPagosFragmentosFolioPago: TIntegerField
      DisplayLabel = 'Folio pago'
      FieldName = 'FolioPago'
    end
    object ADOdsPagosFragmentosReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object ADOdsPagosFragmentosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADOdsPagosFragmentosSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADOdsPagosFragmentosObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 255
    end
    object ADOdsPagosFragmentosCuentaPago: TStringField
      DisplayLabel = 'Cuenta pago'
      FieldName = 'CuentaPago'
    end
    object ADOdsPagosFragmentosOrigenPago: TIntegerField
      DisplayLabel = 'Origen pago'
      FieldName = 'OrigenPago'
    end
    object ADOdsPagosFragmentosEsDeposito: TBooleanField
      DisplayLabel = 'Es dep'#243'sito'
      FieldName = 'EsDeposito'
    end
    object ADOdsPagosFragmentosCertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object ADOdsPagosFragmentosCadena: TStringField
      FieldName = 'Cadena'
      Size = 8000
    end
    object ADOdsPagosFragmentosIdPagoReal: TIntegerField
      FieldName = 'IdPagoReal'
    end
    object ADOdsPagosFragmentossello: TStringField
      FieldName = 'sello'
      Size = 2000
    end
    object ADOdsPagosFragmentosCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaCliente'
      Size = 150
      Lookup = True
    end
    object ADOdsPagosFragmentosBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = adodsBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 100
      Lookup = True
    end
    object ADOdsPagosFragmentosMonedaOrigen: TStringField
      FieldKind = fkLookup
      FieldName = 'MonedaOrigen'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMonedaOrigen'
      Size = 30
      Lookup = True
    end
    object ADOdsPagosFragmentosMetodopago: TStringField
      FieldKind = fkLookup
      FieldName = 'Metodopago'
      LookupDataSet = adodsMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 30
      Lookup = True
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsMasterDataChange
    Left = 148
    Top = 16
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 284
    Top = 275
  end
  object ADODtStConfiguraciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select UltimoFolioPago, UltimaSeriePago from Configuraciones'
    Parameters = <>
    Left = 276
    Top = 363
    object ADODtStConfiguracionesUltimoFolioPago: TIntegerField
      FieldName = 'UltimoFolioPago'
    end
    object ADODtStConfiguracionesUltimaSeriePago: TStringField
      FieldName = 'UltimaSeriePago'
    end
  end
  object adodsMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta '#13#10'f' +
      'rom MetodosPago'#13#10
    Parameters = <>
    Left = 32
    Top = 459
    object adodsMetodoPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
  object ADODtStAnexoSeleccion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select a.IdAnexo, A.IdContrato,A.IdAnexoEstatus, A.Identificador' +
      ','#13#10'C.Identificador +'#39' - '#39'+A.Identificador+'#39':'#39'+ A.Descripcion as ' +
      'identificadorCompleto,'#13#10' A.Descripcion, A.Fecha, C.IdPersona fro' +
      'm Anexos A , Contratos C '#13#10'where a.idcontrato=C.idcontrato and A' +
      '.idanexoEstatus<>5'#13#10'and C.idPersona=:IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 148
    Top = 275
    object AutoIncField5: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object IntegerField11: TIntegerField
      FieldName = 'IdContrato'
    end
    object IntegerField12: TIntegerField
      FieldName = 'IdAnexoEstatus'
    end
    object StringField4: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object StringField5: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Fecha'
    end
    object IntegerField13: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStAnexoSeleccionidentificadorCompleto: TStringField
      DisplayWidth = 250
      FieldName = 'identificadorCompleto'
      ReadOnly = True
      Size = 250
    end
  end
end
