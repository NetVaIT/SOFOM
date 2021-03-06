inherited dmEvaluacionRiesgo: TdmEvaluacionRiesgo
  OldCreateOrder = True
  Height = 695
  Width = 990
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdMRCuestionarioAplicado, IdMRCuestionario, IDPersona, '#13#10 +
      'Fecha, PonderacionTotal, IdUsuario, FechaVencimiento '#13#10'from MRCu' +
      'estionariosAplicados'
    Left = 48
    object adodsMasterIdMRCuestionarioAplicado: TAutoIncField
      FieldName = 'IdMRCuestionarioAplicado'
      ReadOnly = True
    end
    object adodsMasterIdMRCuestionario: TIntegerField
      FieldName = 'IdMRCuestionario'
      OnChange = adodsMasterIdMRCuestionarioChange
    end
    object adodsMasterIDPersona: TIntegerField
      FieldName = 'IDPersona'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterPonderacionTotal: TFloatField
      DisplayLabel = 'Ponderaci'#243'n total'
      FieldName = 'PonderacionTotal'
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object adodsMasterFechaVencimiento: TDateTimeField
      DisplayLabel = 'Fecha vencimiento'
      FieldName = 'FechaVencimiento'
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Cliente'
      KeyFields = 'IDPersona'
      Size = 200
      Lookup = True
    end
    object adodsMasterVersionCuestionario: TFloatField
      DisplayLabel = 'Versi'#243'n cuestionario'
      FieldKind = fkLookup
      FieldName = 'VersionCuestionario'
      LookupDataSet = ADOdsCuestionarios
      LookupKeyFields = 'IdMRCuestionario'
      LookupResultField = 'Version'
      KeyFields = 'IdMRCuestionario'
      Lookup = True
    end
    object adodsMastermesesVen: TIntegerField
      DisplayLabel = 'Meses de vencimiento'
      FieldKind = fkLookup
      FieldName = 'mesesVen'
      LookupDataSet = ADOdsCuestionarios
      LookupKeyFields = 'IdMRCuestionario'
      LookupResultField = 'MesesVigenciaAplicacion'
      KeyFields = 'IdMRCuestionario'
      Lookup = True
    end
    object adodsMasterTipoPersona: TStringField
      DisplayLabel = 'Tipo persona'
      FieldKind = fkLookup
      FieldName = 'TipoPersona'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Descripcion'
      KeyFields = 'IDPersona'
      Size = 25
      Lookup = True
    end
    object adodsMasterRiesgo: TStringField
      FieldKind = fkLookup
      FieldName = 'Riesgo'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'TipoRiesgo'
      KeyFields = 'IDPersona'
      Lookup = True
    end
    object adodsMasterRFC: TStringField
      FieldKind = fkLookup
      FieldName = 'RFC'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RFC'
      KeyFields = 'IDPersona'
      Size = 15
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 352
  end
  inherited ActionList: TActionList
    Left = 376
    Top = 72
    object actAplicaCuestionario: TAction
      Caption = 'Aplica Cuestionario'
      Hint = 'Aplicar o Mostrar Cuestionario'
      OnExecute = actAplicaCuestionarioExecute
    end
    object actCreaCuestionarioXAplicar: TAction
      Caption = 'Crea cuestionario para aplicar'
      OnExecute = actCreaCuestionarioXAplicarExecute
    end
    object actCalcularPonderacion: TAction
      Caption = 'C'#225'lculo Ponderaci'#243'n'
      OnExecute = actCalcularPonderacionExecute
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, P.RazonSocial AS Cliente, P.IdPersonaTipo,P.' +
      'RFC, '#13#10'Pt.Descripcion, RT.Descripcion as TipoRiesgo '#13#10'from Perso' +
      'nas P'#13#10'inner Join PersonasTipos PT on Pt.IdPersonaTipo = P.IdPer' +
      'sonaTipo'#13#10'inner join  RiesgosTipos RT on rt.idriesgotipo=P.idRie' +
      'sgoTipo'#13#10'WHERE IdRolTipo = 3'#13#10'order by RazonSocial '
    Parameters = <>
    Left = 48
    Top = 80
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    Left = 136
    Top = 16
  end
  object adodsPreguntas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdMRPregunta, IdMRCuestionario, Pregunta, Orden,'#13#10 +
      'AplicaaPersonaFisica, AplicaaPersonaMoral, Condicionada, EvaluaA' +
      'RDirecto'#13#10'FROM            MRPreguntas'#13#10'Where IdMRCuestionario=:I' +
      'dMRCuestionario'#13#10'order by Orden'
    DataSource = DSCuestionario
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
    Top = 216
  end
  object adodsPreguntasOpciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdMRPreguntaOpcion, Opcion'#13#10'FROM            MRPreg' +
      'untasOpciones'#13#10
    MasterFields = 'IdMRPregunta'
    Parameters = <>
    Left = 48
    Top = 280
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
        Value = 1
      end>
    Left = 432
    Top = 304
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
    object ADOdsConPregOpcionesPonderacion: TFloatField
      FieldName = 'Ponderacion'
    end
    object ADOdsConPregOpcionesReqTextoAdi: TBooleanField
      FieldName = 'ReqTextoAdi'
    end
    object ADOdsConPregOpcionesTablaExterna: TStringField
      FieldName = 'TablaExterna'
      Size = 200
    end
    object ADOdsConPregOpcionesCampoADesplegar: TStringField
      FieldName = 'CampoADesplegar'
      Size = 30
    end
    object ADOdsConPregOpcionesCondicionTablaExt: TStringField
      FieldName = 'CondicionTablaExt'
      Size = 300
    end
    object ADOdsConPregOpcionesEvaluaCamposAdicionales: TBooleanField
      FieldName = 'EvaluaCamposAdicionales'
    end
  end
  object dsPreguntas: TDataSource
    DataSet = ADODSRespuestasCuestionario
    Left = 420
    Top = 232
  end
  object ADOdsCuestionarios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRCuestionario, IdMRCuestionarioEstatus, '#13#10'Version, Mes' +
      'esVigenciaAplicacion from '#13#10'MRCuestionarios where IdMRCuestionar' +
      'ioEstatus=1 '
    Parameters = <>
    Left = 48
    Top = 160
  end
  object DSCuestionario: TDataSource
    DataSet = ADOdsCuestionarios
    Left = 196
    Top = 160
  end
  object ADODSRespuestasCuestionario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRCuestionarioAplicadoRespuesta, IdMRCuestionarioAplica' +
      'do, '#13#10'IdMRPregunta, IdMRPreguntaOpcionResp, OtroTexto '#13#10'from MRC' +
      'uestionarioAplicadoRespuestas'#13#10'where IdMRCuestionarioAplicado =:' +
      'IdMRCuestionarioAplicado'
    DataSource = dsMaster
    IndexFieldNames = 'IdMRCuestionarioAplicado'
    MasterFields = 'IdMRCuestionarioAplicado'
    Parameters = <
      item
        Name = 'IdMRCuestionarioAplicado'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 200
    Top = 80
    object ADODSRespuestasCuestionarioIdMRCuestionarioAplicadoRespuesta: TAutoIncField
      FieldName = 'IdMRCuestionarioAplicadoRespuesta'
      ReadOnly = True
    end
    object ADODSRespuestasCuestionarioIdMRCuestionarioAplicado: TIntegerField
      FieldName = 'IdMRCuestionarioAplicado'
    end
    object ADODSRespuestasCuestionarioIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object ADODSRespuestasCuestionarioIdMRPreguntaOpcionResp: TIntegerField
      FieldName = 'IdMRPreguntaOpcionResp'
    end
    object ADODSRespuestasCuestionarioOtroTexto: TStringField
      FieldName = 'OtroTexto'
      Size = 300
    end
    object ADODSRespuestasCuestionarioPregunta: TStringField
      FieldKind = fkLookup
      FieldName = 'Pregunta'
      LookupDataSet = adodsPreguntas
      LookupKeyFields = 'IdMRPregunta'
      LookupResultField = 'Pregunta'
      KeyFields = 'IdMRPregunta'
      Size = 300
      Lookup = True
    end
    object ADODSRespuestasCuestionarioopcion: TStringField
      FieldKind = fkLookup
      FieldName = 'opcion'
      LookupDataSet = adodsPreguntasOpciones
      LookupKeyFields = 'IdMRPreguntaOpcion'
      LookupResultField = 'Opcion'
      KeyFields = 'IdMRPreguntaOpcionResp'
      Size = 300
      Lookup = True
    end
    object ADODSRespuestasCuestionarioOrden: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Orden'
      LookupDataSet = adodsPreguntas
      LookupKeyFields = 'IdMRPregunta'
      LookupResultField = 'Orden'
      KeyFields = 'IdMRPregunta'
      Lookup = True
    end
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
    Left = 240
    Top = 384
    object ADOdsPaquetesPreguntasIdMRPaquetePregunta: TAutoIncField
      FieldName = 'IdMRPaquetePregunta'
      ReadOnly = True
    end
    object ADOdsPaquetesPreguntasIdMRCuestionario: TIntegerField
      FieldName = 'IdMRCuestionario'
    end
    object ADOdsPaquetesPreguntasDescripcionPaquete: TStringField
      DisplayLabel = 'Descripci'#243'n paquete'
      FieldName = 'DescripcionPaquete'
      Size = 300
    end
    object ADOdsPaquetesPreguntasPonderacion_Extra: TFloatField
      DisplayLabel = 'Ponderaci'#243'n extra'
      FieldName = 'Ponderacion_Extra'
    end
  end
  object ADODsCamposAdicionales: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRTablaAsociadoCampo, IdMRPreguntaOpcion, '#13#10'CampoEspeci' +
      'alAltoRiesgo, CondicionEnTexto, '#13#10'PonderacionExtra from '#13#10'MRTabl' +
      'asAsociadasCampos'#13#10'Where IdMRPreguntaOpcion=:IdMRPreguntaOpcion'
    Parameters = <
      item
        Name = 'IdMRPreguntaOpcion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 384
    object ADODsCamposAdicionalesIdMRTablaAsociadoCampo: TAutoIncField
      FieldName = 'IdMRTablaAsociadoCampo'
      ReadOnly = True
    end
    object ADODsCamposAdicionalesIdMRPreguntaOpcion: TIntegerField
      FieldName = 'IdMRPreguntaOpcion'
    end
    object ADODsCamposAdicionalesCampoEspecialAltoRiesgo: TStringField
      DisplayLabel = 'Campo adicional'
      FieldName = 'CampoEspecialAltoRiesgo'
      Size = 30
    end
    object ADODsCamposAdicionalesCondicionEnTexto: TStringField
      DisplayLabel = 'Condicion en texto'
      FieldName = 'CondicionEnTexto'
      Size = 100
    end
    object ADODsCamposAdicionalesPonderacionExtra: TFloatField
      DisplayLabel = 'Ponderaci'#243'n extra'
      FieldName = 'PonderacionExtra'
    end
  end
  object ADODsRelacionPreguntas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMRRelacionPregunta, IdMRPaquetePregunta,'#13#10' IdMRPregunta' +
      ', IdMRPreguntaOpcion, ValorCondicionante '#13#10'from MRRelacionesPreg' +
      'untas'
    DataSource = DSPaquetePregunta
    IndexFieldNames = 'IdMRPaquetePregunta'
    MasterFields = 'IdMRPaquetePregunta'
    Parameters = <>
    Left = 240
    Top = 456
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
      DisplayLabel = 'Valor condicionante'
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
      DisplayLabel = 'Paquete'
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
  object DSPaquetePregunta: TDataSource
    DataSet = ADOdsPaquetesPreguntas
    Left = 356
    Top = 384
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 504
    Top = 400
  end
  object ADOQryInsertaPreguntas: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdMRCuestAplica1'
        Size = -1
        Value = Null
      end
      item
        Name = 'IdMRCuestAplica2'
        Size = -1
        Value = Null
      end
      item
        Name = 'IDMRCuestionario'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PF'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'if not exists(select * from MRCuestionarioAplicadoRespuestas whe' +
        're idMRCuestionarioAplicado= :IdMRCuestAplica1) '
      ''
      
        'insert into MRCuestionarioAplicadoRespuestas (idMRCuestionarioAp' +
        'licado,IdMRPregunta)'
      ''
      
        'Select :IdMRCuestAplica2,IdMRPregunta from MRPreguntas where IdM' +
        'RCuestionario=:IDMRCuestionario'
      ' and'
      
        '(( AplicaaPersonaFisica =1 and 1=:PF) or (AplicaaPersonaMoral=1 ' +
        'and 1=:PM))'
      ''
      'order by orden')
    Left = 56
    Top = 464
  end
  object ADOQryEvaluacionRespuestas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMRCuestionarioAplicado'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select CAr.*, P.Pregunta,  PO.Opcion, Po.Ponderacion, Po.ReqText' +
        'oAdi,'
      
        ' Po.TablaExterna, Po.CondicionTablaExt, Po.EvaluaCamposAdicional' +
        'es'
      ' from MRCuestionarioAplicadoRespuestas CAR'
      'inner join MRPreguntas P on P.IdMRPregunta=CAR.IdMRPregunta'
      
        'inner Join MRPreguntasOpciones PO on PO.IdMRPreguntaOpcion=CAR.I' +
        'dMRPreguntaOpcionResp'
      'where IdMRCuestionarioAplicado=:IdMRCuestionarioAplicado')
    Left = 64
    Top = 560
    object ADOQryEvaluacionRespuestasIdMRCuestionarioAplicadoRespuesta: TAutoIncField
      FieldName = 'IdMRCuestionarioAplicadoRespuesta'
      ReadOnly = True
    end
    object ADOQryEvaluacionRespuestasIdMRCuestionarioAplicado: TIntegerField
      FieldName = 'IdMRCuestionarioAplicado'
    end
    object ADOQryEvaluacionRespuestasIdMRPregunta: TIntegerField
      FieldName = 'IdMRPregunta'
    end
    object ADOQryEvaluacionRespuestasIdMRPreguntaOpcionResp: TIntegerField
      FieldName = 'IdMRPreguntaOpcionResp'
    end
    object ADOQryEvaluacionRespuestasOtroTexto: TStringField
      DisplayLabel = 'Otro'
      FieldName = 'OtroTexto'
      Size = 300
    end
    object ADOQryEvaluacionRespuestasPregunta: TStringField
      FieldName = 'Pregunta'
      Size = 300
    end
    object ADOQryEvaluacionRespuestasOpcion: TStringField
      DisplayLabel = 'Opci'#243'n'
      FieldName = 'Opcion'
      Size = 200
    end
    object ADOQryEvaluacionRespuestasPonderacion: TFloatField
      DisplayLabel = 'Ponderaci'#243'n'
      FieldName = 'Ponderacion'
    end
    object ADOQryEvaluacionRespuestasReqTextoAdi: TBooleanField
      DisplayLabel = 'Requiere texto adicional'
      FieldName = 'ReqTextoAdi'
    end
    object ADOQryEvaluacionRespuestasTablaExterna: TStringField
      DisplayLabel = 'Tabla externa'
      FieldName = 'TablaExterna'
      Size = 200
    end
    object ADOQryEvaluacionRespuestasCondicionTablaExt: TStringField
      DisplayLabel = 'Condici'#243'n de tabla externa'
      FieldName = 'CondicionTablaExt'
      Size = 300
    end
    object ADOQryEvaluacionRespuestasEvaluaCamposAdicionales: TBooleanField
      DisplayLabel = 'Evalua campos adicionales'
      FieldName = 'EvaluaCamposAdicionales'
    end
  end
  object ADOQryCamposAdicionales: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    DataSource = dsEvaluacionREspuestas
    Parameters = <
      item
        Name = 'IDMRPreguntaOpcionResp'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select TAC.* , po.CAmpoaDesplegar,   PO.TablaExterna,'
      ' po.CondicionTablaExt,po.Ponderacion '
      'from MRTablasAsociadasCampos TAC '
      
        'inner join MRPreguntasOpciones PO On po.IdMRPreguntaOpcion=TAC.I' +
        'dMRPreguntaOpcion'
      ' where TAC.IdMRPreguntaOpcion=:IDMRPreguntaOpcionResp')
    Left = 360
    Top = 560
    object ADOQryCamposAdicionalesIdMRTablaAsociadoCampo: TAutoIncField
      FieldName = 'IdMRTablaAsociadoCampo'
      ReadOnly = True
    end
    object ADOQryCamposAdicionalesIdMRPreguntaOpcion: TIntegerField
      FieldName = 'IdMRPreguntaOpcion'
    end
    object ADOQryCamposAdicionalesCampoEspecialAltoRiesgo: TStringField
      FieldName = 'CampoEspecialAltoRiesgo'
      Size = 30
    end
    object ADOQryCamposAdicionalesCondicionEnTexto: TStringField
      DisplayLabel = 'Condici'#243'n ent exto'
      FieldName = 'CondicionEnTexto'
      Size = 100
    end
    object ADOQryCamposAdicionalesPonderacionExtra: TFloatField
      DisplayLabel = 'Ponderac'#243'n extra'
      FieldName = 'PonderacionExtra'
    end
    object ADOQryCamposAdicionalesTablaExterna: TStringField
      DisplayLabel = 'Tabla externa'
      FieldName = 'TablaExterna'
      Size = 200
    end
    object ADOQryCamposAdicionalesCondicionTablaExt: TStringField
      DisplayLabel = 'Condicion tabla externa'
      FieldName = 'CondicionTablaExt'
      Size = 300
    end
    object ADOQryCamposAdicionalesPonderacion: TFloatField
      DisplayLabel = 'Ponderaci'#243'n'
      FieldName = 'Ponderacion'
    end
    object ADOQryCamposAdicionalesCAmpoaDesplegar: TStringField
      DisplayLabel = 'Campo a desplegar'
      FieldName = 'CAmpoaDesplegar'
      Size = 30
    end
  end
  object dsEvaluacionREspuestas: TDataSource
    DataSet = ADOQryEvaluacionRespuestas
    Left = 212
    Top = 560
  end
  object ADOQryCalificacionesRiesgos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDMRCuestionario'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersonaTipo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Valor1'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'Valor2'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select * from MRCalificacionesRiesgos '
      'where IdMRCuestionario=:IDMRCuestionario'
      ' and IdPersonaTipo=:IdPersonaTipo'
      'and ValorMinimo<=:Valor1 and'
      ' ((valormaximo >=:Valor2) or (valormaximo is null))'
      '')
    Left = 704
    Top = 512
  end
  object ppRptCuestionarioAplicado: TppReport
    AutoStop = False
    DataPipeline = DBPplnPreguntasRespuestas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpVertical
    PrinterSetup.PaperName = 'Letter (8,5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Desarrollo\SOFOM\Reportes\rptMRCuestionarioAplicado.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = True
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 624
    Top = 48
    Version = '15.0'
    mmColumnWidth = 0
    DataPipelineName = 'DBPplnPreguntasRespuestas'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 55563
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 26194
        mmLeft = 17992
        mmTop = 28840
        mmWidth = 159015
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clGrayText
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4762
        mmLeft = 22754
        mmTop = 30163
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Cliente'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4763
        mmLeft = 40481
        mmTop = 30163
        mmWidth = 128852
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clGrayText
        Caption = 'Cuestionario Aplicado para Matriz de Riesgo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7673
        mmLeft = 33867
        mmTop = 10848
        mmWidth = 135467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clGrayText
        Caption = 'Versi'#243'n Cuestionario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4762
        mmLeft = 22754
        mmTop = 43392
        mmWidth = 40482
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'VersionCuestionario'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4763
        mmLeft = 71702
        mmTop = 43387
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clGrayText
        Caption = 'Ponderaci'#243'n Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4762
        mmLeft = 104511
        mmTop = 43392
        mmWidth = 35454
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'PonderacionTotal'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4763
        mmLeft = 159279
        mmTop = 43387
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clGrayText
        Caption = 'Fecha aplicaci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4762
        mmLeft = 22754
        mmTop = 37042
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        DataField = 'Fecha'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4762
        mmLeft = 64029
        mmTop = 37042
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clGrayText
        Caption = 'Fecha Vencimiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4762
        mmLeft = 104511
        mmTop = 37042
        mmWidth = 36512
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        DataField = 'FechaVencimiento'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4762
        mmLeft = 148167
        mmTop = 37042
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clGrayText
        Caption = 'Tipo Persona:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4762
        mmLeft = 69586
        mmTop = 20638
        mmWidth = 26193
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'TipoPersona'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4762
        mmLeft = 98161
        mmTop = 20638
        mmWidth = 26987
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clGrayText
        Caption = 'Riesgo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 104511
        mmTop = 49477
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Riesgo'
        DataPipeline = DBPplnCuestionario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4763
        mmLeft = 140759
        mmTop = 49477
        mmWidth = 28575
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16140
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Pregunta'
        DataPipeline = DBPplnPreguntasRespuestas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPplnPreguntasRespuestas'
        mmHeight = 4763
        mmLeft = 19844
        mmTop = 1853
        mmWidth = 165894
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Respuesta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 19844
        mmTop = 8731
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'opcion'
        DataPipeline = DBPplnPreguntasRespuestas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPplnPreguntasRespuestas'
        mmHeight = 4763
        mmLeft = 45773
        mmTop = 8731
        mmWidth = 127000
        BandType = 4
        LayerName = Foreground
      end
      object ppLblEspecificar: TppLabel
        UserName = 'LblEspecificar'
        Caption = 'Especificar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        Visible = False
        mmHeight = 4498
        mmLeft = 0
        mmTop = 8731
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTxtOtro: TppDBText
        UserName = 'DBTxtOtro'
        DataField = 'OtroTexto'
        DataPipeline = DBPplnPreguntasRespuestas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPplnPreguntasRespuestas'
        mmHeight = 4763
        mmLeft = 72761
        mmTop = 8731
        mmWidth = 112977
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'IdMRPregunta'
        DataPipeline = DBPplnPreguntasRespuestas
        DisplayFormat = '0 -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DBCalcType = dcCount
        DataPipelineName = 'DBPplnPreguntasRespuestas'
        mmHeight = 4763
        mmLeft = 6879
        mmTop = 1853
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBPplnCuestionario: TppDBPipeline
    DataSource = dsMaster
    UserName = 'DBPplnCuestionario'
    Left = 624
    Top = 112
  end
  object DBPplnPreguntasRespuestas: TppDBPipeline
    DataSource = DSRespuestasCuestionario
    UserName = 'DBPplnPreguntasRespuestas'
    Left = 736
    Top = 112
    MasterDataPipelineName = 'DBPplnCuestionario'
  end
  object DSRespuestasCuestionario: TDataSource
    DataSet = ADODSRespuestasCuestionario
    Left = 316
    Top = 128
  end
end
