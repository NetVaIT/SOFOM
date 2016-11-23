inherited dmRoles: TdmRoles
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdRol, IdRolTipo, IdEsquemaPago, IdRegimenFiscal, Identif' +
      'icador, Descripcion, IdDocumento FROM Roles'
    object adodsMasterIdRol: TAutoIncField
      FieldName = 'IdRol'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdRolTipo: TIntegerField
      FieldName = 'IdRolTipo'
      Required = True
      Visible = False
    end
    object adodsMasterIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Required = True
      Visible = False
    end
    object adodsMasterIdRegimenFiscal: TIntegerField
      FieldName = 'IdRegimenFiscal'
      Visible = False
    end
    object adodsMasterRegimenFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'RegimenFiscal'
      LookupDataSet = adodsRegimenFiscal
      LookupKeyFields = 'IdRegimenFiscal'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRegimenFiscal'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 50
    end
    object adodsMasterRolTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'RolTipo'
      LookupDataSet = adodsRolesTipos
      LookupKeyFields = 'IdRolTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterEsquemaPago: TStringField
      DisplayLabel = 'Esquema de pago'
      FieldKind = fkLookup
      FieldName = 'EsquemaPago'
      LookupDataSet = adodsEsquemaPagos
      LookupKeyFields = 'IdEsquemaPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEsquemaPago'
      Size = 200
      Lookup = True
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object adodsMasterDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'Documento'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna Archivo'
      OnExecute = actUpdateFileExecute
    end
  end
  object adodsRolesTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRolTipo, Descripcion from RolesTipos'
    Parameters = <>
    Left = 112
    Top = 64
  end
  object adodsEsquemaPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdEsquemaPago, Descripcion from EsquemaPagos'
    Parameters = <>
    Left = 112
    Top = 120
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 112
    Top = 176
  end
  object adodsRegimenFiscal: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRegimenFiscal, Descripcion FROM RegimenesFiscales'
    Parameters = <>
    Left = 112
    Top = 232
  end
end
