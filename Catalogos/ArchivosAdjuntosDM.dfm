inherited dmArchivosAdjuntos: TdmArchivosAdjuntos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdArchivoAdjunto, IdDocumentoAdjunto, Descripcion, IdArch' +
      'ivo, Archivo FROM ArchivosAdjuntos'
    object adodsMasterIdArchivoAdjunto: TAutoIncField
      FieldName = 'IdArchivoAdjunto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdDocumentoAdjunto: TIntegerField
      FieldName = 'IdDocumentoAdjunto'
      Visible = False
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      Visible = False
      FixedChar = True
      Size = 38
    end
    object adodsMasterArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
end
