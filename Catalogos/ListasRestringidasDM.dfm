inherited dmListasRestringidas: TdmListasRestringidas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdListaRestringida, IdOrganismo, IdPais, IdEstatus,'#13#10' Ide' +
      'ntificador, Nombre, Alias '#13#10', FechaNacimiento, RFC, NoIdentifica' +
      'cion, Dependencia, '#13#10'Puesto, Comentarios, Nacionalidad'#13#10'from Lis' +
      'tasRestringidas'
    Left = 56
    object adodsMasterIdListaRestringida: TAutoIncField
      FieldName = 'IdListaRestringida'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdOrganismo: TIntegerField
      FieldName = 'IdOrganismo'
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdEstatus: TIntegerField
      FieldName = 'IdEstatus'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 60
    end
    object adodsMasterOrganismo: TStringField
      FieldKind = fkLookup
      FieldName = 'Organismo'
      LookupDataSet = adodsOrganismos
      LookupKeyFields = 'IdOrganismo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrganismo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 500
    end
    object adodsMasterAlias: TStringField
      FieldName = 'Alias'
      Size = 255
    end
    object adodsMasterFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 50
    end
    object adodsMasterNoIdentificacion: TStringField
      FieldName = 'NoIdentificacion'
      Size = 30
    end
    object adodsMasterDependencia: TStringField
      FieldName = 'Dependencia'
      Size = 250
    end
    object adodsMasterPuesto: TStringField
      FieldName = 'Puesto'
      Size = 150
    end
    object adodsMasterComentarios: TStringField
      FieldName = 'Comentarios'
      Size = 500
    end
    object adodsMasterNacionalidad: TStringField
      FieldName = 'Nacionalidad'
      Size = 250
    end
  end
  inherited ActionList: TActionList
    object actWeb: TAction
      Caption = 'Listas Web'
      ImageIndex = 13
      OnExecute = actWebExecute
    end
    object ActCargaLPB: TAction
      Caption = 'Carga LPB'
      OnExecute = ActCargaLPBExecute
    end
    object ActPoneOrganismos: TAction
      Caption = 'Pone Organismos'
      OnExecute = ActPoneOrganismosExecute
    end
  end
  object adodsOrganismos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdOrganismo, Descripcion, Aplica24Horas from Organismos'
    Parameters = <>
    Left = 72
    Top = 72
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Identificador, Descripcion from Paises'
    Parameters = <>
    Left = 72
    Top = 128
  end
  object XMLDocListaPB_ONU: TXMLDocument
    FileName = 'C:\Desarrollo\Documentos\SofomListas\CNBV-LPB-2016-000120.xml'
    Left = 56
    Top = 200
    DOMVendorDesc = 'MSXML'
  end
  object OpnDlgXML: TOpenDialog
    Filter = 'XML|*.XML'
    Left = 56
    Top = 264
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 176
    Top = 208
  end
  object ADOInsertaRegistro: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdOrganismo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPais'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdEstatus'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Identificador'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end
      item
        Name = 'Nombre'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end
      item
        Name = 'Alias'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'FechaNacimiento'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'RFC'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'NoIdentificacion'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Dependencia'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end
      item
        Name = 'Puesto'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end
      item
        Name = 'Funciones'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'Comentarios'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 500
        Value = Null
      end
      item
        Name = 'Nacionalidad'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO ListasRestringidas'
      '           (IdOrganismo'
      '           ,IdPais'
      '           ,IdEstatus'
      '           ,Identificador'
      '           ,Nombre'
      '           ,Alias'
      '           ,FechaNacimiento'
      '           ,RFC'
      '           ,NoIdentificacion'
      '           ,Dependencia'
      '           ,Puesto'
      '           ,Funciones'
      '           ,Comentarios'
      '           ,Nacionalidad)'
      '     VALUES'
      '(           (:IdOrganismo'
      '           ,:IdPais'
      '           ,:IdEstatus'
      '           ,:Identificador'
      '           ,:Nombre'
      '           ,:Alias'
      '           ,:FechaNacimiento'
      '           ,:RFC'
      '           ,:NoIdentificacion'
      '           ,:Dependencia'
      '           ,:Puesto'
      '           ,:Funciones'
      '           ,:Comentarios'
      '           ,:Nacionalidad)'
      '')
    Left = 296
    Top = 208
  end
end
