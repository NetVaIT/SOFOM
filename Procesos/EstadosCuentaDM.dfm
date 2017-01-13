inherited dmEstadosCuenta: TdmEstadosCuenta
  OldCreateOrder = True
  Height = 432
  Width = 465
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    CommandText = 
      'select IdEstadoCuenta, IdPersona, FechaCorte, SaldoInsoluto, Sal' +
      'doAnterior, SaldoAPagar, SaldoVencido'#13#10'from EstadosCuenta '#13#10
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
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaCorte: TDateTimeField
      FieldName = 'FechaCorte'
    end
    object adodsMasterSaldoAnterior: TFMTBCDField
      FieldName = 'SaldoAnterior'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoAPagar: TFMTBCDField
      FieldName = 'SaldoAPagar'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoVencido: TFMTBCDField
      FieldName = 'SaldoVencido'
      Precision = 18
      Size = 6
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
  end
  object AdoDtStEstadoCtaDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = AdoDtStEstadoCtaDetalleNewRecord
    CommandText = 
      'select IdEstadoCuentaDetalle, IdEstadoCuenta, IdContrato, '#13#10'IdAn' +
      'exo, IdCuentaXCobrar, IdCuentaXCobrarDetalle, IdPago,  Concepto,' +
      ' TipoContrato,'#13#10' FechaMovimiento, TipoMovimiento, Importe '#13#10'from' +
      ' EstadosCuentaDetalle ECD'#13#10'where idEstadoCuenta=:IdEstadoCuenta'#13 +
      #10'order by TipoMovimiento DEsc,FechaMovimiento'
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
    object AdoDtStEstadoCtaDetalleIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object AdoDtStEstadoCtaDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
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
      'select A.IdContrato,CT.Identificador AS TipoContrato, C.IdPerson' +
      'a,  c.Fecha, c.Total,c.IdAnexo, '#13#10'CCD.*, T.Acumula, t.AcumulaAQu' +
      'ien, T.BaseIVA,'#13#10' T.EsIVA, T.Fase, t.IdTipoContrato from Cuentas' +
      'XCobrarDetalle CCD '#13#10'inner join CuentasXCobrarTiposConceptos T  ' +
      'on t.IdCuentaXCobrarTipo=CCD.IdCuentaXCobrarTipo'#13#10'inner join Con' +
      'tratosTipos CT on CT.IdContratoTipo=T.IdTipoContrato'#13#10'inner join' +
      ' CuentasXCobrar C on c.IdCuentaXCobrar=CCD.IdCuentaXCobrar'#13#10'inne' +
      'r join Anexos A on A.idAnexo=C.IdAnexo '#13#10'and  t.EstadoCuenta=1 '#13 +
      #10'and  C.idCuentaXCobrarEstatus=0 -- Pendiente'#13#10'and c.Fecha<=:Fec' +
      'haCorte'#13#10'Order by C.IdPersona, c.Fecha,  C.IdCuentaXCobrar'#13#10
    Parameters = <
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
    object ADODtStDatosCXCTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStDatosCXCIdCuentaXCobrarDetalle: TAutoIncField
      FieldName = 'IdCuentaXCobrarDetalle'
      ReadOnly = True
    end
    object ADODtStDatosCXCIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
    end
    object ADODtStDatosCXCIdCuentaXCobrarTipo: TIntegerField
      FieldName = 'IdCuentaXCobrarTipo'
    end
    object ADODtStDatosCXCIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStDatosCXCDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtStDatosCXCImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStDatosCXCAcumulaAQuien: TIntegerField
      FieldName = 'AcumulaAQuien'
    end
    object ADODtStDatosCXCBaseIVA: TIntegerField
      FieldName = 'BaseIVA'
    end
    object ADODtStDatosCXCEsIVA: TBooleanField
      FieldName = 'EsIVA'
    end
    object ADODtStDatosCXCFase: TIntegerField
      FieldName = 'Fase'
    end
    object ADODtStDatosCXCIdTipoContrato: TIntegerField
      FieldName = 'IdTipoContrato'
    end
    object ADODtStDatosCXCIdContrato: TIntegerField
      FieldName = 'IdContrato'
    end
    object ADODtStDatosCXCSaldoFactoraje: TFMTBCDField
      FieldName = 'SaldoFactoraje'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosCXCTipoContrato: TStringField
      FieldName = 'TipoContrato'
      Size = 5
    end
  end
  object ADODtStDatosPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      '  Select P.idpago, P.IdPersonaCliente, P.FEchaPago, P.FolioPago,' +
      ' P. SeriePago,'#13#10'P.Importe, Pa.IdCuentaXCobrar,  Pa.Importe Aplic' +
      'ado , OrigenPago'#13#10'from Pagos P '#13#10'  inner join PagosAplicaciones ' +
      'Pa '#13#10'  on Pa.IdPago=P.IdPago'#13#10'  '
    Parameters = <>
    Left = 320
    Top = 248
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
end
