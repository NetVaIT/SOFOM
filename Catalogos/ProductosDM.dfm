inherited dmProductos: TdmProductos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdProducto, IdAnexo, IdProductoTipo, IdMarca, IdFamilia, ' +
      'IdProductoEstatus, IdMoneda, Identificador, Descripcion, Modelo,' +
      ' Anio, NumeroSerie, NumeroEconomico, FechaImportacion, Pedimento' +
      ', Aduana, '#13#10'FechaCompra, PrecioMoneda, TipoCambio, Precio, Impue' +
      'sto, PrecioTotal, PorcentajeContable, DepreciacionContable, Valo' +
      'rContable, PorcentajeComercial, DepreciacionComercial, ValorCome' +
      'rcial, PorcentajeAnexo from Productos'
    object adodsMasterIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsMasterIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
      Visible = False
    end
    object adodsMasterIdMarca: TIntegerField
      FieldName = 'IdMarca'
      Visible = False
    end
    object adodsMasterIdFamilia: TIntegerField
      FieldName = 'IdFamilia'
      Visible = False
    end
    object adodsMasterIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipos
      LookupKeyFields = 'IdProductoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterMarca: TStringField
      FieldKind = fkLookup
      FieldName = 'Marca'
      LookupDataSet = adodsMarcas
      LookupKeyFields = 'IdMarca'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMarca'
      Size = 50
      Lookup = True
    end
    object adodsMasterFamilia: TStringField
      FieldKind = fkLookup
      FieldName = 'Familia'
      LookupDataSet = adodsFamilias
      LookupKeyFields = 'IdFamila'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdFamilia'
      Size = 50
      Lookup = True
    end
    object adodsMasterModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object adodsMasterAnio: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'Anio'
    end
    object adodsMasterNumeroSerie: TStringField
      DisplayLabel = 'N'#250'mero de serie'
      FieldName = 'NumeroSerie'
    end
    object adodsMasterNumeroEconomico: TStringField
      DisplayLabel = 'N'#250'mero econ'#243'mico'
      FieldName = 'NumeroEconomico'
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdProductoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterFechaImportacion: TDateTimeField
      DisplayLabel = 'Fecha importaci'#243'n'
      FieldName = 'FechaImportacion'
    end
    object adodsMasterPedimento: TStringField
      FieldName = 'Pedimento'
      Size = 50
    end
    object adodsMasterAduana: TStringField
      FieldName = 'Aduana'
      Size = 50
    end
    object adodsMasterFechaCompra: TDateTimeField
      DisplayLabel = 'Fecha compra'
      FieldName = 'FechaCompra'
    end
    object adodsMasterPrecioMoneda: TBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioMoneda'
      OnChange = adodsMasterPrecioMonedaChange
      currency = True
      Precision = 19
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
    object adodsMasterTipoCambio: TBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      OnChange = adodsMasterPrecioMonedaChange
      currency = True
      Precision = 19
    end
    object adodsMasterPrecio: TBCDField
      DisplayLabel = 'Precio moneda local'
      FieldName = 'Precio'
      Precision = 19
    end
    object adodsMasterImpuesto: TBCDField
      DisplayLabel = 'IVA'
      FieldName = 'Impuesto'
      currency = True
      Precision = 19
    end
    object adodsMasterPrecioTotal: TBCDField
      DisplayLabel = 'Precio total'
      FieldName = 'PrecioTotal'
      Precision = 19
    end
    object adodsMasterPorcentajeContable: TBCDField
      DisplayLabel = '% depreciaci'#243'n contable'
      FieldName = 'PorcentajeContable'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsMasterDepreciacionContable: TBCDField
      DisplayLabel = 'Depreciaci'#243'n contable'
      FieldName = 'DepreciacionContable'
      currency = True
      Precision = 19
    end
    object adodsMasterValorContable: TBCDField
      DisplayLabel = 'Valor contable'
      FieldName = 'ValorContable'
      currency = True
      Precision = 19
    end
    object adodsMasterPorcentajeComercial: TBCDField
      DisplayLabel = '% depreciaci'#243'n comercial'
      FieldName = 'PorcentajeComercial'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsMasterDepreciacionComercial: TBCDField
      DisplayLabel = 'Depreciaci'#243'n comercial'
      FieldName = 'DepreciacionComercial'
      currency = True
      Precision = 19
    end
    object adodsMasterValorComercial: TBCDField
      DisplayLabel = 'Valor comercial'
      FieldName = 'ValorComercial'
      currency = True
      Precision = 19
    end
    object adodsMasterPorcentajeAnexo: TBCDField
      DisplayLabel = 'Porcentaje total'
      FieldName = 'PorcentajeAnexo'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 304
  end
  inherited ActionList: TActionList
    object actActualizarDepreciacion: TAction
      Caption = 'Actualizar depreciaci'#243'n'
      ImageIndex = 9
      OnExecute = actActualizarDepreciacionExecute
    end
  end
  object adodsTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProductoTipo, Descripcion from ProductosTipos'
    Parameters = <>
    Left = 56
    Top = 80
  end
  object adodsMarcas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMarca, Descripcion from Marcas'
    Parameters = <>
    Left = 56
    Top = 136
  end
  object adodsFamilias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdFamila, Descripcion from Familias'
    Parameters = <>
    Left = 56
    Top = 184
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProductoEstatus, Descripcion from ProductosEstatus'
    Parameters = <>
    Left = 56
    Top = 240
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'order by Descripcion'
    Parameters = <>
    Left = 56
    Top = 296
  end
  object adospUpdProductosDepreciacion: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdProductosDepreciacion;1'
    Parameters = <>
    Left = 296
    Top = 280
  end
  object adocGetCountProductos: TADOCommand
    CommandText = 
      'SELECT :Total = COUNT(*)  FROM Productos WHERE IdAnexo = :IdAnex' +
      'o'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'Total'
        DataType = ftInteger
        Direction = pdOutput
        Size = -1
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
    Left = 296
    Top = 168
  end
  object adocGetPorcentajeAnexo: TADOCommand
    CommandText = 
      'SELECT :Total = SUM(PorcentajeAnexo)  FROM Productos WHERE IdAne' +
      'xo = :IdAnexo'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'Total'
        DataType = ftFloat
        Direction = pdOutput
        Size = -1
        Value = Null
      end
      item
        Name = 'IdAnexo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 296
    Top = 224
  end
end
