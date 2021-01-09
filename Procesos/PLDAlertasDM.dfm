inherited dmPLDAlertas: TdmPLDAlertas
  OldCreateOrder = True
  Width = 531
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT        PLDAlertas.IdPLDAlerta, PLDAlertas.IdPersona, PLDA' +
      'lertas.IdPago, PLDAlertas.IdPLDOperacionTipo, PLDAlertas.IdPLDAl' +
      'ertaTipo, PLDAlertas.IdPLDAlertaEstatus, dbo.GetAnexoIdentificad' +
      'or(Pagos.IdAnexo) AS Contrato, '#13#10'                         PLDAle' +
      'rtas.PeriodoMes, PLDAlertas.PeriodoAnio, PLDAlertas.SoloEfectivo' +
      ', Pagos.FechaPago, MetodosPago.Descripcion AS MetodoPago, PLDAle' +
      'rtas.FechaDeteccion, PLDAlertas.Total, PLDAlertas.TotalUSD, '#13#10'  ' +
      '                       PLDAlertas.TotalPagos, PLDAlertas.Descrip' +
      'cion, PLDAlertas.Razon, PLDAlertas.R24, PLDAlertas.CapturaManual' +
      #13#10'FROM            PLDAlertas LEFT OUTER JOIN'#13#10'                  ' +
      '       Pagos ON PLDAlertas.IdPago = Pagos.IdPago LEFT OUTER JOIN' +
      #13#10'                         MetodosPago ON Pagos.IdMetodoPago = M' +
      'etodosPago.IdMetodoPago'#13#10
    Left = 32
    object adodsMasterIdPLDAlerta: TAutoIncField
      FieldName = 'IdPLDAlerta'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
      OnChange = adodsMasterIdPersonaChange
    end
    object adodsMasterIdPago: TIntegerField
      FieldName = 'IdPago'
      Visible = False
      OnChange = adodsMasterIdPagoChange
    end
    object adodsMasterIdPLDOperacionTipo: TIntegerField
      FieldName = 'IdPLDOperacionTipo'
      Visible = False
    end
    object adodsMasterIdPLDAlertaTipo: TIntegerField
      FieldName = 'IdPLDAlertaTipo'
      Visible = False
    end
    object adodsMasterIdPLDAlertaEstatus: TIntegerField
      FieldName = 'IdPLDAlertaEstatus'
      Visible = False
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Persona'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterContrato: TStringField
      FieldName = 'Contrato'
      ReadOnly = True
      Size = 15
    end
    object adodsMasterPeriodoMes: TIntegerField
      DisplayLabel = 'Periodo mes'
      FieldName = 'PeriodoMes'
    end
    object adodsMasterPeriodoAnio: TIntegerField
      DisplayLabel = 'Periodo a'#241'o'
      FieldName = 'PeriodoAnio'
    end
    object adodsMasterSoloEfectivo: TBooleanField
      DisplayLabel = 'Solo efectivo'
      FieldName = 'SoloEfectivo'
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fecha de pago'
      FieldName = 'FechaPago'
    end
    object adodsMasterMetodoPago: TStringField
      DisplayLabel = 'Metodo de pago'
      FieldName = 'MetodoPago'
      Size = 50
    end
    object adodsMasterFechaDeteccion: TDateTimeField
      DisplayLabel = 'Fechade detecci'#243'n'
      FieldName = 'FechaDeteccion'
    end
    object adodsMasterOperacionTipo: TStringField
      DisplayLabel = 'Tipo de operaci'#243'n'
      FieldKind = fkLookup
      FieldName = 'OperacionTipo'
      LookupDataSet = adodsOperacionTipo
      LookupKeyFields = 'IdPLDOperacionTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDOperacionTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipo
      LookupKeyFields = 'IdPLDAlertaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDAlertaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdPLDAlertaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDAlertaEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalUSD: TFMTBCDField
      DisplayLabel = 'Total USD'
      FieldName = 'TotalUSD'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotalPagos: TIntegerField
      DisplayLabel = 'Total de pagos'
      FieldName = 'TotalPagos'
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 4000
    end
    object adodsMasterRazon: TStringField
      DisplayLabel = 'Raz'#243'n'
      FieldName = 'Razon'
      Size = 4000
    end
    object adodsMasterR24: TBooleanField
      FieldName = 'R24'
      Visible = False
    end
    object adodsMasterCapturaManual: TBooleanField
      FieldName = 'CapturaManual'
    end
  end
  inherited ActionList: TActionList
    object actGenerarAlertas: TAction
      Caption = 'Generar'
      Hint = 'Generar las alertas del periodo'
      ImageIndex = 13
      OnExecute = actGenerarAlertasExecute
    end
    object actGenerarArchivo: TAction
      Caption = 'Archivo'
      Hint = 'Generar el archivo'
      ImageIndex = 14
      OnExecute = actGenerarArchivoExecute
    end
    object actAbrirLookup: TAction
      Caption = 'actAbrirLookup'
      OnExecute = actAbrirLookupExecute
    end
  end
  object adodsOperacionTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDOperacionTipo, Descripcion from PLDOperacionesTipos'
    Parameters = <>
    Left = 32
    Top = 72
  end
  object adodsTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDAlertaTipo, Descripcion from PLDAlertasTipos'
    Parameters = <>
    Left = 32
    Top = 128
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDAlertaEstatus, Descripcion from PLDAlertasEstatus'
    Parameters = <>
    Left = 32
    Top = 184
  end
  object adopGenPLDAlertas: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenPLDAlertas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@PeriodoMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PeriodoAnio'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 328
    Top = 160
  end
  object adoqPLDAlertas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPLDAlertaTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PeriodoFactor'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PeriodoAnio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM v_ReportePLDAlertas'
      'WHERE IdPLDAlertaEstatus = 4'
      
        'AND IdPLDAlertaTipo = :IdPLDAlertaTipo AND PeriodoMes = :Periodo' +
        'Factor AND PeriodoAnio = :PeriodoAnio')
    Left = 328
    Top = 224
    object adoqPLDAlertasIdPLDAlerta: TIntegerField
      FieldName = 'IdPLDAlerta'
    end
    object adoqPLDAlertasIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adoqPLDAlertasIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object adoqPLDAlertasC01_TIPO_DE_REPORTE: TStringField
      FieldName = 'C01_TIPO_DE_REPORTE'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC02_PERIODO_DEL_REPORTE: TStringField
      FieldName = 'C02_PERIODO_DEL_REPORTE'
      ReadOnly = True
      Size = 8
    end
    object adoqPLDAlertasC03_FOLIO: TStringField
      FieldName = 'C03_FOLIO'
      ReadOnly = True
      Size = 6
    end
    object adoqPLDAlertasC04_ORGANO_SUPERVISOR: TStringField
      FieldName = 'C04_ORGANO_SUPERVISOR'
      ReadOnly = True
      Size = 6
    end
    object adoqPLDAlertasC05_CLAVE_INTITUCION: TStringField
      FieldName = 'C05_CLAVE_INTITUCION'
      ReadOnly = True
      Size = 7
    end
    object adoqPLDAlertasC06_LOCALIDAD: TStringField
      FieldName = 'C06_LOCALIDAD'
      ReadOnly = True
      Size = 8
    end
    object adoqPLDAlertasC07_CP_SUCURSAL: TStringField
      FieldName = 'C07_CP_SUCURSAL'
      ReadOnly = True
      Size = 5
    end
    object adoqPLDAlertasC08_TIPO_OPERACION: TStringField
      FieldName = 'C08_TIPO_OPERACION'
      ReadOnly = True
      Size = 2
    end
    object adoqPLDAlertasC09_INSTRUMENTO_MONETARIO: TStringField
      FieldName = 'C09_INSTRUMENTO_MONETARIO'
      ReadOnly = True
      Size = 2
    end
    object adoqPLDAlertasC10_CONTRATO: TStringField
      FieldName = 'C10_CONTRATO'
      ReadOnly = True
      Size = 15
    end
    object adoqPLDAlertasC11_MONTO: TFMTBCDField
      FieldName = 'C11_MONTO'
      ReadOnly = True
      Precision = 18
      Size = 6
    end
    object adoqPLDAlertasC12_MONEDA: TStringField
      FieldName = 'C12_MONEDA'
      ReadOnly = True
      Size = 3
    end
    object adoqPLDAlertasC13_FECHA_OPERACION: TStringField
      FieldName = 'C13_FECHA_OPERACION'
      ReadOnly = True
      Size = 8
    end
    object adoqPLDAlertasC14_FECHA_DETECCION: TStringField
      FieldName = 'C14_FECHA_DETECCION'
      ReadOnly = True
      Size = 8
    end
    object adoqPLDAlertasC15_NACIONALIDAD: TStringField
      FieldName = 'C15_NACIONALIDAD'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC16_TIPO_DE_PERSONA: TStringField
      FieldName = 'C16_TIPO_DE_PERSONA'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC17_RAZON_SOCIAL: TStringField
      FieldName = 'C17_RAZON_SOCIAL'
      ReadOnly = True
      Size = 125
    end
    object adoqPLDAlertasC18_NOMBRE: TStringField
      FieldName = 'C18_NOMBRE'
      ReadOnly = True
      Size = 60
    end
    object adoqPLDAlertasC19_APELLIDO_PATERNO: TStringField
      FieldName = 'C19_APELLIDO_PATERNO'
      ReadOnly = True
      Size = 60
    end
    object adoqPLDAlertasC20_APELIIDO_MATERNO: TStringField
      FieldName = 'C20_APELIIDO_MATERNO'
      ReadOnly = True
      Size = 30
    end
    object adoqPLDAlertasC21_RFC: TStringField
      FieldName = 'C21_RFC'
      ReadOnly = True
      Size = 13
    end
    object adoqPLDAlertasC22_CURP: TStringField
      FieldName = 'C22_CURP'
      ReadOnly = True
      Size = 18
    end
    object adoqPLDAlertasC23_FECHA_NACIMIENTO_CONSTITUCION: TStringField
      FieldName = 'C23_FECHA_NACIMIENTO_CONSTITUCION'
      ReadOnly = True
      Size = 8
    end
    object adoqPLDAlertasC24_DOMICILIO: TStringField
      FieldName = 'C24_DOMICILIO'
      ReadOnly = True
      Size = 60
    end
    object adoqPLDAlertasC25_COLONIA: TStringField
      FieldName = 'C25_COLONIA'
      ReadOnly = True
      Size = 30
    end
    object adoqPLDAlertasC26_POBLACION: TStringField
      FieldName = 'C26_POBLACION'
      ReadOnly = True
      Size = 8
    end
    object adoqPLDAlertasC27_TELEFONO: TStringField
      FieldName = 'C27_TELEFONO'
      ReadOnly = True
      Size = 40
    end
    object adoqPLDAlertasC28_ACTIVADAD_ECONOMICA: TStringField
      FieldName = 'C28_ACTIVADAD_ECONOMICA'
      ReadOnly = True
      Size = 7
    end
    object adoqPLDAlertasC29_CONSECUTIVO_RELACIONADO: TStringField
      FieldName = 'C29_CONSECUTIVO_RELACIONADO'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC30_CONTRATO_RELACIONADO: TStringField
      FieldName = 'C30_CONTRATO_RELACIONADO'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC31_CLAVE_INTITUCION_RELACIONADO: TStringField
      FieldName = 'C31_CLAVE_INTITUCION_RELACIONADO'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC32_NOMBRE_RELACIONADO: TStringField
      FieldName = 'C32_NOMBRE_RELACIONADO'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC33_PATERNO__RELACIONADO: TStringField
      FieldName = 'C33_PATERNO__RELACIONADO'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC34_MATERNO_RELACIONADO: TStringField
      FieldName = 'C34_MATERNO_RELACIONADO'
      ReadOnly = True
      Size = 1
    end
    object adoqPLDAlertasC35_DESCRIPCION: TStringField
      FieldName = 'C35_DESCRIPCION'
      ReadOnly = True
      Size = 4000
    end
    object adoqPLDAlertasC36_RAZON: TStringField
      FieldName = 'C36_RAZON'
      ReadOnly = True
      Size = 4000
    end
  end
  object adoqConfiguracion: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPLDAlertaTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT CAST(PLDAlertasTipos.Identificador AS varchar(1)) AS PLDA' +
        'lertaTipo, RIGHT('#39'000000'#39' + Configuraciones.PLDCodigoCASFIM, 6) ' +
        'AS PLDCodigoCASFIM, Configuraciones.'
      'PLDArchivoRuta, PLDArchivoExtension'
      'FROM PLDAlertasTipos CROSS JOIN Configuraciones'
      'WHERE PLDAlertasTipos.IdPLDAlertaTipo = :IdPLDAlertaTipo')
    Left = 328
    Top = 288
    object adoqConfiguracionPLDAlertaTipo: TStringField
      FieldName = 'PLDAlertaTipo'
      ReadOnly = True
      Size = 1
    end
    object adoqConfiguracionPLDCodigoCASFIM: TStringField
      FieldName = 'PLDCodigoCASFIM'
      ReadOnly = True
      Size = 6
    end
    object adoqConfiguracionPLDArchivoRuta: TStringField
      FieldName = 'PLDArchivoRuta'
      Size = 255
    end
    object adoqConfiguracionPLDArchivoExtension: TStringField
      FieldName = 'PLDArchivoExtension'
      Size = 5
    end
  end
  object adcUpdPLDAlertas: TADOCommand
    CommandText = 
      'UPDATE PLDAlertas SET IdPLDAlertaEstatus = 5'#13#10'WHERE IdPLDAlerta=' +
      ' :IdPLDAlerta'
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdPLDAlerta'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 416
    Top = 160
  end
  object daMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    OnDataChange = daMasterDataChange
    Left = 128
    Top = 16
  end
  object adopSetPLDAlertas: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetPLDAlertas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPersona'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPLDOperacionTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPLDAlertaTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPLDAlertaEstatus'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PeriodoMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PeriodoAnio'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SoloEfectivo'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@FechaDeteccion'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Total'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@TotalUSD'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@TotalPagos'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Descripcion'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@Razon'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@R24'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IdPLDAlerta'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 424
    Top = 280
  end
  object dxmdAlerta: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 424
    Top = 216
    object dxmdAlertaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object dxmdAlertaMensaje: TStringField
      FieldName = 'Mensaje'
      Size = 4000
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdPersona, RazonSocial AS Persona'#13#10'FROM           ' +
      ' Personas'#13#10'WHERE        (IdRolTipo = 3)'#13#10'ORDER BY Persona'#13#10
    Parameters = <>
    Left = 136
    Top = 72
  end
  object adodsPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdPago, IdPersonaCliente, IdAnexo, IdMetodoPago, I' +
      'dMonedaOrigen, dbo.GetAnexoIdentificador(IdAnexo) AS Contrato, F' +
      'echaPago, YEAR(FechaPago) AS Anio, MONTH(FechaPago) AS Mes, Impo' +
      'rte, USD, ImporteUSD, '#13#10'                         1 AS TotalPagos' +
      ', CONVERT(bit, CASE WHEN IdMetodoPago = 3 THEN 1 ELSE 0 END) AS ' +
      'Efectivo'#13#10'FROM            v_PagosImportes'#13#10'WHERE        IdPerson' +
      'aCliente = :IdPersona'#13#10
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 136
    Top = 128
    object adodsPagosIdPago: TAutoIncField
      FieldName = 'IdPago'
      ReadOnly = True
    end
    object adodsPagosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsPagosIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object adodsPagosIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsPagosIdMonedaOrigen: TIntegerField
      FieldName = 'IdMonedaOrigen'
    end
    object adodsPagosContrato: TStringField
      FieldName = 'Contrato'
      ReadOnly = True
      Size = 15
    end
    object adodsPagosFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adodsPagosAnio: TIntegerField
      FieldName = 'Anio'
      ReadOnly = True
    end
    object adodsPagosMes: TIntegerField
      FieldName = 'Mes'
      ReadOnly = True
    end
    object adodsPagosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsPagosUSD: TFMTBCDField
      FieldName = 'USD'
      ReadOnly = True
      Precision = 16
    end
    object adodsPagosImporteUSD: TFMTBCDField
      FieldName = 'ImporteUSD'
      ReadOnly = True
      Precision = 38
      Size = 18
    end
    object adodsPagosTotalPagos: TIntegerField
      FieldName = 'TotalPagos'
      ReadOnly = True
    end
    object adodsPagosEfectivo: TBooleanField
      FieldName = 'Efectivo'
      ReadOnly = True
    end
  end
  object dsPersonas: TDataSource
    DataSet = adodsPersonas
    Left = 208
    Top = 72
  end
end
