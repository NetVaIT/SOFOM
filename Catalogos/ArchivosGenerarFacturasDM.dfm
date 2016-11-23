inherited dmArchivosGenerarFacturas: TdmArchivosGenerarFacturas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdArchivoGeneraFactura, IdPersonaRol, IdCSD, ArchivoCSD, ' +
      'IdKey, ArchivoKEY, Clave FROM ArchivosGenerarFacturas'
    Left = 32
    Top = 24
    object adodsMasterIdArchivoGeneraFactura: TAutoIncField
      FieldName = 'IdArchivoGeneraFactura'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdCSD: TGuidField
      FieldName = 'IdCSD'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object adodsMasterArchivoCSD: TBlobField
      FieldName = 'ArchivoCSD'
    end
    object adodsMasterIdKey: TGuidField
      FieldName = 'IdKey'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object adodsMasterArchivoKEY: TBlobField
      FieldName = 'ArchivoKEY'
    end
    object adodsMasterClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
  end
end
