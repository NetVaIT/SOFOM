inherited dmUsuariosPerfiles: TdmUsuariosPerfiles
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdUsuarioPerfil, Descripcion,PermisoMenu, PermisoOpcion,'#13 +
      #10' PermisosFuncion from UsuariosPerfiles'
    object adodsMasterIdUsuarioPerfil: TAutoIncField
      FieldName = 'IdUsuarioPerfil'
      ReadOnly = True
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object adodsMasterPermisoMenu: TStringField
      FieldName = 'PermisoMenu'
      Size = 300
    end
    object adodsMasterPermisoOpcion: TStringField
      FieldName = 'PermisoOpcion'
      Size = 500
    end
    object adodsMasterPermisosFuncion: TStringField
      FieldName = 'PermisosFuncion'
      Size = 300
    end
  end
end
