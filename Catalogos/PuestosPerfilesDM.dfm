inherited dmPuestosPerfiles: TdmPuestosPerfiles
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuestoPerfil, IdPuesto, IdPuestoPerfilCategoria, Identi' +
      'ficador, Descripcion, Valor FROM PuestosPerfiles'#13#10'WHERE IdPuesto' +
      ' = :IdPuesto'
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPuestoPerfil: TAutoIncField
      FieldName = 'IdPuestoPerfil'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
      Visible = False
    end
    object adodsMasterIdPuestoPerfilCategoria: TIntegerField
      FieldName = 'IdPuestoPerfilCategoria'
      Visible = False
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
    object adodsMasterPerfilCategoria: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'PerfilCategoria'
      LookupDataSet = adodsPuestosPerfilCategorias
      LookupKeyFields = 'IdPuestoPerfilCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoPerfilCategoria'
      Required = True
      Size = 50
      Lookup = True
    end
    object adodsMasterValor: TIntegerField
      FieldName = 'Valor'
    end
  end
  object adodsPuestosPerfilCategorias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuestoPerfilCategoria, Descripcion FROM PuestosPerfiles' +
      'Categorias'
    Parameters = <>
    Left = 216
    Top = 16
  end
end
