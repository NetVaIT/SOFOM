inherited dmFamilias: TdmFamilias
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'select IdFamila, Identificador, Descripcion from Familias'
    object adodsMasterIdFamila: TAutoIncField
      FieldName = 'IdFamila'
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
