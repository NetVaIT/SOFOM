inherited dmDocumentos: TdmDocumentos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    Left = 40
    object adodsMasterIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterNombreArchivo: TStringField
      DisplayLabel = 'Archivo'
      FieldName = 'NombreArchivo'
      Required = True
      Size = 200
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 200
    end
    object adodsMasterIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
      Required = True
      Visible = False
    end
    object adodsMasterDocumentoTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'DocumentoTipo'
      LookupDataSet = adodsDocumentoTipo
      LookupKeyFields = 'IdDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
      Required = True
      Visible = False
    end
    object adodsMasterDocumentoClase: TStringField
      DisplayLabel = 'Clase'
      FieldKind = fkLookup
      FieldName = 'DocumentoClase'
      LookupDataSet = adodsDocumentoClase
      LookupKeyFields = 'IdDocumentoClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoClase'
      Size = 50
      Lookup = True
    end
    object adodsMasterArchivo: TBlobField
      FieldName = 'Archivo'
      Visible = False
    end
    object adodsMasterIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      Visible = False
      FixedChar = True
      Size = 38
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsUpdateNewRecord
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'#13#10'WHERE IdD' +
      'ocumento =:IdDocumento'
    Parameters = <
      item
        Name = 'IdDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsUpdateIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsUpdateIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsUpdateIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsUpdateDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsUpdateNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsUpdateIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsUpdateArchivo: TBlobField
      FieldName = 'Archivo'
    end
    object adodsUpdateDocumentoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoTipo'
      LookupDataSet = adodsDocumentoTipo
      LookupKeyFields = 'IdDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoTipo'
      Size = 50
      Lookup = True
    end
    object adodsUpdateDocumentoClase: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoClase'
      LookupDataSet = adodsDocumentoClase
      LookupKeyFields = 'IdDocumentoClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoClase'
      Size = 50
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actLoadFile: TAction
      Hint = 'Cargar archivo'
      ImageIndex = 2
      OnExecute = actLoadFileExecute
    end
    object actSaveFile: TAction
      Hint = 'Grabar archivo'
      ImageIndex = 3
      OnExecute = actSaveFileExecute
      OnUpdate = actSaveFileUpdate
    end
    object actViewFile: TAction
      Hint = 'Ver archivo'
      ImageIndex = 4
      OnExecute = actViewFileExecute
      OnUpdate = actSaveFileUpdate
    end
    object actMD5File: TAction
      Hint = 'Ver MD5 del archivo'
      ImageIndex = 4
      OnExecute = actMD5FileExecute
      OnUpdate = actSaveFileUpdate
    end
  end
  object adodsDocumentoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoTipo, Descripcion FROM DocumentosTipos'
    Parameters = <>
    Left = 96
    Top = 72
  end
  object adodsDocumentoClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoClase, Descripcion FROM DocumentosClases'
    Parameters = <>
    Left = 104
    Top = 136
  end
  object OpenDialog: TOpenDialog
    Left = 312
    Top = 160
  end
  object SaveDialog: TSaveDialog
    Left = 312
    Top = 216
  end
end
