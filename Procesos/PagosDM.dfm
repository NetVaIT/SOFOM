inherited dmPagos: TdmPagos
  OldCreateOrder = True
  Height = 669
  Width = 1029
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforeInsert = adodsMasterBeforeInsert
    BeforePost = adodsMasterBeforePost
    AfterPost = adodsMasterAfterPost
    AfterCancel = adodsMasterAfterCancel
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPago, IdBanco, IdPersonaCliente, IdCuentaBancariaEstado' +
      'Cuenta, IdMetodoPago, IdContrato, IdAnexo, IdCFDI_NCR, IdMonedaO' +
      'rigen, FechaPago, FolioPago, SeriePago, Referencia, Importe, Sal' +
      'do, Observaciones, '#13#10'CuentaPago, OrigenPago, EsDeposito'#13#10'FROM Pa' +
      'gos'
    Left = 48
    object adodsMasterIdPago: TAutoIncField
      FieldName = 'IdPago'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
      Visible = False
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
      Visible = False
    end
    object adodsMasterIdContrato: TIntegerField
      FieldName = 'IdContrato'
      Visible = False
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsMasterIdCFDI_NCR: TLargeintField
      FieldName = 'IdCFDI_NCR'
      Visible = False
    end
    object adodsMasterIdMonedaOrigen: TIntegerField
      FieldName = 'IdMonedaOrigen'
      Visible = False
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADOSPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaCliente'
      Size = 150
      Lookup = True
    end
    object adodsMasterAnexo: TStringField
      DisplayWidth = 250
      FieldKind = fkLookup
      FieldName = 'Anexo'
      LookupDataSet = ADODtStAnexos
      LookupKeyFields = 'IdAnexo'
      LookupResultField = 'identificadorCompleto'
      KeyFields = 'IdAnexo'
      Visible = False
      Size = 250
      Lookup = True
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FechaPago'
    end
    object adodsMasterSeriePago: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'SeriePago'
    end
    object adodsMasterFolioPago: TIntegerField
      DisplayLabel = 'Folio'
      FieldName = 'FolioPago'
    end
    object adodsMasterEsDeposito: TBooleanField
      DisplayLabel = 'Es dep'#243'sito'
      FieldName = 'EsDeposito'
    end
    object adodsMasterMetodoPago: TStringField
      DisplayLabel = 'M'#233'todo de pago'
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtstMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Visible = False
      Size = 30
      Lookup = True
    end
    object adodsMasterCuentaPago: TStringField
      DisplayLabel = 'Cuenta de pago'
      FieldName = 'CuentaPago'
      Visible = False
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = ADoDtStBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Visible = False
      Lookup = True
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      DisplayFormat = '$###,##0.00##'
      EditFormat = '###.######'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      DisplayFormat = '$###,##0.00##'
      Precision = 18
      Size = 6
    end
    object adodsMasterMonedaOrigen: TStringField
      DisplayLabel = 'Moneda origen'
      FieldKind = fkLookup
      FieldName = 'MonedaOrigen'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMonedaOrigen'
      Visible = False
      Size = 80
      Lookup = True
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 255
    end
    object adodsMasterOrigenPago: TIntegerField
      DisplayLabel = 'Or'#237'gen de pago'
      FieldName = 'OrigenPago'
      Visible = False
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
  end
  inherited ActionList: TActionList
    Top = 72
    object ActGeneraPrefMoratorios: TAction
      Caption = 'ActGeneraPrefMoratorios'
      OnExecute = ActGeneraPrefMoratoriosExecute
    end
    object actAbonarCapital: TAction
      Caption = 'Abonar capital'
      ImageIndex = 13
      OnExecute = actAbonarCapitalExecute
    end
    object actCrearCXCAbonoCapital: TAction
      Caption = 'Abono a Capital'
      OnExecute = actCrearCXCAbonoCapitalExecute
    end
    object ActAjusteAmortiza: TAction
      Caption = 'ActAjusteAmortiza'
      OnExecute = ActAjusteAmortizaExecute
    end
    object ActPagosAnticipados: TAction
      Caption = 'ActPagosAnticipados'
      OnExecute = ActPagosAnticipadosExecute
    end
    object ActVerYCreaCXCFinales: TAction
      Caption = 'ActVerYCreaCXCFinales'
      OnExecute = ActVerYCreaCXCFinalesExecute
    end
  end
  object ADOSPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdPersonaTipo, IdRolTipo, IdRazonSocialTipo,'#13#10 +
      ' IdSexo, IdEstadoCivil, IdPais, IdPoblacion, RFC, CURP,'#13#10' RazonS' +
      'ocial, Nombre, ApellidoPaterno, ApellidoMaterno,'#13#10'IdMetodoPago,I' +
      'dPersonaEstatus,NumCtaPagoCliente '#13#10'from Personas where idRolTip' +
      'o=3'#13#10'Order by RazonSocial'
    Parameters = <>
    Left = 152
    Top = 72
  end
  object ADODtStConfiguraciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select UltimoFolioPago, UltimaSeriePago from Configuraciones'
    Parameters = <>
    Left = 156
    Top = 139
    object ADODtStConfiguracionesUltimoFolioPago: TIntegerField
      FieldName = 'UltimoFolioPago'
    end
    object ADODtStConfiguracionesUltimaSeriePago: TStringField
      FieldName = 'UltimaSeriePago'
    end
  end
  object ADoDtStBancos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBanco, IdPaisBanco, Identificador, Nombre, '#13#10'Descripcio' +
      'n, Siglas from Bancos'
    Parameters = <>
    Left = 316
    Top = 139
    object ADoDtStBancosIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object ADoDtStBancosIdPaisBanco: TIntegerField
      FieldName = 'IdPaisBanco'
    end
    object ADoDtStBancosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADoDtStBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object ADoDtStBancosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object ADoDtStBancosSiglas: TStringField
      FieldName = 'Siglas'
      Size = 10
    end
  end
  object ADODtStAplicacionesPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStAplicacionesPagosAfterPost
    OnNewRecord = ADODtStAplicacionesPagosNewRecord
    CommandText = 
      'select IdPagoAplicacion, IdPago, IdCFDI, IdPersonaCliente,'#13#10' IdC' +
      'uentaXCobrar, FechaAplicacion, Importe, ImporteFactoraje'#13#10' from ' +
      'PagosAplicaciones'#13#10'where IdPersonaCliente=:IdPersonaCliente'
    DataSource = DSMaster
    IndexFieldNames = 'IdPersonaCliente'
    MasterFields = 'IdPersonaCliente'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 156
    Top = 243
    object ADODtStAplicacionesPagosIdPagoAplicacion: TIntegerField
      FieldName = 'IdPagoAplicacion'
    end
    object ADODtStAplicacionesPagosIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object ADODtStAplicacionesPagosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADODtStAplicacionesPagosIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStAplicacionesPagosFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object ADODtStAplicacionesPagosImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStAplicacionesPagosImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object ADODtStCXCPendientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select CXC.Descripcion, CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrar' +
      'Base, CXC.IdCuentaXCobrarEstatus, CXC.IdPersona, CXC.IdAnexosAmo' +
      'rtizaciones AS IdAnexoAmortizacion, CXC.IdAnexo, CXC.IdEstadoCue' +
      'nta, CXC.IdCFDI, '#13#10'CXC.Fecha, CXC.FechaVencimiento, CXC.Importe,' +
      ' CXC.Impuesto, CXC.Interes, CXC.Total, CXC.Saldo, CXC.SaldoFacto' +
      'raje, CXC.EsMoratorio, CI.SaldoDocumento, Ci.SaldoFactoraje as S' +
      'aldoFactorajeCFDI, '#13#10'ci.serie, Ci.folio'#13#10' from CuentasXCobrar CX' +
      'C  '#13#10'left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI where '#13#10'-- CXC.i' +
      'danexosamortizaciones is not null and -- jun 30/17 '#13#10' Saldo >0 a' +
      'nd IDPersona=:IdPersonaCliente '#13#10'and (((IdCuentaXCobrarEstatus=0' +
      ' or (IdCuentaXCobrarEstatus=1))  and  ESMoratorio=0)'#13#10'or( Esmora' +
      'torio=1)'#13#10' or( (CXC.Fecha<=dbo.GetDateAux() and IdCuentaXCobrarE' +
      'status=-1) and 1=:EsAnti) -- para poder facturar addelantados'#13#10'o' +
      'r (exists (select * from CuentasXCobrarDetalle CXCD where CXCD.d' +
      'escripcion like'#39'%Abono Capital%'#39' and CXC.IdCuentaXCobrar=CXCD.id' +
      'cuentaXCobrar )'#13#10'and CXC.IdCFDI is null) )-- IdCuentaXCobrarEsta' +
      'tus=-1 and puede que esten facturadas'#13#10' and CXC.IDAnexo=:IdAnexo' +
      #13#10'order by CXC.idanexosamortizaciones,EsMoratorio DEsc, CXC.Fech' +
      'aVencimiento'
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona;IdAnexo'
    MasterFields = 'IdPersonaCliente;IdAnexo'
    Parameters = <
      item
        Name = 'IdPersonaCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EsAnti'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdAnexo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 380
    Top = 243
    object ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField
      DisplayLabel = 'No.CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object ADODtStCXCPendientesIdCuentaXCobrarEstatus: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object ADODtStCXCPendientesIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStCXCPendientesIdAnexoAmortizacion: TIntegerField
      FieldName = 'IdAnexoAmortizacion'
    end
    object ADODtStCXCPendientesIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStCXCPendientesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCXCPendientesImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesInteres: TFMTBCDField
      FieldName = 'Interes'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object ADODtStCXCPendientesSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesSaldoFactorajeCFDI: TFMTBCDField
      FieldName = 'SaldoFactorajeCFDI'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCXCPendientesIdCuentaXCobrarBase: TIntegerField
      FieldName = 'IdCuentaXCobrarBase'
    end
    object ADODtStCXCPendientesIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCXCPendientesEsMoratorio: TBooleanField
      FieldName = 'EsMoratorio'
    end
    object ADODtStCXCPendientesFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha Vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object ADODtStCXCPendientesserie: TStringField
      FieldName = 'serie'
    end
    object ADODtStCXCPendientesfolio: TLargeintField
      FieldName = 'folio'
    end
    object ADODtStCXCPendientesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object ADODtStCxCDetallePend: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsMasterAfterCancel
    CommandText = 
      'Select * From vw_CXCParaAplicar'#13#10'where Saldo >0  '#13#10'and (SaldoDoc' +
      'umento is null or SaldoDocumento>0.00001)'#13#10' and (SaldoDoc1 is nu' +
      'll or SaldoDoc1>0.00001)'#13#10'and IdCuentaXCobrar=:IdCuentaXCobrar'#13#10 +
      'and  (EstatusCFDI1 <>3 or  EstatusCFDI2 <>3  or (EstatusCFDI1 is' +
      ' NULL and EstatusCFDI2 is NULL))'#13#10' order by fase desc, ordenApli' +
      'ca  '
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 636
    Top = 251
    object ADODtStCxCDetallePendIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStCxCDetallePendIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStCxCDetallePendDescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStCxCDetallePendImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCxCDetallePendIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendimpconc: TFMTBCDField
      FieldName = 'impconc'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendFase: TIntegerField
      FieldName = 'Fase'
    end
    object ADODtStCxCDetallePendTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStCxCDetallePendOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStCxCDetallePendIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStCxCDetallePendIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStCxCDetallePendSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStCxCDetallePendAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStCxCDetallePendAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStCxCDetallePendEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStCxCDetallePendBaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStCxCDetallePendEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStCxCDetallePendBaseMoratorios: TBooleanField
      FieldName = 'BaseMoratorios'
    end
    object ADODtStCxCDetallePendEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
    object ADODtStCxCDetallePendacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStCxCDetallePendIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStCxCDetallePendIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStCxCDetallePendsaldoDoc1: TFMTBCDField
      FieldName = 'saldoDoc1'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendivaCFDI2: TFloatField
      FieldName = 'ivaCFDI2'
    end
    object ADODtStCxCDetallePendSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStCxCDetallePendEsCapital: TBooleanField
      FieldName = 'EsCapital'
    end
    object ADODtStCxCDetallePendEsInteres: TBooleanField
      FieldName = 'EsInteres'
    end
    object ADODtStCxCDetallePendDescripTC: TStringField
      FieldName = 'DescripTC'
      Size = 50
    end
    object ADODtStCxCDetallePendEstatusCFDI1: TIntegerField
      FieldName = 'EstatusCFDI1'
    end
    object ADODtStCxCDetallePendEstatusCFDI2: TIntegerField
      FieldName = 'EstatusCFDI2'
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 148
    Top = 16
  end
  object DSCXCPendientes: TDataSource
    DataSet = ADODtStCXCPendientes
    Left = 500
    Top = 248
  end
  object ADODtstAplicacionesInternas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtstAplicacionesInternasAfterPost
    CommandText = 
      'select IDPagoAplicacionInterna, IDPagoAplicacion,'#13#10' IdCuentaXCob' +
      'rarDetalle, IDCFDI, IDCFDIConcepto,'#13#10' Importe, ImporteFactoraje ' +
      'from PagosAplicacionesInternas'#13#10' where IDPagoAplicacion=:IDPagoA' +
      'plicacion'
    DataSource = DSAplicaciones
    IndexFieldNames = 'IDPagoAplicacion'
    MasterFields = 'IDPagoAplicacion'
    Parameters = <
      item
        Name = 'IDPagoAplicacion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 275
    Top = 323
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
    object ADODtstAplicacionesInternasImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtstAplicacionesInternasImporteFactoraje: TFMTBCDField
      FieldName = 'ImporteFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object DSAplicaciones: TDataSource
    DataSet = ADODtStAplicacionesPagos
    Left = 276
    Top = 248
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 44
    Top = 323
  end
  object ADODtStSaldoPrioridad1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select Sum(CxCD.saldo) as InteresMasIVA from CuentasXCobrarDetal' +
      'le CXCD '#13#10'inner join CuentasXCobrarTiposConceptos CXCTC on CXCD.' +
      'IdCuentaXCobrarTipo=CXCTC.IdCuentaXCobrarTipo'#13#10#13#10'where CXCD.IdCu' +
      'entaXCobrar=:IdCuentaXCobrar and CXCTC.ordenAplica =:orden'#13#10
    DataSource = DSCXCPendientes
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'orden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 500
    Top = 315
    object ADODtStSaldoPrioridad1InteresMasIVA: TFMTBCDField
      FieldName = 'InteresMasIVA'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object ADODtStConceptoIVA: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      ' Select * from vw_CXCParaAplicar '#13#10'where IdCuentaXCobrar=:IdCuen' +
      'taXCobrar and ordenAplica =:orden'#13#10'and saldo>0  '#13#10'and (SaldoDocu' +
      'mento is null or SaldoDocumento>0.00001)'#13#10'                     a' +
      'nd (SaldoDoc1 is null or SaldoDoc1>0.00001)'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'orden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 492
    Top = 387
    object ADODtStConceptoIVAacumulaACXC: TIntegerField
      FieldName = 'acumulaACXC'
    end
    object ADODtStConceptoIVAIVAde: TIntegerField
      FieldName = 'IVAde'
    end
    object ADODtStConceptoIVAIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStConceptoIVAIDCFDIIVA: TLargeintField
      FieldName = 'IDCFDIIVA'
    end
    object ADODtStConceptoIVAIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
    end
    object ADODtStConceptoIVAimpconc: TFMTBCDField
      FieldName = 'impconc'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVAIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStConceptoIVAIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStConceptoIVADescripCXC: TStringField
      FieldName = 'DescripCXC'
      Size = 100
    end
    object ADODtStConceptoIVAImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVASaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStConceptoIVAIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStConceptoIVAAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStConceptoIVAAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStConceptoIVABaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStConceptoIVAEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStConceptoIVADescripTC: TStringField
      FieldName = 'DescripTC'
      Size = 50
    end
    object ADODtStConceptoIVAIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStConceptoIVATemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStConceptoIVAEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStConceptoIVAFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStConceptoIVAIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 15
    end
    object ADODtStConceptoIVAOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStConceptoIVAFase: TIntegerField
      FieldName = 'Fase'
    end
  end
  object ADODtstMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta '#13#10'f' +
      'rom MetodosPago'#13#10
    Parameters = <>
    Left = 44
    Top = 395
    object ADODtstMetodoPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtstMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtstMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtstMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
  object ADODtStconsulta: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersonaCliente'
    Parameters = <>
    Left = 276
    Top = 435
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'No.CuentaXCobrar'
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IdCuentaXCobrarEstatus'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IdPersona'
    end
    object IntegerField3: TIntegerField
      FieldName = 'IdAnexosAmortizaciones'
    end
    object IntegerField4: TIntegerField
      FieldName = 'IdAnexo'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Fecha'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'Impuesto'
      Precision = 18
      Size = 6
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object IntegerField5: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object adopSetCXCUPMoratorio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdMoratorios;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 48
    Top = 512
  end
  object ADODtStPrefacturasCFDI: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterOpen = ADODtStPrefacturasCFDIAfterOpen
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
      '0,[dbo].GetDateAux()), 0)'#13#10'order by IDCFDIESTATUS, Fecha '
    Parameters = <>
    Left = 480
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
    Left = 480
    Top = 88
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
    Left = 488
    Top = 168
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
  object DSPrefacturasCFDI: TDataSource
    DataSet = ADODtStPrefacturasCFDI
    Left = 616
    Top = 24
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
    Left = 616
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
    Left = 752
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
  object ADOSumaIVAMora: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect SUM(CXCD.Saldo) as IVAReg  from CuentasXCobrarDetalle  CX' +
      'CD   -- para confirmar valor de IVA'#13#10'inner join CuentasXCobrarTi' +
      'posConceptos CXCTC on CXCD.IdCuentaXCobrarTipo=CXCTC.IdCuentaXCo' +
      'brarTipo'#13#10' where CXCTC.Facturar=1 and CXCTC.EsIVA =1 '#13#10'-- des ag' +
      'o 1/17 and ((CXCTC.EsMoratorios=1) or(CXCTC.Descripcion like '#39'%A' +
      'bono Capital%'#39'))'#13#10'and CXCD.IdCuentaXCobrar =:IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 776
    Top = 312
  end
  object ADODtStPagosAuxiliarX: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStPagosAuxiliarXNewRecord
    CommandText = 
      'select IDPagoAuxiliarMora, IdCuentaXCobrar, IdPagoAplicacionInte' +
      'rna,'#13#10'IdCuentaXCobrarDetalle, IDCFDI, IDCFDIConcepto, IDUsuario,' +
      ' '#13#10'Fecha, Importe, EsCondonacion, Observaciones  '#13#10'from PagosAux' +
      'iliaresMora where idPagoAplicacionInterna=:IdPagoAplicaiconInter' +
      'na'
    DataSource = DSAplicacionInterna
    IndexFieldNames = 'IdPagoAplicacionInterna'
    MasterFields = 'IDPagoAplicacionInterna'
    Parameters = <
      item
        Name = 'IdPagoAplicaiconInterna'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 779
    Top = 387
    object ADODtStPagosAuxiliarXIDPagoAuxiliarMora: TIntegerField
      FieldName = 'IDPagoAuxiliarMora'
    end
    object ADODtStPagosAuxiliarXIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStPagosAuxiliarXIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStPagosAuxiliarXIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
    end
    object ADODtStPagosAuxiliarXIDCFDIConcepto: TLargeintField
      FieldName = 'IDCFDIConcepto'
    end
    object ADODtStPagosAuxiliarXIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStPagosAuxiliarXFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStPagosAuxiliarXImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStPagosAuxiliarXEsCondonacion: TBooleanField
      FieldName = 'EsCondonacion'
    end
    object ADODtStPagosAuxiliarXObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStPagosAuxiliarXIdPagoAplicacionInterna: TIntegerField
      FieldName = 'IdPagoAplicacionInterna'
    end
  end
  object DSAplicacionInterna: TDataSource
    DataSet = ADODtstAplicacionesInternas
    Left = 652
    Top = 392
  end
  object ADODtStCXCDetalleDescto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStPagosAuxiliarXNewRecord
    CommandText = 
      'select IdCuentaXCobrarDescuento, IdCuentaXCobrarDetalle,'#13#10' IDUsu' +
      'ario, IdCFDI, Fecha, Monto, Observaciones from CuentasXCobrarDet' +
      'alleDescuento'#13#10'where idCuentaXCobrarDetalle=:IdCuentaXCobrarDeta' +
      'lle'
    DataSource = DSCXCDetalle
    IndexFieldNames = 'IdCuentaXCobrarDetalle'
    MasterFields = 'IdCuentaXCobrarDetalle'
    Parameters = <
      item
        Name = 'IdCuentaXCobrarDetalle'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 779
    Top = 459
    object ADODtStCXCDetalleDesctoIdCuentaXCobrarDescuento: TAutoIncField
      FieldName = 'IdCuentaXCobrarDescuento'
      ReadOnly = True
    end
    object ADODtStCXCDetalleDesctoIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object ADODtStCXCDetalleDesctoIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStCXCDetalleDesctoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCXCDetalleDesctoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCXCDetalleDesctoMonto: TFMTBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 6
    end
    object ADODtStCXCDetalleDesctoObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 200
    end
  end
  object DSCXCDetalle: TDataSource
    DataSet = ADODtStCxCDetallePend
    Left = 652
    Top = 464
  end
  object ADODtStDetalleCXCMostrar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * From CuentasxcobrarDetalle'#13#10'where Saldo >0'#13#10'and IdCuent' +
      'aXCobrar=:IdCuentaXCobrar'#13#10
    DataSource = DSCXCPendientes
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    Left = 724
    Top = 187
    object ADODtStDetalleCXCMostrarIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStDetalleCXCMostrarIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDetalleCXCMostrarIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStDetalleCXCMostrarIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStDetalleCXCMostrarDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStDetalleCXCMostrarImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCMostrarSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object ADODtStAnexos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select a.IdAnexo, A.IdContrato,A.IdAnexoEstatus, A.Identificador' +
      ','#13#10'C.Identificador +'#39' - '#39'+A.Identificador+'#39':'#39'+ A.Descripcion as ' +
      'identificadorCompleto,'#13#10' A.Descripcion, A.Fecha, C.IdPersona fro' +
      'm Anexos A , Contratos C '#13#10'where a.idcontrato=C.idcontrato and A' +
      '.idanexoEstatus<>5'
    Parameters = <>
    Left = 52
    Top = 131
    object ADODtStAnexosIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object ADODtStAnexosIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object ADODtStAnexosIdAnexoEstatus: TIntegerField
      FieldName = 'IdAnexoEstatus'
    end
    object ADODtStAnexosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADODtStAnexosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStAnexosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStAnexosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStAnexosidentificadorCompleto: TStringField
      DisplayWidth = 250
      FieldName = 'identificadorCompleto'
      ReadOnly = True
      Size = 250
    end
  end
  object DSPersonas: TDataSource
    DataSet = ADOSPersonas
    Left = 48
    Top = 80
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
    Left = 52
    Top = 187
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
  object DetallesCXCParaFacturarMora: TADODataSet
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
    DataSource = DSCXCPendientes
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
    Left = 792
    Top = 248
    object DetallesCXCParaFacturarMoraIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object DetallesCXCParaFacturarMoraIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object DetallesCXCParaFacturarMoraIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object DetallesCXCParaFacturarMoraDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object DetallesCXCParaFacturarMoraImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarMoraSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object DetallesCXCParaFacturarMoraFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object DetallesCXCParaFacturarMoraIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object DetallesCXCParaFacturarMoraEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object DetallesCXCParaFacturarMoraTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object DetallesCXCParaFacturarMoraIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object DetallesCXCParaFacturarMoraEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
  end
  object ADOPActualizaTotalesCXC: TADOStoredProc
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
      end>
    Left = 208
    Top = 520
  end
  object adoqAnexosSel: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Contratos.IdContrato, Contratos.IdPersona, Contrat' +
        'os.IdContratoTipo, Anexos.IdAnexo,'
      
        'Contratos.Identificador AS Contrato, Anexos.Identificador AS Ane' +
        'xo, Personas.RazonSocial AS Cliente, Anexos.SaldoInsoluto'
      'FROM            Anexos INNER JOIN'
      
        '                         Contratos ON Anexos.IdContrato = Contra' +
        'tos.IdContrato INNER JOIN'
      
        '                         Personas ON Contratos.IdPersona = Perso' +
        'nas.IdPersona'
      
        'WHERE        (Anexos.MontoVencido = 0) AND (Anexos.SaldoInsoluto' +
        ' >= 0)'
      'and Anexos.idanexo=:IdAnexo --Abr 17/17')
    Left = 48
    Top = 600
    object adoqAnexosSelIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
      Visible = False
    end
    object adoqAnexosSelIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adoqAnexosSelIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adoqAnexosSelIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
      Visible = False
    end
    object adoqAnexosSelContrato: TStringField
      FieldName = 'Contrato'
    end
    object adoqAnexosSelAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adoqAnexosSelCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adoqAnexosSelSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adopCXCAbonarCapital: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarAbonarCapital;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ImporteCapital'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 200
    Top = 600
  end
  object ADOStrdPrcGenCXCXAmortiza: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarPorAmortizacion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoAmortizacion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 504
    Top = 592
  end
  object ADOQryVerificaSaldoFinal: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'idAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select c.idanexo,aa.IdAnexoCredito,'
      
        'SUM(PagoTotal) SaldoPorCobrarOSinPago from AnexosAmortizaciones ' +
        'aa '
      
        'inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredit' +
        'o and c.IdAnexoCreditoEstatus=1 '
      'where c.IdAnexo=:idAnexo and'
      
        '(not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexos' +
        'Amortizaciones=aa.idanexoamortizacion)or'
      
        ' Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmorti' +
        'zaciones=aa.idanexoamortizacion and cc.Saldo>0) )'
      ''
      'Group by c.IdAnexo, aa.IdAnexoCredito')
    Left = 660
    Top = 595
  end
  object ADODtStCFDINotaCredito: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select * from CFDI where idcfdiTipoDocumento=2 and '#13#10'SaldoDocume' +
      'nto>0 and IdCFDIEstatus <>3 and '#13#10'IdPersonaReceptor=:Idpersona'
    Parameters = <
      item
        Name = 'Idpersona'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 799
    Top = 593
    object ADODtStCFDINotaCreditoIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStCFDINotaCreditoIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStCFDINotaCreditoIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStCFDINotaCreditoIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStCFDINotaCreditoIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStCFDINotaCreditoSerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStCFDINotaCreditoFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStCFDINotaCreditoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStCFDINotaCreditoSubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object ADODtStCFDINotaCreditoTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDINotaCreditoTotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object ADODtStCFDINotaCreditoSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDINotaCreditoObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStCFDINotaCreditoSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
  end
  object ADOdsAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 816
    Top = 528
  end
  object ADODtStSelMetPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta, '#13#10 +
      'ClaveSAT2016 from MetodosPago'#13#10'where idmetodoPago>0'
    Parameters = <>
    Left = 720
    Top = 528
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
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'where UsoComun = 1'
    Parameters = <>
    Left = 48
    Top = 248
  end
end
