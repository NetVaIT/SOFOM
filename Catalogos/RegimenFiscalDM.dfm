inherited dmRegimenFiscal: TdmRegimenFiscal
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdRegimenFiscal, Identificador, Descripcion FROM Regimene' +
      'sFiscales'
    object adodsMasterIdRegimenFiscal: TIntegerField
      FieldName = 'IdRegimenFiscal'
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
