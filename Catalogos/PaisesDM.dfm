inherited dmUbicacion: TdmUbicacion
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'select IdPais, Identificador, Descripcion from Paises'
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
end
