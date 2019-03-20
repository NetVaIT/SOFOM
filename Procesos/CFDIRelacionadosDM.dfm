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
      'B AS UUID'#13#10'FROM CFDI'#13#10'WHERE IdCFDIEstatus = :IdCFDIEstatus -- SE' +
      'p 19/18   3'#13#10'AND IdPersonaReceptor = :IdPersonaReceptor'#13#10'AND IdC' +
      'FDITipoDocumento = :IdCFDITipoDocumento'#13#10
    Parameters = <
      item
        Name = 'IdCFDIEstatus'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
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
  object adoqGetCFDI: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT UUID_TB AS UUID FROM CFDI'
      'WHERE IdCFDI = :IdCFDI'
      '')
    Left = 56
    Top = 160
    object adoqGetCFDIUUID: TStringField
      FieldName = 'UUID'
      Size = 40
    end
  end
end
