inherited dmContratos: TdmContratos
  OldCreateOrder = True
  Width = 551
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdContrato, IdPersona, IdContratoTipo, IdContratoEstatus,' +
      ' Identificador, Fecha, MontoAutorizado from Contratos'
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
  end
  inherited adodsUpdate: TADODataSet
    Left = 416
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 80
    object actProductos: TAction
      Caption = 'Productos'
      OnExecute = actProductosExecute
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    OnDataChange = dsMasterDataChange
    Left = 104
    Top = 16
  end
  object adodsPersonas: TADODataSet
    Active = True
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
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContratoTipo, Descripcion from ContratosTipos'
    Parameters = <>
    Left = 24
    Top = 128
  end
  object adodsContratosEstatus: TADODataSet
    Active = True
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
      'select IdAnexo, IdContrato, IdMoneda, IdAnexoEstatus, Identifica' +
      'dor, Descripcion, Fecha, PrecioMoneda, TipoCambio, Precio, Impue' +
      'sto, PrecioTotal, EnganchePorcentaje, Enganche, ComisionPorcenta' +
      'je, Comision, ComisionImpuesto, Gastos, GastosImpuestos, Desposi' +
      'tosNumero, Depositos, PagoIncial, MontoFinanciar, TasaAnual, Pla' +
      'zo, PagoMensual, FechaInicial, FechaCorte from Anexos'#13#10'where IdC' +
      'ontrato = :IdContrato'
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
    Left = 104
    Top = 88
    object adodsAnexosIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
      Visible = False
    end
    object adodsAnexosIdContrato: TIntegerField
      FieldName = 'IdContrato'
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
      DisplayLabel = 'Producto'
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsAnexosFecha: TDateTimeField
      FieldName = 'Fecha'
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
      DisplayLabel = 'Tipod de cambio'
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
    object adodsAnexosEnganchePorcentaje: TBCDField
      DisplayLabel = 'Porcentaje enganche'
      FieldName = 'EnganchePorcentaje'
      OnChange = adodsAnexosPrecioMonedaChange
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsAnexosEnganche: TFMTBCDField
      FieldName = 'Enganche'
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
      DisplayLabel = 'Totlal pago inicial'
      FieldName = 'PagoIncial'
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
    object adodsAnexosFechaInicial: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FechaInicial'
    end
    object adodsAnexosFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha de corte'
      FieldName = 'FechaCorte'
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
  end
  object adodsMonedas: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 104
    Top = 144
  end
  object adodsAnexosEstatus: TADODataSet
    Active = True
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
    Left = 416
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
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Identificador, Descripcion from Productos'
    Parameters = <>
    Left = 416
    Top = 224
  end
  object dsAnexos: TDataSource
    AutoEdit = False
    DataSet = adodsAnexos
    Left = 200
    Top = 88
  end
  object adodsAmortizaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoAmortizacion, IdAnexoCredito, IdAnexoSegmento, Per' +
      'iodo, Fecha, SaldoInicial, Pago, Capital, CapitalImpuesto, Capit' +
      'alTotal, Interes, InteresImpuesto, InteresTotal, SaldoFinal, Pag' +
      'oTotal from AnexosAmortizaciones'#13#10'where IdAnexoCredito = :IdAnex' +
      'oCredito'
    DataSource = dsCreditos
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
    object adodsAmortizacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsAmortizacionesSaldoInicial: TFMTBCDField
      DisplayLabel = 'Saldo inicial'
      FieldName = 'SaldoInicial'
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
    object adodsAmortizacionesSaldoFinal: TFMTBCDField
      DisplayLabel = 'Saldo insoluto'
      FieldName = 'SaldoFinal'
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
  end
  object adodsCreditos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsCreditosAfterPost
    OnNewRecord = adodsCreditosNewRecord
    CommandText = 
      'select IdAnexoCredito, IdAnexo, IdAnexoCreditoEstatus, IdUsuario' +
      ', Fecha, MontoFiananciar, TasaAnual, Plazo, PagoMensual, FechaIn' +
      'icial, FechaCorte from AnexosCreditos'#13#10'where IdAnexo = :IdAnexo'
    DataSource = dsAnexos
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
    object adodsCreditosFechaInicial: TDateTimeField
      DisplayLabel = 'Fecha inicial'
      FieldName = 'FechaInicial'
    end
    object adodsCreditosFechaCorte: TDateTimeField
      DisplayLabel = 'Fecha de corte'
      FieldName = 'FechaCorte'
    end
    object adodsCreditosMontoFiananciar: TFMTBCDField
      DisplayLabel = 'Monto a fiananciar'
      FieldName = 'MontoFiananciar'
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
end
