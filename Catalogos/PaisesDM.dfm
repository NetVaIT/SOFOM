inherited dmUbicacion: TdmUbicacion
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPais, Identificador, Descripcion, BCCodigo, RegimenFisc' +
      'alPreferente, ListaGAFI from Paises'
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
    object adodsMasterBCCodigo: TStringField
      DisplayLabel = 'C'#243'digo BC'
      FieldName = 'BCCodigo'
      Size = 2
    end
    object adodsMasterRegimenFiscalPreferente: TBooleanField
      DisplayLabel = 'R'#233'gimen fiscal preferente'
      FieldName = 'RegimenFiscalPreferente'
    end
    object adodsMasterListaGAFI: TBooleanField
      DisplayLabel = 'Lista GAFI'
      FieldName = 'ListaGAFI'
    end
  end
end
