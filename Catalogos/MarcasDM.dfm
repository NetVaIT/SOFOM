inherited dmMarcas: TdmMarcas
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'select IdMarca, Identificador, Descripcion from Marcas'
    object adodsMasterIdMarca: TAutoIncField
      FieldName = 'IdMarca'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
