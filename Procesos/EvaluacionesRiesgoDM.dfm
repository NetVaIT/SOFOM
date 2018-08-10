inherited dmEvaluacionRiesgo: TdmEvaluacionRiesgo
  Height = 695
  Width = 990
  inherited adodsMaster: TADODataSet
    Active = True
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
      DisplayLabel = 'Ponderaci'#243'n Total'
      FieldName = 'PonderacionTotal'
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object adodsMasterFechaVencimiento: TDateTimeField
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
      DisplayLabel = 'Versi'#243'n Cuestionario'
      FieldKind = fkLookup
      FieldName = 'VersionCuestionario'
      LookupDataSet = ADOdsCuestionarios
      LookupKeyFields = 'IdMRCuestionario'
      LookupResultField = 'Version'
      KeyFields = 'IdMRCuestionario'
      Lookup = True
    end
    object adodsMastermesesVen: TIntegerField
      FieldKind = fkLookup
      FieldName = 'mesesVen'
      LookupDataSet = ADOdsCuestionarios
      LookupKeyFields = 'IdMRCuestionario'
      LookupResultField = 'MesesVigenciaAplicacion'
      KeyFields = 'IdMRCuestionario'
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
      Hint = 'Aplicar Cuestionario'
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
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial AS Cliente,  IdPersonaTipo from Pe' +
      'rsonas'#13#10'WHERE IdRolTipo = 3'#13#10'order by RazonSocial '
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
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdMRPregunta, IdMRCuestionario, Pregunta, '#13#10'Aplica' +
      'aPersonaFisica, AplicaaPersonaMoral, Condicionada, EvaluaARDirec' +
      'to'#13#10'FROM            MRPreguntas'#13#10'Where IdMRCuestionario=:IdMRCue' +
      'stionario'#13#10'order by Orden'
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
    Active = True
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
    Active = True
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
    AfterPost = ADODSRespuestasCuestionarioAfterPost
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
  end
  object ADOdsPaquetesPreguntas: TADODataSet
    Active = True
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
      DisplayLabel = 'Descripci'#243'n Paquete'
      FieldName = 'DescripcionPaquete'
      Size = 300
    end
    object ADOdsPaquetesPreguntasPonderacion_Extra: TFloatField
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
      FieldName = 'OtroTexto'
      Size = 300
    end
    object ADOQryEvaluacionRespuestasPregunta: TStringField
      FieldName = 'Pregunta'
      Size = 300
    end
    object ADOQryEvaluacionRespuestasOpcion: TStringField
      FieldName = 'Opcion'
      Size = 200
    end
    object ADOQryEvaluacionRespuestasPonderacion: TFloatField
      FieldName = 'Ponderacion'
    end
    object ADOQryEvaluacionRespuestasReqTextoAdi: TBooleanField
      FieldName = 'ReqTextoAdi'
    end
    object ADOQryEvaluacionRespuestasTablaExterna: TStringField
      FieldName = 'TablaExterna'
      Size = 200
    end
    object ADOQryEvaluacionRespuestasCondicionTablaExt: TStringField
      FieldName = 'CondicionTablaExt'
      Size = 300
    end
    object ADOQryEvaluacionRespuestasEvaluaCamposAdicionales: TBooleanField
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
      FieldName = 'CondicionEnTexto'
      Size = 100
    end
    object ADOQryCamposAdicionalesPonderacionExtra: TFloatField
      FieldName = 'PonderacionExtra'
    end
    object ADOQryCamposAdicionalesTablaExterna: TStringField
      FieldName = 'TablaExterna'
      Size = 200
    end
    object ADOQryCamposAdicionalesCondicionTablaExt: TStringField
      FieldName = 'CondicionTablaExt'
      Size = 300
    end
    object ADOQryCamposAdicionalesPonderacion: TFloatField
      FieldName = 'Ponderacion'
    end
    object ADOQryCamposAdicionalesCAmpoaDesplegar: TStringField
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
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
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 23019
        mmTop = 9790
        mmWidth = 14023
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
        mmTop = 9790
        mmWidth = 155311
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Cuestionario Aplicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7673
        mmLeft = 54504
        mmTop = 2117
        mmWidth = 75936
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'VersionCuestionario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 24077
        mmTop = 16404
        mmWidth = 38894
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
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4763
        mmLeft = 64029
        mmTop = 16404
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'PonderacionTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 25929
        mmTop = 23019
        mmWidth = 33602
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
        Transparent = True
        DataPipelineName = 'DBPplnCuestionario'
        mmHeight = 4763
        mmLeft = 66411
        mmTop = 23019
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 99219
        mmTop = 17992
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Fecha'
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
        mmLeft = 112977
        mmTop = 17992
        mmWidth = 58208
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
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
    object DBPplnCuestionarioppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdMRCuestionarioAplicado'
      FieldName = 'IdMRCuestionarioAplicado'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object DBPplnCuestionarioppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdMRCuestionario'
      FieldName = 'IdMRCuestionario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DBPplnCuestionarioppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDPersona'
      FieldName = 'IDPersona'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object DBPplnCuestionarioppField4: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object DBPplnCuestionarioppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PonderacionTotal'
      FieldName = 'PonderacionTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object DBPplnCuestionarioppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'IdUsuario'
      FieldName = 'IdUsuario'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object DBPplnCuestionarioppField7: TppField
      FieldAlias = 'FechaVencimiento'
      FieldName = 'FechaVencimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object DBPplnCuestionarioppField8: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 200
      DisplayWidth = 200
      Position = 7
    end
    object DBPplnCuestionarioppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VersionCuestionario'
      FieldName = 'VersionCuestionario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object DBPplnCuestionarioppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'mesesVen'
      FieldName = 'mesesVen'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
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
