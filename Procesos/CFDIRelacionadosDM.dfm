inherited dmCFDIRelacionados: TdmCFDIRelacionados
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdCFDIRelacionado, IDCFDI, IDCFDIAsociado, UUID'#13#10' from CF' +
      'DIRelacionados'#13#10'WHERE IDCFDI = :IDCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    object adodsMasterIdCFDIRelacionado: TLargeintField
      FieldName = 'IdCFDIRelacionado'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIDCFDI: TLargeintField
      FieldName = 'IDCFDI'
      Visible = False
    end
    object adodsMasterIDCFDIAsociado: TLargeintField
      FieldName = 'IDCFDIAsociado'
      Visible = False
      OnChange = adodsMasterIDCFDIAsociadoChange
    end
    object adodsMasterCFDIAsociado: TStringField
      DisplayLabel = 'CFDI asociado'
      FieldKind = fkLookup
      FieldName = 'CFDIAsociado'
      LookupDataSet = adodsCFDIParaRelacionar
      LookupKeyFields = 'IdCFDI'
      LookupResultField = 'Folio'
      KeyFields = 'IDCFDIAsociado'
      Size = 40
      Lookup = True
    end
    object adodsMasterUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
  end
  object adodsCFDIParaRelacionar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCFDI, Serie+CAST(Folio AS varchar(10)) AS Folio, UUID_T' +
      'B AS UUID'#13#10'FROM CFDI'#13#10'WHERE IdCFDIEstatus = 3'#13#10'AND IdPersonaRece' +
      'ptor = :IdPersonaReceptor'#13#10'AND IdCFDITipoDocumento = :IdCFDITipo' +
      'Documento'#13#10
    Parameters = <
      item
        Name = 'IdPersonaReceptor'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCFDITipoDocumento'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 83
    object adodsCFDIParaRelacionarIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object adodsCFDIParaRelacionarFolio: TStringField
      FieldName = 'Folio'
      ReadOnly = True
      Size = 30
    end
    object adodsCFDIParaRelacionarUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
  end
end
