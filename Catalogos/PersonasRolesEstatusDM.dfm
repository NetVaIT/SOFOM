inherited dmPersonasRolesEstatus: TdmPersonasRolesEstatus
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaRolEstatus, IdPersonaRol, IdRolEstarus, Fecha fr' +
      'om PersonasRolesEstatus'#13#10'WHERE IdPersonaRol = :IdPersonaRol'
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPersonaRolEstatus: TAutoIncField
      FieldName = 'IdPersonaRolEstatus'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdRolEstarus: TIntegerField
      FieldName = 'IdRolEstarus'
      Visible = False
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsRolesEstatus
      LookupKeyFields = 'IdRolEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolEstarus'
      Size = 50
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object adodsRolesEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRolEstatus, Descripcion from RolesEstatus'
    Parameters = <>
    Left = 40
    Top = 88
  end
end
