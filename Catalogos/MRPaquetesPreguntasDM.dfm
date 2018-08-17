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
        Value = Null
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
    MasterFields = 'IdMRPregunta'
    Parameters = <>
    Left = 56
    Top = 232
  end
  object dsPreguntas: TDataSource
    DataSet = adodsPreguntas
    Left = 572
    Top = 312
  end
  object dsPreguntaOpcion: TDataSource
    DataSet = ADOdsConPregOpciones
    Left = 556
    Top = 224
  end
  object ADOdsConPregOpciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRPreguntaOpcion, IdMRPregunta, Opcion, Ponderacion,'#13#10' ' +
      'ReqTextoAdi, TablaExterna, CampoADesplegar, '#13#10'CondicionTablaExt,' +
      ' EvaluaCamposAdicionales '#13#10#13#10'from MRPreguntasOpciones '#13#10'where Id' +
      'MRPregunta=:IdMRPregunta'
    DataSource = dsPreguntas
    IndexFieldNames = 'IdMRPregunta'
    MasterFields = 'IdMRPregunta'
    Parameters = <
      item
        Name = 'IdMRPregunta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 456
    Top = 392
    object ADOdsConPregOpcionesIdMRPreguntaOpcion: TAutoIncField
      FieldName = 'IdMRPreguntaOpcion'
      ReadOnly = True
    end
    object ADOdsConPregOpcionesIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object ADOdsConPregOpcionesOpcion: TStringField
      DisplayLabel = 'Opci'#243'n'
      FieldName = 'Opcion'
      Size = 200
    end
  end
  object dsRElacionpreguntas: TDataSource
    Left = 188
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
    Parameters = <
      item
        Name = 'IdMRCuestionario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 552
    Top = 160
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
  object AdoDSRElacionpreg: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdMRRelacionPregunta, IdMRPaquetePregunta, IdMRPre' +
      'gunta, IdMRPreguntaOpcion, ValorCondicionante'#13#10'FROM            M' +
      'RRelacionesPreguntas'#13#10'WHERE IdMRPaquetePregunta = :IdMRPaquetePr' +
      'egunta'
    DataSource = dsMaster
    MasterFields = 'IdMRPaquetePregunta'
    Parameters = <
      item
        Name = 'IdMRPaquetePregunta'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 4
      end>
    Left = 48
    Top = 80
    object AdoDSRElacionpregIdMRRelacionPregunta: TAutoIncField
      FieldName = 'IdMRRelacionPregunta'
      ReadOnly = True
    end
    object AdoDSRElacionpregIdMRPaquetePregunta: TIntegerField
      FieldName = 'IdMRPaquetePregunta'
    end
    object AdoDSRElacionpregIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
      OnChange = AdoDSRElacionpregIdMRPreguntaChange
    end
    object AdoDSRElacionpregIdMRPreguntaOpcion: TIntegerField
      FieldName = 'IdMRPreguntaOpcion'
    end
    object AdoDSRElacionpregValorCondicionante: TStringField
      DisplayLabel = 'Valor condicionante'
      FieldName = 'ValorCondicionante'
      Size = 300
    end
    object AdoDSRElacionpregPregunta: TStringField
      FieldKind = fkLookup
      FieldName = 'Pregunta'
      LookupDataSet = adodsPreguntas
      LookupKeyFields = 'IdMRPregunta'
      LookupResultField = 'Pregunta'
      KeyFields = 'IdMRPregunta'
      Size = 300
      Lookup = True
    end
    object AdoDSRElacionpregOpcion: TStringField
      DisplayLabel = 'Opci'#243'n'
      FieldKind = fkLookup
      FieldName = 'Opcion'
      LookupDataSet = adodsPreguntasOpciones
      LookupKeyFields = 'IdMRPreguntaOpcion'
      LookupResultField = 'Opcion'
      KeyFields = 'IdMRPreguntaOpcion'
      Size = 300
      Lookup = True
    end
    object AdoDSRElacionpregPaquete: TStringField
      FieldKind = fkLookup
      FieldName = 'Paquete'
      LookupDataSet = adodsMaster
      LookupKeyFields = 'IdMRPaquetePregunta'
      LookupResultField = 'DescripcionPaquete'
      KeyFields = 'IdMRPaquetePregunta'
      Size = 300
      Lookup = True
    end
  end
  object dsPreguntas1: TDataSource
    DataSet = adodsPreguntas
    Left = 188
    Top = 168
  end
end
