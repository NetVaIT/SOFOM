inherited dmMatrizRiesgo: TdmMatrizRiesgo
  OldCreateOrder = True
  Height = 492
  Width = 631
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdMRCuestionario, IdMRCuestionarioEstatus, IdUsuario, '#13#10'V' +
      'ersion, FechaCreacion, MesesVigenciaAplicacion '#13#10'from MRCuestion' +
      'arios'
    Left = 56
    object adodsMasterIdMRCuestionario: TAutoIncField
      FieldName = 'IdMRCuestionario'
      ReadOnly = True
    end
    object adodsMasterIdMRCuestionarioEstatus: TIntegerField
      FieldName = 'IdMRCuestionarioEstatus'
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object adodsMasterVersion: TFloatField
      DisplayLabel = 'Versi'#243'n'
      FieldName = 'Version'
    end
    object adodsMasterFechaCreacion: TDateTimeField
      DisplayLabel = 'Fecha Creaci'#243'n'
      FieldName = 'FechaCreacion'
    end
    object adodsMasterMesesVigenciaAplicacion: TIntegerField
      DisplayLabel = 'Vigencia Aplicaci'#243'n (Meses)'
      FieldName = 'MesesVigenciaAplicacion'
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCuestionarioEstatus
      LookupKeyFields = 'IdMRCuestionarioEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMRCuestionarioEstatus'
      Size = 10
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 344
  end
  inherited ActionList: TActionList
    Left = 344
  end
  object adodsCuestionarioEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRCuestionarioEstatus, Identificador, Descripcion '#13#10'fro' +
      'm MRCuestionariosEstatus'
    Parameters = <>
    Left = 248
    Top = 16
    object adodsCuestionarioEstatusIdMRCuestionarioEstatus: TAutoIncField
      FieldName = 'IdMRCuestionarioEstatus'
      ReadOnly = True
    end
    object adodsCuestionarioEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object adodsCuestionarioEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
  end
  object adodsCalificacionRiesgo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRCalificacionRiesgo, IdMRCuestionario, IdPersonaTipo, ' +
      #13#10'NivelRiesgo, ValorMinimo, ValorMaximo '#13#10'from MRCalificacionesR' +
      'iesgos'#13#10#13#10'where IdMRCuestionario=:IdMRCuestionario'
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
    Left = 56
    Top = 88
    object adodsCalificacionRiesgoIdMRCalificacionRiesgo: TAutoIncField
      FieldName = 'IdMRCalificacionRiesgo'
      ReadOnly = True
    end
    object adodsCalificacionRiesgoIdMRCuestionario: TIntegerField
      FieldName = 'IdMRCuestionario'
    end
    object adodsCalificacionRiesgoIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
    end
    object adodsCalificacionRiesgoNivelRiesgo: TStringField
      DisplayLabel = 'Nivel Riesgo'
      FieldName = 'NivelRiesgo'
      Size = 25
    end
    object adodsCalificacionRiesgoValorMinimo: TFloatField
      DisplayLabel = 'Valor M'#237'nimo'
      FieldName = 'ValorMinimo'
    end
    object adodsCalificacionRiesgoValorMaximo: TFloatField
      DisplayLabel = 'Valor M'#225'ximo'
      FieldName = 'ValorMaximo'
    end
    object adodsCalificacionRiesgoPersonaTipo: TStringField
      DisplayLabel = 'Tipo Persona'
      FieldKind = fkLookup
      FieldName = 'PersonaTipo'
      LookupDataSet = adodsPersonaTipo
      LookupKeyFields = 'IdPersonaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaTipo'
      Size = 25
      Lookup = True
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsMasterDataChange
    Left = 140
    Top = 16
  end
  object adodsPersonaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 240
    Top = 88
  end
  object adodsPreguntas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsPreguntasNewRecord
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
    Left = 56
    Top = 160
    object adodsPreguntasIdMRPregunta: TAutoIncField
      FieldName = 'IdMRPregunta'
      ReadOnly = True
    end
    object adodsPreguntasIdMRCuestionario: TIntegerField
      FieldName = 'IdMRCuestionario'
    end
    object adodsPreguntasPregunta: TStringField
      FieldName = 'Pregunta'
      Size = 300
    end
    object adodsPreguntasAplicaaPersonaFisica: TBooleanField
      DisplayLabel = 'Aplica a Persona F'#237'sica'
      FieldName = 'AplicaaPersonaFisica'
    end
    object adodsPreguntasAplicaaPersonaMoral: TBooleanField
      DisplayLabel = 'Aplica a Persona Moral'
      FieldName = 'AplicaaPersonaMoral'
    end
    object adodsPreguntasOrden: TIntegerField
      FieldName = 'Orden'
    end
    object adodsPreguntasCondicionada: TBooleanField
      FieldName = 'Condicionada'
    end
    object adodsPreguntasEvaluaARDirecto: TBooleanField
      DisplayLabel = 'Evalua Alto Riesgo'
      FieldName = 'EvaluaARDirecto'
    end
  end
  object adodsPreguntasOpciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRPreguntaOpcion, IdMRPregunta, Opcion, Ponderacion,'#13#10' ' +
      'ReqTextoAdi, TablaExterna, CampoADesplegar, '#13#10'CondicionTablaExt,' +
      ' EvaluaCamposAdicionales '#13#10#13#10'from MRPreguntasOpciones '
    DataSource = dsPreguntas
    IndexFieldNames = 'IdMRPregunta'
    MasterFields = 'IdMRPregunta'
    Parameters = <>
    Left = 56
    Top = 232
    object adodsPreguntasOpcionesIdMRPreguntaOpcion: TAutoIncField
      FieldName = 'IdMRPreguntaOpcion'
      ReadOnly = True
    end
    object adodsPreguntasOpcionesIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object adodsPreguntasOpcionesOpcion: TStringField
      DisplayLabel = 'Opci'#243'n'
      FieldName = 'Opcion'
      Size = 200
    end
    object adodsPreguntasOpcionesPonderacion: TFloatField
      DisplayLabel = 'Ponderaci'#243'n'
      FieldName = 'Ponderacion'
    end
    object adodsPreguntasOpcionesReqTextoAdi: TBooleanField
      DisplayLabel = 'Requiere Texto Adicional'
      FieldName = 'ReqTextoAdi'
    end
    object adodsPreguntasOpcionesTablaExterna: TStringField
      DisplayLabel = 'Tabla Externa'
      FieldName = 'TablaExterna'
      Size = 200
    end
    object adodsPreguntasOpcionesCampoADesplegar: TStringField
      DisplayLabel = 'Campo A Desplegar'
      FieldName = 'CampoADesplegar'
      Size = 30
    end
    object adodsPreguntasOpcionesCondicionTablaExt: TStringField
      DisplayLabel = 'Condicion Tabla Externa'
      FieldName = 'CondicionTablaExt'
      Size = 300
    end
    object adodsPreguntasOpcionesEvaluaCamposAdicionales: TBooleanField
      DisplayLabel = 'Evalua Campos Adicionales'
      FieldName = 'EvaluaCamposAdicionales'
    end
  end
  object dsPreguntas: TDataSource
    DataSet = adodsPreguntas
    Left = 156
    Top = 152
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 344
    Top = 224
  end
  object ADODsCamposAdicionales: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODsCamposAdicionalesNewRecord
    CommandText = 
      'select IdMRTablaAsociadoCampo, IdMRPreguntaOpcion, '#13#10'CampoEspeci' +
      'alAltoRiesgo, CondicionEnTexto, '#13#10'PonderacionExtra from '#13#10'MRTabl' +
      'asAsociadasCampos'#13#10'Where IdMRPreguntaOpcion=:IdMRPreguntaOpcion'
    DataSource = dsPreguntaOpcion
    Parameters = <
      item
        Name = 'IdMRPreguntaOpcion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 304
    object ADODsCamposAdicionalesIdMRTablaAsociadoCampo: TAutoIncField
      FieldName = 'IdMRTablaAsociadoCampo'
      ReadOnly = True
    end
    object ADODsCamposAdicionalesIdMRPreguntaOpcion: TIntegerField
      FieldName = 'IdMRPreguntaOpcion'
    end
    object ADODsCamposAdicionalesCampoEspecialAltoRiesgo: TStringField
      DisplayLabel = 'Campo Adicional'
      FieldName = 'CampoEspecialAltoRiesgo'
      Size = 30
    end
    object ADODsCamposAdicionalesCondicionEnTexto: TStringField
      DisplayLabel = 'Condicion En Texto'
      FieldName = 'CondicionEnTexto'
      Size = 100
    end
    object ADODsCamposAdicionalesPonderacionExtra: TFloatField
      DisplayLabel = 'Ponderaci'#243'n Extra'
      FieldName = 'PonderacionExtra'
    end
  end
  object dsPreguntaOpcion: TDataSource
    DataSet = adodsPreguntasOpciones
    Left = 164
    Top = 232
  end
  object ADOdsPaquetesPreguntas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRPaquetePregunta, IdMRCuestionario, '#13#10'DescripcionPaque' +
      'te, Ponderacion_Extra from MRPaquetesPreguntas'
    DataSource = dsMaster
    IndexFieldNames = 'IdMRCuestionario'
    MasterFields = 'IdMRCuestionario'
    Parameters = <>
    Left = 344
    Top = 288
    object ADOdsPaquetesPreguntasIdMRPaquetePregunta: TAutoIncField
      FieldName = 'IdMRPaquetePregunta'
      ReadOnly = True
    end
    object ADOdsPaquetesPreguntasIdMRCuestionario: TIntegerField
      FieldName = 'IdMRCuestionario'
    end
    object ADOdsPaquetesPreguntasDescripcionPaquete: TStringField
      DisplayLabel = 'Descripci'#243'n Paquete'
      FieldName = 'DescripcionPaquete'
      Size = 300
    end
    object ADOdsPaquetesPreguntasPonderacion_Extra: TFloatField
      FieldName = 'Ponderacion_Extra'
    end
  end
  object DSPaquetePregunta: TDataSource
    DataSet = ADOdsPaquetesPreguntas
    Left = 460
    Top = 288
  end
  object ADODsRelacionPreguntas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRRelacionPregunta, IdMRPaquetePregunta,'#13#10' IdMRPregunta' +
      ', IdMRPreguntaOpcion, ValorCondicionante '#13#10'from MRRelacionesPreg' +
      'untas'
    DataSource = DSPaquetePregunta
    Parameters = <>
    Left = 344
    Top = 360
    object ADODsRelacionPreguntasIdMRRelacionPregunta: TAutoIncField
      FieldName = 'IdMRRelacionPregunta'
      ReadOnly = True
    end
    object ADODsRelacionPreguntasIdMRPaquetePregunta: TIntegerField
      FieldName = 'IdMRPaquetePregunta'
    end
    object ADODsRelacionPreguntasIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object ADODsRelacionPreguntasIdMRPreguntaOpcion: TIntegerField
      FieldName = 'IdMRPreguntaOpcion'
    end
    object ADODsRelacionPreguntasValorCondicionante: TStringField
      DisplayLabel = 'Valor Condicionante'
      FieldName = 'ValorCondicionante'
      Size = 300
    end
    object ADODsRelacionPreguntasPreguntaTxt: TStringField
      DisplayLabel = 'Pregunta'
      FieldKind = fkLookup
      FieldName = 'PreguntaTxt'
      LookupDataSet = adodsPreguntas
      LookupKeyFields = 'IdMRPregunta'
      LookupResultField = 'Pregunta'
      KeyFields = 'IdMRPregunta'
      Size = 200
      Lookup = True
    end
    object ADODsRelacionPreguntasOpcionTxt: TStringField
      DisplayLabel = 'Opci'#243'n'
      FieldKind = fkLookup
      FieldName = 'OpcionTxt'
      LookupDataSet = adodsPreguntasOpciones
      LookupKeyFields = 'IdMRPreguntaOpcion'
      LookupResultField = 'Opcion'
      KeyFields = 'IdMRPreguntaOpcion'
      Size = 200
      Lookup = True
    end
    object ADODsRelacionPreguntasPaqueteTxt: TStringField
      FieldKind = fkLookup
      FieldName = 'PaqueteTxt'
      LookupDataSet = ADOdsPaquetesPreguntas
      LookupKeyFields = 'IdMRPaquetePregunta'
      LookupResultField = 'DescripcionPaquete'
      KeyFields = 'IdMRPaquetePregunta'
      Size = 300
      Lookup = True
    end
  end
end
