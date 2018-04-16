inherited dmProductosDocumentos: TdmProductosDocumentos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdProductoDocumento, IdProducto, IdDocumento, IdProductoD' +
      'ocumentoTipo, Descripcion, FechaEmision from ProductosDocumentos'
    object adodsMasterIdProductoDocumento: TAutoIncField
      FieldName = 'IdProductoDocumento'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsMasterIdProductoDocumentoTipo: TIntegerField
      FieldName = 'IdProductoDocumentoTipo'
      Visible = False
    end
    object adodsMasterDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'Documento'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumento'
      Size = 50
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipo
      LookupKeyFields = 'IdProductoDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoDocumentoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterFechaEmision: TDateTimeField
      DisplayLabel = 'Fecha emisi'#243'n'
      FieldName = 'FechaEmision'
    end
  end
  inherited ActionList: TActionList
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
  end
  object adodsTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProductoDocumentoTipo, Descripcion from ProductosDocume' +
      'ntosTipos'
    Parameters = <>
    Left = 40
    Top = 160
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, Descripcion FROM Documentos'
    IndexFieldNames = 'IdDocumento'
    MasterFields = 'IdDocumento'
    Parameters = <>
    Left = 40
    Top = 96
  end
end
