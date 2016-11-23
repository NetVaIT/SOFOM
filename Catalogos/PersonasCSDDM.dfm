inherited dmPersonasCSD: TdmPersonasCSD
  OldCreateOrder = True
  Height = 278
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaCSD, IdPersona, IdDocumentoCER, IdDocumentoKEY, ' +
      'Clave, Vencimiento from PersonasCSD'
    object adodsMasterIdPersonaCSD: TIntegerField
      FieldName = 'IdPersonaCSD'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDocumentoCER: TIntegerField
      FieldName = 'IdDocumentoCER'
      Visible = False
    end
    object adodsMasterIdDocumentoKEY: TIntegerField
      FieldName = 'IdDocumentoKEY'
      Visible = False
    end
    object adodsMasterArchivoKEY: TStringField
      DisplayLabel = 'Archivo KEY'
      FieldKind = fkLookup
      FieldName = 'ArchivoKEY'
      LookupDataSet = adodsDocumento2
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoKEY'
      Size = 200
      Lookup = True
    end
    object adodsMasterArchivoCER: TStringField
      DisplayLabel = 'Archivo CER'
      FieldKind = fkLookup
      FieldName = 'ArchivoCER'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoCER'
      Size = 200
      Lookup = True
    end
    object adodsMasterClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsMasterVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
  end
  inherited ActionList: TActionList
    object actUpdateFileCER: TAction
      Caption = '...'
      Hint = 'Asigna archivo CER'
      OnExecute = actUpdateFileCERExecute
    end
    object actUpdateFileKEY: TAction
      Caption = '...'
      Hint = 'Asigna archivo KEY'
      OnExecute = actUpdateFileKEYExecute
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 104
    Top = 72
  end
  object adodsDocumento2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 104
    Top = 128
  end
end
