inherited dmEmails: TdmEmails
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdEmail, IdPersona, IdEmailTipo, Email, Predeterminado FR' +
      'OM Emails WHERE IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdEmail: TIntegerField
      FieldName = 'IdEmail'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdEmailTipo: TIntegerField
      FieldName = 'IdEmailTipo'
      Visible = False
    end
    object adodsMasterEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object adodsMasterEmailTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'EmailTipo'
      LookupDataSet = adodsEmailTipo
      LookupKeyFields = 'IdEmailTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEmailTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
  end
  object adodsEmailTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEmailTipo, Descripcion FROM EmailsTipos'
    Parameters = <>
    Left = 72
    Top = 80
  end
end
