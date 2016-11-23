inherited dmUsuarios: TdmUsuarios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdUsuario, IdPersona, IdUsuarioEstatus, Login, Password, ' +
      'LoginServidor, PasswordServidor FROM Usuarios'
    Left = 32
    Top = 24
    object adodsMasterIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdUsuarioEstatus: TIntegerField
      FieldName = 'IdUsuarioEstatus'
      Visible = False
    end
    object adodsMasterUsuarioEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'UsuarioEstatus'
      LookupDataSet = adodsUsuarioEstatus
      LookupKeyFields = 'IdUsuarioEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUsuarioEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterLogin: TStringField
      FieldName = 'Login'
      Size = 15
    end
    object adodsMasterPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
    object adodsMasterLoginServidor: TStringField
      DisplayLabel = 'Login Servidor'
      FieldName = 'LoginServidor'
      Size = 10
    end
    object adodsMasterPasswordServidor: TStringField
      DisplayLabel = 'Password Servidor'
      FieldName = 'PasswordServidor'
      Size = 130
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RazonSocial FROM Personas WHERE IdPersonaTipo ' +
      '= 1'
    Parameters = <>
    Left = 104
    Top = 72
  end
  object adodsUsuarioEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUsuarioEstatus, Descripcion FROM UsuariosEstatus'
    Parameters = <>
    Left = 104
    Top = 144
  end
end
