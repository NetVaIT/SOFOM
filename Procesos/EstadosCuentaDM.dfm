inherited dmEstadosCuenta: TdmEstadosCuenta
  OldCreateOrder = True
  Height = 432
  Width = 668
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    CommandText = 
      'select IdEstadoCuenta, IdPersona,  IdContrato , FechaVencimiento' +
      ',FechaCorte, SaldoInsoluto, SaldoAnterior, SaldoAPagar, SaldoVen' +
      'cido'#13#10'from EstadosCuenta '#13#10
    Left = 64
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStClientes
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 150
      Lookup = True
    end
    object adodsMasterIdEstadoCuenta: TAutoIncField
      FieldName = 'IdEstadoCuenta'
      ReadOnly = True
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaCorte: TDateTimeField
      FieldName = 'FechaCorte'
    end
    object adodsMasterSaldoAnterior: TFMTBCDField
      FieldName = 'SaldoAnterior'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoAPagar: TFMTBCDField
      FieldName = 'SaldoAPagar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoVencido: TFMTBCDField
      FieldName = 'SaldoVencido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterIdContrato: TIntegerField
      DisplayLabel = 'Contrato No.'
      FieldName = 'IdContrato'
    end
    object adodsMasterFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
  end
  inherited ActionList: TActionList
    object ActActualizaEstadoCta: TAction
      Caption = 'ActActualizaEstadoCta'
      OnExecute = ActActualizaEstadoCtaExecute
    end
    object ActPDFEstadoCuenta: TAction
      Caption = 'Impresi'#243'n Estado Cuenta'
      OnExecute = ActPDFEstadoCuentaExecute
    end
  end
  object AdoDtStEstadoCtaDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = AdoDtStEstadoCtaDetalleNewRecord
    CommandText = 
      'select IdEstadoCuentaDetalle, IdEstadoCuenta, IdContrato, '#13#10'IdAn' +
      'exo, IdCuentaXCobrar, IdCuentaXCobrarDetalle, IdPagoAplicacion, ' +
      ' Concepto, TipoContrato,'#13#10' FechaMovimiento, TipoMovimiento, Impo' +
      'rte '#13#10'from EstadosCuentaDetalle ECD'#13#10'where idEstadoCuenta=:IdEst' +
      'adoCuenta'#13#10'order by TipoMovimiento DEsc,FechaMovimiento'
    DataSource = DSMaster
    IndexFieldNames = 'IdEstadoCuenta'
    MasterFields = 'IdEstadoCuenta'
    Parameters = <
      item
        Name = 'IdEstadoCuenta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 96
    object AdoDtStEstadoCtaDetalleIdEstadoCuentaDetalle: TIntegerField
      FieldName = 'IdEstadoCuentaDetalle'
    end
    object AdoDtStEstadoCtaDetalleIdEstadoCuenta: TIntegerField
      FieldName = 'IdEstadoCuenta'
    end
    object AdoDtStEstadoCtaDetalleIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object AdoDtStEstadoCtaDetalleIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object AdoDtStEstadoCtaDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object AdoDtStEstadoCtaDetalleConcepto: TStringField
      FieldName = 'Concepto'
      Size = 150
    end
    object AdoDtStEstadoCtaDetalleTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 10
    end
    object AdoDtStEstadoCtaDetalleIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object AdoDtStEstadoCtaDetalleIdCuentaXCobrarDetalle: TIntegerField
      FieldName = 'IdCuentaXCobrarDetalle'
    end
    object AdoDtStEstadoCtaDetalleFechaMovimiento: TDateTimeField
      FieldName = 'FechaMovimiento'
    end
    object AdoDtStEstadoCtaDetalleTipoMovimiento: TIntegerField
      FieldName = 'TipoMovimiento'
    end
    object AdoDtStEstadoCtaDetalleIdPagoAplicacion: TIntegerField
      FieldName = 'IdPagoAplicacion'
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 148
    Top = 16
  end
  object ADODtStDatosCXC: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select A.IdContrato,A.SaldoInsoluto,A.CapitalCobrado,  '#13#10'CT.Iden' +
      'tificador AS TipoContrato,'#13#10'C.IdPersona,  c.Fecha, c.Total as to' +
      'talCXC, c.IdAnexo,'#13#10' c.idcuentaXCobrar'#13#10'--, T.Acumula, t.Acumula' +
      'AQuien, T.BaseIVA, T.EsIVA, T.Fase,'#13#10'-- t.IdTipoContrato '#13#10',con.' +
      'IdPersona idpercontrato'#13#10' from Contratos con'#13#10'inner join Anexos ' +
      'A on A.IdContrato=con.IdContrato'#13#10'inner join CuentasXCobrar C on' +
      ' c.IdAnexo=A.IdAnexo'#13#10'inner join  ContratosTipos CT on CT.IdCont' +
      'ratoTipo=con.IdContratoTipo'#13#10'--inner join CuentasXCobrarTiposCon' +
      'ceptos T  on t.IdCuentaXCobrarTipo=CT.IdContratoTipo'#13#10'-- and  t.' +
      'EstadoCuenta=1 '#13#10'and  C.idCuentaXCobrarEstatus=0 -- Pendiente'#13#10'a' +
      'nd A.IDContrato=:IDContrato -- feb 20/17'#13#10'and c.Fecha>=:FechaCor' +
      'teUlt  and c.Fecha <=:FechaCorte '#13#10'-- and c.IdCuentaXCobrar not ' +
      'in (2,3,4)'#13#10'Order by C.IdPersona, A.idContrato,A.IdAnexo, c.Fech' +
      'a,  C.IdCuentaXCobrar'#13#10
    MasterFields = 'IDContrato'
    Parameters = <
      item
        Name = 'IDContrato'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FechaCorteUlt'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FechaCorte'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    Left = 320
    Top = 168
    object ADODtStDatosCXCIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDatosCXCFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStDatosCXCIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStDatosCXCIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDatosCXCIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object ADODtStDatosCXCTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 5
    end
    object ADODtStDatosCXCSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCCapitalCobrado: TFMTBCDField
      FieldName = 'CapitalCobrado'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCtotalCXC: TFMTBCDField
      FieldName = 'totalCXC'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCidpercontrato: TIntegerField
      FieldName = 'idpercontrato'
    end
  end
  object ADODtStDatosPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      '  Select P.idpago, P.IdPersonaCliente, P.FEchaPago, P.FolioPago,' +
      ' P. SeriePago,'#13#10'P.Importe, Pa.IdCuentaXCobrar,Pa.IdPagoAplicacio' +
      'n,  Pa.Importe Aplicado , OrigenPago'#13#10'from Pagos P '#13#10'  inner joi' +
      'n PagosAplicaciones Pa '#13#10'  on Pa.IdPago=P.IdPago'#13#10'  where  IdCue' +
      'ntaXCobrar=:IDCuentaXCobrar'#13#10'and  P.FechaPago>=:FechaInicial and' +
      ' P.FechaPago<=:FechaFin'#13#10
    DataSource = DSDatosCXC
    IndexFieldNames = 'IdCuentaXCobrar'
    MasterFields = 'IDCuentaXCobrar'
    Parameters = <
      item
        Name = 'IDCuentaXCobrar'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FechaInicial'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FechaFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 328
    Top = 304
    object ADODtStDatosPagosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADODtStDatosPagosFEchaPago: TDateTimeField
      FieldName = 'FEchaPago'
    end
    object ADODtStDatosPagosFolioPago: TIntegerField
      FieldName = 'FolioPago'
    end
    object ADODtStDatosPagosSeriePago: TStringField
      FieldName = 'SeriePago'
    end
    object ADODtStDatosPagosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosPagosIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDatosPagosAplicado: TFMTBCDField
      FieldName = 'Aplicado'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosPagosidpago: TAutoIncField
      FieldName = 'idpago'
      ReadOnly = True
    end
    object ADODtStDatosPagosOrigenPago: TIntegerField
      FieldName = 'OrigenPago'
    end
    object ADODtStDatosPagosIdPagoAplicacion: TAutoIncField
      FieldName = 'IdPagoAplicacion'
      ReadOnly = True
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 68
    Top = 171
  end
  object ADODtStClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdRolTipo, RFC, RazonSocial, IdPersonaEstatus,' +
      ' '#13#10'Identificador, NumCtaPagoCliente, SaldoCliente'#13#10'  from Person' +
      'as where idPersonaEstatus=1 and IdRoltipo=3 '
    Parameters = <>
    Left = 184
    Top = 80
    object ADODtStClientesIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStClientesIdRolTipo: TIntegerField
      FieldName = 'IdRolTipo'
    end
    object ADODtStClientesRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStClientesRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStClientesIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object ADODtStClientesIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADODtStClientesNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStClientesSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStContratosVig: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select *  from Contratos where  IdContratoEstatus=1'
    Parameters = <>
    Left = 64
    Top = 248
    object ADODtStContratosVigIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
    end
    object ADODtStContratosVigIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStContratosVigIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
    end
    object ADODtStContratosVigIdContratoEstatus: TIntegerField
      FieldName = 'IdContratoEstatus'
    end
    object ADODtStContratosVigIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object ADODtStContratosVigFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStContratosVigMontoAutorizado: TBCDField
      FieldName = 'MontoAutorizado'
      Precision = 19
    end
    object ADODtStContratosVigDiaCorte: TIntegerField
      FieldName = 'DiaCorte'
    end
    object ADODtStContratosVigDiaVencimiento: TIntegerField
      FieldName = 'DiaVencimiento'
    end
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select *  from Contratos where  IdContratoEstatus=1'
    Parameters = <>
    Left = 80
    Top = 328
  end
  object ADODtStDetalleCXC: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select CCD.* , CT.* from CuentasXCobrarDetalle CCD, '#13#10' CuentasXC' +
      'obrarTiposConceptos CT where CCD.IdCuentaXCobrarTipo=ct.IdCuenta' +
      'XCobrarTipo '#13#10'and  CCD.IdCuentaXCobrar=:IdCuentaXCobrar'#13#10'and Ct.' +
      'EstadoCuenta=1 '
    DataSource = DSDatosCXC
    MasterFields = 'IdCuentaXCobrar'
    Parameters = <
      item
        Name = 'IdCuentaXCobrar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 320
    Top = 224
    object ADODtStDetalleCXCIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStDetalleCXCIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDetalleCXCIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStDetalleCXCDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStDetalleCXCImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCPagosAplicados: TFMTBCDField
      FieldName = 'PagosAplicados'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCPagosAplicadosFactoraje: TFMTBCDField
      FieldName = 'PagosAplicadosFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStDetalleCXCIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStDetalleCXCFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStDetalleCXCAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStDetalleCXCAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStDetalleCXCEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStDetalleCXCBaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStDetalleCXCEstadoCuenta: TBooleanField
      FieldName = 'EstadoCuenta'
    end
    object ADODtStDetalleCXCFase: TIntegerField
      FieldName = 'Fase'
    end
    object ADODtStDetalleCXCTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 15
    end
    object ADODtStDetalleCXCOrdenAplica: TIntegerField
      FieldName = 'OrdenAplica'
    end
    object ADODtStDetalleCXCBaseMoratorios: TBooleanField
      FieldName = 'BaseMoratorios'
    end
    object ADODtStDetalleCXCEsMoratorios: TBooleanField
      FieldName = 'EsMoratorios'
    end
    object ADODtStDetalleCXCEsCapital: TBooleanField
      FieldName = 'EsCapital'
    end
    object ADODtStDetalleCXCEsInteres: TBooleanField
      FieldName = 'EsInteres'
    end
    object ADODtStDetalleCXCIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
  end
  object DSDatosCXC: TDataSource
    DataSet = ADODtStDatosCXC
    Left = 404
    Top = 168
  end
end
