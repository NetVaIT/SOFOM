inherited dmPersonasDocumentos: TdmPersonasDocumentos
  OldCreateOrder = True
  Height = 343
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaDocumento, IdPersona, IdDocumento, IdPersonaDocu' +
      'mentoTipo, Descripcion, FechaEmision, VigenciaMeses FROM Persona' +
      'sDocumentos WHERE IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 24
    object adodsMasterIdPersonaDocumento: TAutoIncField
      FieldName = 'IdPersonaDocumento'
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
    object adodsMasterIdPersonaDocumentoTipo: TIntegerField
      FieldName = 'IdPersonaDocumentoTipo'
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
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipo
      LookupKeyFields = 'IdPersonaDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaDocumentoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterFechaEmision: TDateTimeField
      DisplayLabel = 'Fecha de emisi'#243'n'
      FieldName = 'FechaEmision'
    end
    object adodsMasterVigenciaMeses: TIntegerField
      DisplayLabel = 'Vigencia (Meses)'
      FieldName = 'VigenciaMeses'
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
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
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
  object adodsTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaDocumentoTipo, Descripcion from PersonasDocument' +
      'osTipos'
    Parameters = <>
    Left = 40
    Top = 160
  end
end
