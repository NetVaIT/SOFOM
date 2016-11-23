inherited dmTelefonos: TdmTelefonos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdTelefono, IdPersona, IdTelefonoTipo, Lada, Telefono, Pr' +
      'edeterminado FROM Telefonos WHERE IdPersona = :IdPersona'
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
    object adodsMasterIdTelefono: TIntegerField
      FieldName = 'IdTelefono'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdTelefonoTipo: TIntegerField
      FieldName = 'IdTelefonoTipo'
      Visible = False
    end
    object adodsMasterTelefonoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'TelefonoTipo'
      LookupDataSet = adodsTelefonoTipo
      LookupKeyFields = 'IdTelefonoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdTelefonoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterLada: TStringField
      FieldName = 'Lada'
      Size = 10
    end
    object adodsMasterTelefono: TStringField
      FieldName = 'Telefono'
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
  end
  object adodsTelefonoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdTelefonoTipo, Descripcion FROM TelefonosTipos'
    Parameters = <>
    Left = 128
    Top = 24
  end
end
