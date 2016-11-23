inherited dmAnexosProductos: TdmAnexosProductos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'select IdAnexoProducto, IdAnexo, IdProducto from AnexosProductos'
    object adodsMasterIdAnexoProducto: TIntegerField
      FieldName = 'IdAnexoProducto'
      Visible = False
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
      Visible = False
    end
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsMasterProducto: TStringField
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
    Left = 48
    Top = 80
  end
end
