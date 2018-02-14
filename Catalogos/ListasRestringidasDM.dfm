inherited dmListasRestringidas: TdmListasRestringidas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdListaRestringida, IdOrganismo, IdPais, IdEstatus, Ident' +
      'ificador, Nombre, Alias from ListasRestringidas'
    object adodsMasterIdListaRestringida: TAutoIncField
      FieldName = 'IdListaRestringida'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdOrganismo: TIntegerField
      FieldName = 'IdOrganismo'
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdEstatus: TIntegerField
      FieldName = 'IdEstatus'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 60
    end
    object adodsMasterOrganismo: TStringField
      FieldKind = fkLookup
      FieldName = 'Organismo'
      LookupDataSet = adodsOrganismos
      LookupKeyFields = 'IdOrganismo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrganismo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 500
    end
    object adodsMasterAlias: TStringField
      FieldName = 'Alias'
      Size = 255
    end
  end
  inherited ActionList: TActionList
    object actWeb: TAction
      Caption = 'Listas Web'
      ImageIndex = 13
      OnExecute = actWebExecute
    end
  end
  object adodsOrganismos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdOrganismo, Descripcion, Aplica24Horas from Organismos'
    Parameters = <>
    Left = 72
    Top = 72
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Identificador, Descripcion from Paises'
    Parameters = <>
    Left = 72
    Top = 128
  end
end
