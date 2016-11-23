inherited dmPersonasRolesDocumentos: TdmPersonasRolesDocumentos
  OldCreateOrder = True
  Height = 343
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRolDocumento, IdPersonaRol, IdDocumento FROM Per' +
      'sonasRolesDocumentos WHERE IdPersonaRol = :IdPersonaRol'
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 24
    object adodsMasterIdPersonaRolDocumento: TAutoIncField
      FieldName = 'IdPersonaRolDocumento'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
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
  end
  inherited ActionList: TActionList
    object actNuevoDocumento: TAction
      Caption = 'actNuevoDocumento'
      OnExecute = actNuevoDocumentoExecute
    end
    object actEditaDocumento: TAction
      Caption = 'actEditaDocumento'
      OnExecute = actEditaDocumentoExecute
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    DataSource = dsMaster
    IndexFieldNames = 'IdDocumento'
    MasterFields = 'IdDocumento'
    Parameters = <>
    Left = 128
    Top = 96
  end
  object adodsDocumentoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoTipo, Descripcion FROM DocumentosTipos'
    Parameters = <>
    Left = 208
    Top = 152
  end
  object adodsDocumentoClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoClase, Descripcion FROM DocumentosClases'
    Parameters = <>
    Left = 208
    Top = 216
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 128
    Top = 24
  end
end
