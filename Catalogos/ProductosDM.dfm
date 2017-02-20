inherited dmProductos: TdmProductos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdProducto, IdAnexo, IdProductoTipo, IdMarca, IdFamilia, ' +
      'IdProductoEstatus, Identificador, Descripcion, Modelo, Anio, Num' +
      'eroSerie, NumeroEconomico, FechaImportacion, Pedimento, Aduana, ' +
      'FechaCompra, Precio, Impuesto, Total, PorcentajeDepreciacion, De' +
      'preciacion, ValorContable from Productos'
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
    object adodsMasterPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object adodsMasterImpuesto: TBCDField
      FieldName = 'Impuesto'
      Precision = 19
    end
    object adodsMasterTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
    object adodsMasterPorcentajeDepreciacion: TBCDField
      DisplayLabel = 'Porcentaje depreciaci'#243'n'
      FieldName = 'PorcentajeDepreciacion'
      Precision = 19
    end
    object adodsMasterDepreciacion: TBCDField
      DisplayLabel = 'Depreciaci'#243'n acumulada'
      FieldName = 'Depreciacion'
      Precision = 19
    end
    object adodsMasterValorContable: TBCDField
      DisplayLabel = 'Valor contable'
      FieldName = 'ValorContable'
      Precision = 19
    end
  end
  inherited ActionList: TActionList
    object actActualizarDepreciacion: TAction
      Caption = 'Actualizar depreciaci'#243'n'
      ImageIndex = 9
      Visible = False
    end
  end
  object adodsTipos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProductoTipo, Descripcion from ProductosTipos'
    Parameters = <>
    Left = 56
    Top = 80
  end
  object adodsMarcas: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMarca, Descripcion from Marcas'
    Parameters = <>
    Left = 56
    Top = 136
  end
  object adodsFamilias: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdFamila, Descripcion from Familias'
    Parameters = <>
    Left = 56
    Top = 184
  end
  object adodsEstatus: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProductoEstatus, Descripcion from ProductosEstatus'
    Parameters = <>
    Left = 56
    Top = 240
  end
end
