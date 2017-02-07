inherited dmPersonasPerfiles: TdmPersonasPerfiles
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaPerfil, IdPersona, IdDocumento, Fecha, Clasifica' +
      'cion, Cargo, Institucion, Observaciones  from PersonasPerfiles'
    object adodsMasterIdPersonaPerfil: TAutoIncField
      FieldName = 'IdPersonaPerfil'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsMasterDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'Documento'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterClasificacion: TStringField
      FieldName = 'Clasificacion'
      Size = 50
    end
    object adodsMasterCargo: TStringField
      FieldName = 'Cargo'
      Size = 50
    end
    object adodsMasterInstitucion: TStringField
      FieldName = 'Institucion'
      Size = 50
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 250
    end
  end
  inherited ActionList: TActionList
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    IndexFieldNames = 'IdDocumento'
    MasterFields = 'IdDocumento'
    Parameters = <>
    Left = 40
    Top = 96
  end
end
