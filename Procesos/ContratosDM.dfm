inherited dmContratos: TdmContratos
  OldCreateOrder = True
  Height = 480
  Width = 694
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdContrato, IdPersona, IdContratoTipo, IdContratoEstatus,' +
      ' Identificador, Fecha, MontoAutorizado, DiaCorte, DiaVencimiento' +
      ' from Contratos'
    object adodsMasterIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdContratoTipo: TIntegerField
      FieldName = 'IdContratoTipo'
      Visible = False
    end
    object adodsMasterIdContratoEstatus: TIntegerField
      FieldName = 'IdContratoEstatus'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Cliente'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsContratosTipos
      LookupKeyFields = 'IdContratoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdContratoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterMontoAutorizado: TBCDField
      DisplayLabel = 'Autorizado'
      FieldName = 'MontoAutorizado'
      currency = True
      Precision = 19
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsContratosEstatus
      LookupKeyFields = 'IdContratoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdContratoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterDiaCorte: TIntegerField
      DisplayLabel = 'Dia de Corte'
      FieldName = 'DiaCorte'
    end
    object adodsMasterDiaVencimiento: TIntegerField
      DisplayLabel = 'Dia de Vencimiento'
      FieldName = 'DiaVencimiento'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 416
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 80
    object actCrearAnexo: TAction
      Caption = 'Crear anexo'
      Hint = 'Crea anexo de una cotizacion'
      ImageIndex = 10
      OnExecute = actCrearAnexoExecute
    end
    object actGenerar: TAction
      Caption = 'Generar'
      Hint = 'Generar amortizaciones y pagos iniciales'
      ImageIndex = 10
      OnExecute = actGenerarExecute
      OnUpdate = actGenerarUpdate
    end
    object actPreAmortizaciones: TAction
      Caption = 'Prever'
      Hint = 'Prever amortizaciones'
      Visible = False
      OnExecute = actPreAmortizacionesExecute
    end
    object actGenAmortizaciones: TAction
      Caption = 'Generar'
      Hint = 'Generar amortizaciones'
      Visible = False
      OnExecute = actGenAmortizacionesExecute
    end
    object actCrearPagoInicial: TAction
      Caption = 'Crear pago inicial'
      Visible = False
      OnExecute = actCrearPagoInicialExecute
      OnUpdate = actCrearPagoInicialUpdate
    end
    object actAbonarCapital: TAction
      Caption = 'Abono a capital'
      Visible = False
      OnExecute = actAbonarCapitalExecute
    end
    object actGetTipoCambio: TAction
      Caption = '...'
      Hint = 'Obtiene la '#250'ltima cotizaci'#243'n de la moneda'
      OnExecute = actGetTipoCambioExecute
    end
    object actMoratorios: TAction
      Caption = 'Moratorios'
      ImageIndex = 13
      OnExecute = actMoratoriosExecute
    end
    object actRestructurar: TAction
      Caption = 'Restructurar'
      ImageIndex = 13
      OnExecute = actRestructurarExecute
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    Left = 128
    Top = 16
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial AS Cliente from Personas'#13#10'WHERE Id' +
      'RolTipo = 3'
    Parameters = <>
    Left = 24
    Top = 72
  end
  object adodsContratosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoTipo, Descripcion from ContratosTipos'
    Parameters = <>
    Left = 24
    Top = 128
  end
  object adodsContratosEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoEstatus, Descripcion from ContratosEstatus'
    Parameters = <>
    Left = 24
    Top = 176
  end
  object adodsAnexos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsAnexosNewRecord
    CommandText = 
      'select IdAnexo, IdContrato, IdCotizacionDetalle, IdMoneda, IdAne' +
      'xoEstatus, Identificador, Descripcion, Fecha, PrecioMoneda, Tipo' +
      'Cambio, Precio, Impuesto, PrecioTotal, EnganchePorcentaje, Engan' +
      'che, ComisionPorcentaje, Comision, ComisionImpuesto, Gastos, Gas' +
      'tosImpuestos, '#13#10'DespositosNumero, Depositos, PagoIncial, OpcionC' +
      'ompraPorcentaje, OpcionCompra, ValorResidualPorcentaje, ValorRes' +
      'idual, MontoFinanciar, TasaAnual, Plazo, PagoMensual, ImpactoISR' +
      ', '#13#10'FechaCorte, FechaVencimiento, TasaMoratoriaAnual, PagoInicia' +
      'lCreado, CapitalCobrado, SaldoInsoluto, MontoVencido, CartaCompe' +
      'nsacion'#13#10'from Anexos'#13#10'where IdContrato = :IdContrato'
    DataSource = dsMaster
    MasterFields = 'IdContrato'
    Parameters = <
      item
        Name = 'IdContrato'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 4
      end>
    Left = 112
    Top = 96
    object adodsAnexosIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
      Visible = False
    end
    object adodsAnexosIdContrato: TIntegerField
      FieldName = 'IdContrato'
      Visible = False
    end
    object adodsAnexosIdCotizacionDetalle: TIntegerField
      FieldName = 'IdCotizacionDetalle'
      Visible = False
    end
    object adodsAnexosIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsAnexosIdAnexoEstatus: TIntegerField
      FieldName = 'IdAnexoEstatus'
      Visible = False
    end
    object adodsAnexosIdentificador: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsAnexosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsAnexosFecha: TDateTimeField
      FieldName = 'Fecha'
      OnChange = adodsAnexosFechaChange
    end
    object adodsAnexosPrecioMoneda: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioMoneda'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsAnexosTipoCambio: TFMTBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPrecio: TFMTBCDField
      DisplayLabel = 'Precio moneda local'
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosImpuesto: TFMTBCDField
      DisplayLabel = 'IVA'
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPrecioTotal: TFMTBCDField
      DisplayLabel = 'Precio total'
      FieldName = 'PrecioTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosEnganchePorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje enganche'
      FieldName = 'EnganchePorcentaje'
      OnChange = adodsAnexosEnganchePorcentajeChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosEnganche: TFMTBCDField
      FieldName = 'Enganche'
      OnChange = adodsAnexosEngancheChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosComisionPorcentaje: TBCDField
      DisplayLabel = 'Porcentaje comisi'#243'n'
      FieldName = 'ComisionPorcentaje'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosComision: TFMTBCDField
      DisplayLabel = 'Comisi'#243'n'
      FieldName = 'Comision'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosComisionImpuesto: TFMTBCDField
      DisplayLabel = 'IVA de comisi'#243'n'
      FieldName = 'ComisionImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosGastos: TFMTBCDField
      DisplayLabel = 'Gastos de administraci'#243'n'
      FieldName = 'Gastos'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosGastosImpuestos: TFMTBCDField
      DisplayLabel = 'IVA de gastos'
      FieldName = 'GastosImpuestos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosDespositosNumero: TIntegerField
      DisplayLabel = 'No. de Desp'#243'sitos'
      FieldName = 'DespositosNumero'
      OnChange = adodsAnexosPrecioMonedaChange
    end
    object adodsAnexosDepositos: TFMTBCDField
      DisplayLabel = 'Dep'#243'sito en garantia'
      FieldName = 'Depositos'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosPagoIncial: TFMTBCDField
      DisplayLabel = 'Total pago inicial'
      FieldName = 'PagoIncial'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosOpcionCompraPorcentaje: TFMTBCDField
      DisplayLabel = 'Porcentaje opci'#243'n de compra'
      FieldName = 'OpcionCompraPorcentaje'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsAnexosOpcionCompra: TFMTBCDField
      DisplayLabel = 'Opci'#243'n de compra'
      FieldName = 'OpcionCompra'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosValorResidualPorcentaje: TBCDField
      DisplayLabel = 'Porcentaje valor residual'
      FieldName = 'ValorResidualPorcentaje'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 0
    end
    object adodsAnexosValorResidual: TFMTBCDField
      DisplayLabel = 'Valor residual'
      FieldName = 'ValorResidual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a financiar'
      FieldName = 'MontoFinanciar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosPlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0 mes(es)'
      EditFormat = '0'
    end
    object adodsAnexosPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      OnChange = adodsAnexosPrecioMonedaChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsAnexosFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha corte'
      FieldName = 'FechaCorte'
    end
    object adodsAnexosTasaMoratoriaAnual: TBCDField
      DisplayLabel = 'Tasa moratoria anual'
      FieldName = 'TasaMoratoriaAnual'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosEstatus2: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsAnexosEstatus
      LookupKeyFields = 'IdAnexoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAnexoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsAnexosPagoInicialCreado: TBooleanField
      FieldName = 'PagoInicialCreado'
    end
    object adodsAnexosCapitalCobrado: TFMTBCDField
      DisplayLabel = 'Capital cobrado'
      FieldName = 'CapitalCobrado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoInsoluto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosMontoVencido: TFMTBCDField
      DisplayLabel = 'Monto vencido'
      FieldName = 'MontoVencido'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAnexosCartaCompensacion: TBooleanField
      DisplayLabel = 'Carta compensaci'#243'n'
      FieldName = 'CartaCompensacion'
    end
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'order by Descripcion'
    Parameters = <>
    Left = 104
    Top = 144
  end
  object adodsAnexosEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdAnexoEstatus, Descripcion from AnexosEstatus'
    Parameters = <>
    Left = 104
    Top = 208
  end
  object adodsAnexosProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoProducto, IdAnexo, IdProducto from AnexosProductos' +
      #13#10'where IdAnexo = :IdAnexo'
    DataSource = dsAnexos
    MasterFields = 'IdAnexo'
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 616
    Top = 168
    object adodsAnexosProductosIdAnexoProducto: TIntegerField
      FieldName = 'IdAnexoProducto'
      Visible = False
    end
    object adodsAnexosProductosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsAnexosProductosIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsAnexosProductosProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 200
      Lookup = True
    end
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Identificador, Descripcion from Productos'
    Parameters = <>
    Left = 616
    Top = 232
  end
  object dsAnexos: TDataSource
    AutoEdit = False
    DataSet = adodsAnexos
    Left = 208
    Top = 88
  end
  object adodsAmortizaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoAmortizacion, IdAnexoCredito, IdAnexoSegmento, Per' +
      'iodo, FechaCorte, FechaVencimiento, TasaAnual, SaldoInicial, Pag' +
      'o, Capital, CapitalImpuesto, CapitalTotal, Interes, InteresImpue' +
      'sto, InteresTotal, ImpactoISR, PagoTotal, SaldoFinal, '#13#10'FechaMor' +
      'atorio, DATEDIFF(DAY, AnexosAmortizaciones.FechaVencimiento, Fec' +
      'haMoratorio) AS DiasVencimiento, MoratorioBase, Moratorio, Morat' +
      'orioImpuesto from AnexosAmortizaciones'#13#10'where IdAnexoCredito = :' +
      'IdAnexoCredito'
    DataSource = dsCreditos
    MasterFields = 'IdAnexoCredito'
    Parameters = <
      item
        Name = 'IdAnexoCredito'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 296
    Top = 208
    object adodsAmortizacionesIdAnexoAmortizacion: TAutoIncField
      FieldName = 'IdAnexoAmortizacion'
      ReadOnly = True
      Visible = False
    end
    object adodsAmortizacionesIdAnexoCredito: TIntegerField
      FieldName = 'IdAnexoCredito'
      Visible = False
    end
    object adodsAmortizacionesIdAnexoSegmento: TIntegerField
      FieldName = 'IdAnexoSegmento'
      Visible = False
    end
    object adodsAmortizacionesPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object adodsAmortizacionesFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha corte'
      FieldName = 'FechaCorte'
    end
    object adodsAmortizacionesFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsAmortizacionesTasaAnual: TBCDField
      FieldName = 'TasaAnual'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAmortizacionesSaldoInicial: TFMTBCDField
      DisplayLabel = 'Saldo inicial'
      FieldName = 'SaldoInicial'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesCapital: TFMTBCDField
      FieldName = 'Capital'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesCapitalImpuesto: TFMTBCDField
      DisplayLabel = 'IVA del capital'
      FieldName = 'CapitalImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesCapitalTotal: TFMTBCDField
      DisplayLabel = 'Capital IVA incluido'
      FieldName = 'CapitalTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesInteres: TFMTBCDField
      FieldName = 'Interes'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesInteresImpuesto: TFMTBCDField
      DisplayLabel = 'IVA de intereses'
      FieldName = 'InteresImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesInteresTotal: TFMTBCDField
      DisplayLabel = 'Intereses con IVA'
      FieldName = 'InteresTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesImpactoISR: TFMTBCDField
      FieldName = 'ImpactoISR'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesPago: TFMTBCDField
      FieldName = 'Pago'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesPagoTotal: TFMTBCDField
      DisplayLabel = 'Pago del periodo'
      FieldName = 'PagoTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesSaldoFinal: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoFinal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesFechaMoratorio: TDateTimeField
      DisplayLabel = 'Fecha moratorio'
      FieldName = 'FechaMoratorio'
      Visible = False
    end
    object adodsAmortizacionesDiasVencimiento: TIntegerField
      DisplayLabel = 'Dias de vencimiento'
      FieldName = 'DiasVencimiento'
      ReadOnly = True
    end
    object adodsAmortizacionesMoratorioBase: TFMTBCDField
      DisplayLabel = 'Base para moratorios'
      FieldName = 'MoratorioBase'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesMoratorio: TFMTBCDField
      FieldName = 'Moratorio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsAmortizacionesMoratorioImpuesto: TFMTBCDField
      DisplayLabel = 'IVA Moratorio'
      FieldName = 'MoratorioImpuesto'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adodsCreditos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsCreditosNewRecord
    CommandText = 
      'select IdAnexoCredito, IdAnexo, IdAnexoCreditoEstatus, IdUsuario' +
      ', Fecha, MontoFiananciar, ValorResidual, ImpactoISR, TasaAnual, ' +
      'Plazo, PagoMensual, FechaCorte, FechaVencimiento, FechaCancelaci' +
      'on from AnexosCreditos'#13#10'where IdAnexo = :IdAnexo'#13#10'order by IdAne' +
      'xoCreditoEstatus, FechaCancelacion DESC'
    DataSource = dsAnexos
    MasterFields = 'IdAnexo'
    Parameters = <
      item
        Name = 'IdAnexo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 200
    Top = 144
    object adodsCreditosIdAnexoCredito: TAutoIncField
      FieldName = 'IdAnexoCredito'
      ReadOnly = True
      Visible = False
    end
    object adodsCreditosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsCreditosIdAnexoCreditoEstatus: TIntegerField
      FieldName = 'IdAnexoCreditoEstatus'
      Visible = False
    end
    object adodsCreditosIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsCreditosEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCreditoEstatus
      LookupKeyFields = 'IdAnexoCreditoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAnexoCreditoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsCreditosFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha corte'
      FieldName = 'FechaCorte'
    end
    object adodsCreditosFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsCreditosMontoFiananciar: TFMTBCDField
      DisplayLabel = 'Monto a fiananciar'
      FieldName = 'MontoFiananciar'
      OnChange = adodsCreditosMontoFiananciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosValorResidual: TFMTBCDField
      DisplayLabel = 'Futuro'
      FieldName = 'ValorResidual'
      OnChange = adodsCreditosMontoFiananciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosImpactoISR: TFMTBCDField
      DisplayLabel = 'Impacto ISR'
      FieldName = 'ImpactoISR'
      OnChange = adodsCreditosMontoFiananciarChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      OnChange = adodsCreditosMontoFiananciarChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsCreditosPlazo: TIntegerField
      FieldName = 'Plazo'
      OnChange = adodsCreditosMontoFiananciarChange
      DisplayFormat = '0 mes(es)'
      EditFormat = '0'
    end
    object adodsCreditosPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCreditosFecha: TDateTimeField
      FieldName = 'Fecha'
      OnChange = adodsCreditosFechaChange
    end
    object adodsCreditosFechaCancelacion: TDateTimeField
      DisplayLabel = 'Fecha cancelaci'#243'n'
      FieldName = 'FechaCancelacion'
    end
    object adodsCreditosUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuario
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
  end
  object dsCreditos: TDataSource
    AutoEdit = False
    DataSet = adodsCreditos
    Left = 296
    Top = 144
  end
  object adodsCreditoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoCreditoEstatus, Descripcion from AnexosCreditosEst' +
      'atus'
    Parameters = <>
    Left = 200
    Top = 200
  end
  object adodsUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 200
    Top = 264
  end
  object adodsCotizaionesSel: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT CotizacionesDetalle.IdCotizacionDetalle, Cotizaciones.Ide' +
      'ntificador, Cotizaciones.Descripcion, '#13#10'CotizacionesDetalle.Mont' +
      'oFinanciar, CotizacionesDetalle.TasaAnual, CotizacionesDetalle.P' +
      'lazo, CotizacionesDetalle.PagoMensual'#13#10'FROM Cotizaciones '#13#10'INNER' +
      ' JOIN CotizacionesDetalle ON Cotizaciones.IdCotizacion = Cotizac' +
      'ionesDetalle.IdCotizacion'#13#10'WHERE Cotizaciones.IdCotizacionEstatu' +
      's = 1 AND CotizacionesDetalle.IdCotizacionDetalleEstatus = 1'#13#10'AN' +
      'D Cotizaciones.IdContratoTipo = :IdContratoTipo'#13#10'AND Cotizacione' +
      's.IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdContratoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 344
    object adodsCotizaionesSelIdCotizacionDetalle: TAutoIncField
      FieldName = 'IdCotizacionDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsCotizaionesSelIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsCotizaionesSelDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsCotizaionesSelMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a financiar'
      FieldName = 'MontoFinanciar'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCotizaionesSelTasaAnual: TBCDField
      DisplayLabel = 'Tasa anual'
      FieldName = 'TasaAnual'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsCotizaionesSelPlazo: TIntegerField
      FieldName = 'Plazo'
      DisplayFormat = '0 mes(es)'
      EditFormat = '9'
    end
    object adodsCotizaionesSelPagoMensual: TFMTBCDField
      DisplayLabel = 'Pago mensual'
      FieldName = 'PagoMensual'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adospGenAnexoDeCotizacion: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenAnexoDeCotizacion;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCotizacionDetalle'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdContrato'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexo'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 400
  end
  object adopSetCXCPorAnexo: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetCuentasXCobrarPorAnexo;1'
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
        Name = '@IdCuentaXCobrar'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 400
  end
  object adoqGetFechaDia: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Fecha'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'Dia'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT dbo.GetFechaDia(:Fecha,:Dia) AS FechaNueva')
    Left = 216
    Top = 344
    object adoqGetFechaDiaFechaNueva: TDateTimeField
      FieldName = 'FechaNueva'
      ReadOnly = True
    end
  end
  object dsAmortizaciones: TDataSource
    AutoEdit = False
    DataSet = adodsAmortizaciones
    Left = 392
    Top = 208
  end
  object adocGetCreditoValido: TADOCommand
    CommandText = 
      'DECLARE @IdAnexoCredito int '#13#10'SELECT @IdAnexoCredito = IdAnexoCr' +
      'edito FROM  AnexosCreditos WHERE AnexosCreditos.IdAnexoCreditoEs' +
      'tatus = 1 AND AnexosCreditos.IdAnexo = :IdAnexo'#13#10'IF @IdAnexoCred' +
      'ito IS NULL SET @IdAnexoCredito  = 0'#13#10'SET :IdAnexoCredito  = @Id' +
      'AnexoCredito '#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdAnexo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdAnexoCredito'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 360
    Top = 304
  end
  object adopCanAnexosCreditos: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_CanAnexosCreditos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoCredito'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 400
  end
  object adocGetSaldoActual: TADOCommand
    CommandText = 
      'DECLARE @IdAnexo int'#13#10'DECLARE @SaldoInsolutoActual decimal(18,6)' +
      #13#10'DECLARE @MontoVencido decimal(18,6)'#13#10'DECLARE @SaldoActual deci' +
      'mal(18,6)'#13#10'SET @IdAnexo = :IdAnexo'#13#10'SELECT TOP (1) @SaldoInsolut' +
      'oActual = AnexosAmortizaciones.SaldoInicial'#13#10'FROM AnexosAmortiza' +
      'ciones '#13#10'INNER JOIN AnexosCreditos ON AnexosAmortizaciones.IdAne' +
      'xoCredito = AnexosCreditos.IdAnexoCredito'#13#10'WHERE AnexosCreditos.' +
      'IdAnexoCreditoEstatus = 1 '#13#10'AND AnexosAmortizaciones.FechaVencim' +
      'iento >= GETDATE()'#13#10'AND AnexosCreditos.IdAnexo = @IdAnexo'#13#10'IF @S' +
      'aldoInsolutoActual IS NULL SET @SaldoInsolutoActual = 0'#13#10'SELECT ' +
      '@MontoVencido = MontoVencido from Anexos'#13#10'WHERE IdAnexo = @IdAne' +
      'xo'#13#10'SET @SaldoActual = @SaldoInsolutoActual + @MontoVencido'#13#10'SET' +
      ' :SaldoActual = @SaldoActual'#13#10
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdAnexo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SaldoActual'
        DataType = ftFloat
        Direction = pdOutput
        Size = -1
        Value = Null
      end>
    Left = 360
    Top = 352
  end
end
