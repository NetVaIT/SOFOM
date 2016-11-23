inherited dmFormulas: TdmFormulas
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdFormula, Identificador, Descripcion, Formula FROM Formu' +
      'las'
    object adodsMasterIdFormula: TIntegerField
      FieldName = 'IdFormula'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 1000
    end
    object adodsMasterFormula: TStringField
      FieldName = 'Formula'
      Size = 200
    end
  end
end
