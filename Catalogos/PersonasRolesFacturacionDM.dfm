inherited dmPersonasRolesFacturacion: TdmPersonasRolesFacturacion
  OldCreateOrder = True
  Height = 278
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRolFacturacion, IdPersonaRol, IdDocumento, Clave' +
      ', VencimientoDocumento FROM PersonasRolesFacturacion'
    object adodsMasterIdPersonaRolFacturacion: TAutoIncField
      FieldName = 'IdPersonaRolFacturacion'
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
    object adodsMasterArchivo: TStringField
      FieldKind = fkLookup
      FieldName = 'Archivo'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsMasterClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsMasterVencimientoDocumento: TWideStringField
      FieldName = 'VencimientoDocumento'
      Size = 10
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
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 168
    Top = 136
  end
end
