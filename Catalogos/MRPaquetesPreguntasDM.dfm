inherited dmMRPaquetesPreguntas: TdmMRPaquetesPreguntas
  OldCreateOrder = True
  Height = 483
  Width = 645
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdMRPaquetePregunta, IdMRCuestionario, '#13#10'DescripcionPaque' +
      'te, Ponderacion_Extra from MRPaquetesPreguntas'#13#10'where IdMRCuesti' +
      'onario =:IdMRCuestionario'
    Parameters = <
      item
        Name = 'IdMRCuestionario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 48
    object adodsMasterIdMRPaquetePregunta: TAutoIncField
      FieldName = 'IdMRPaquetePregunta'
      ReadOnly = True
    end
    object adodsMasterIdMRCuestionario: TIntegerField
      FieldName = 'IdMRCuestionario'
    end
    object adodsMasterDescripcionPaquete: TStringField
      DisplayLabel = 'Descripci'#243'n paquete'
      FieldName = 'DescripcionPaquete'
      Size = 300
    end
    object adodsMasterPonderacion_Extra: TFloatField
      DisplayLabel = 'Ponderaci'#243'n extra'
      FieldName = 'Ponderacion_Extra'
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 172
    Top = 16
  end
  object adodsPreguntas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdMRPregunta, IdMRCuestionario, Pregunta'#13#10'FROM    ' +
      '        MRPreguntas'#13#10'Where IdMRCuestionario=:IdMRCuestionario'
    DataSource = dsMaster
    MasterFields = 'IdMRCuestionario'
    Parameters = <
      item
        Name = 'IdMRCuestionario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 48
    Top = 168
  end
  object adodsPreguntasOpciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdMRPreguntaOpcion, Opcion'#13#10'FROM            MRPreg' +
      'untasOpciones'#13#10
    Parameters = <>
    Left = 56
    Top = 232
  end
  object dsPreguntas: TDataSource
    DataSet = adodsPreguntas
    Left = 204
    Top = 168
  end
  object dsPreguntaOpcion: TDataSource
    Left = 572
    Top = 392
  end
  object dsRElacionpreguntas: TDataSource
    Left = 204
    Top = 80
  end
  object adodspreguntasconsulta: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRPregunta, IdMRCuestionario, Pregunta, '#13#10'AplicaaPerson' +
      'aFisica, AplicaaPersonaMoral, Orden, '#13#10'Condicionada, EvaluaARDir' +
      'ecto from MRPreguntas'#13#10#13#10'where IdMRCuestionario=:IdMRCuestionari' +
      'o'
    DataSource = dsMaster
    IndexFieldNames = 'IdMRCuestionario'
    MasterFields = 'IdMRCuestionario'
    Parameters = <
      item
        Name = 'IdMRCuestionario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 560
    Top = 216
    object AutoIncField1: TAutoIncField
      FieldName = 'IdMRPregunta'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IdMRCuestionario'
    end
    object StringField1: TStringField
      FieldName = 'Pregunta'
      Size = 300
    end
    object BooleanField1: TBooleanField
      DisplayLabel = 'Aplica a persona f'#237'sica'
      FieldName = 'AplicaaPersonaFisica'
    end
    object BooleanField2: TBooleanField
      DisplayLabel = 'Aplica a persona moral'
      FieldName = 'AplicaaPersonaMoral'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Orden'
    end
    object BooleanField3: TBooleanField
      FieldName = 'Condicionada'
    end
    object BooleanField4: TBooleanField
      DisplayLabel = 'Evalua alto riesgo'
      FieldName = 'EvaluaARDirecto'
    end
  end
  object dsPreguntasCon: TDataSource
    DataSet = adodsPreguntas
    Left = 556
    Top = 280
  end
  object ADOdsConPregOpciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select *   from MRPreguntasOpciones where '#13#10'IdMRPregunta=:IdMRPr' +
      'egunta'
    DataSource = dsPreguntasCon
    MasterFields = 'IdMRPregunta'
    Parameters = <
      item
        Name = 'IdMRPregunta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 344
    Top = 384
    object ADOdsConPregOpcionesIdMRPreguntaOpcion: TAutoIncField
      FieldName = 'IdMRPreguntaOpcion'
      ReadOnly = True
    end
    object ADOdsConPregOpcionesIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object ADOdsConPregOpcionesOpcion: TStringField
      FieldName = 'Opcion'
      Size = 200
    end
  end
  object AdoDSRelacionPreg: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRRelacionPregunta, IdMRPaquetePregunta, '#13#10'IdMRPregunta' +
      ', IdMRPreguntaOpcion, ValorCondicionante '#13#10'from MRRelacionesPreg' +
      'untas'#13#10#13#10'where IdMRPaquetePregunta=:IdMRPaquetePregunta'
    DataSource = dsMaster
    MasterFields = 'IdMRPaquetePregunta'
    Parameters = <
      item
        Name = 'IdMRPaquetePregunta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 80
    object AdoDSRelacionPregIdMRRelacionPregunta: TAutoIncField
      FieldName = 'IdMRRelacionPregunta'
      ReadOnly = True
    end
    object AdoDSRelacionPregIdMRPaquetePregunta: TIntegerField
      FieldName = 'IdMRPaquetePregunta'
    end
    object AdoDSRelacionPregIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object AdoDSRelacionPregIdMRPreguntaOpcion: TIntegerField
      FieldName = 'IdMRPreguntaOpcion'
    end
    object AdoDSRelacionPregValorCondicionante: TStringField
      FieldName = 'ValorCondicionante'
      Size = 300
    end
    object AdoDSRelacionPregPregunta: TStringField
      FieldKind = fkLookup
      FieldName = 'Pregunta'
      LookupDataSet = adodsPreguntas
      LookupKeyFields = 'IdMRPregunta'
      LookupResultField = 'Pregunta'
      KeyFields = 'IdMRPregunta'
      Size = 150
      Lookup = True
    end
    object AdoDSRelacionPregOpcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Opcion'
      LookupDataSet = adodsPreguntasOpciones
      LookupKeyFields = 'IdMRPreguntaOpcion'
      LookupResultField = 'Opcion'
      KeyFields = 'IdMRPreguntaOpcion'
      Size = 150
      Lookup = True
    end
    object AdoDSRelacionPregPaquete: TStringField
      FieldKind = fkLookup
      FieldName = 'Paquete'
      LookupDataSet = ADODSConPaquetes
      LookupKeyFields = 'IdMRPaquetePregunta'
      LookupResultField = 'DescripcionPaquete'
      KeyFields = 'IdMRPaquetePregunta'
      Size = 150
      Lookup = True
    end
  end
  object ADODSConPaquetes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRPaquetePregunta, IdMRCuestionario, '#13#10'DescripcionPaque' +
      'te from MRPaquetesPreguntas'
    Parameters = <>
    Left = 264
    Top = 248
  end
end
