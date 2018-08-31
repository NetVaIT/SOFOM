inherited dmConfiguracion: TdmConfiguracion
  OldCreateOrder = True
  Height = 468
  Width = 449
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdPais, IdMoneda, PorcentajeImpuestoIVA, RutaBaseF' +
      'acturas, RutaBasePagos, UltimoFolioPago, UltimaSeriePago, BCClav' +
      'eInstitucion, BCInstitucion, BCTipo, PLDPerfilTransaccional, PLD' +
      'InicioOperaciones, PLDCodigoCASFIM, '#13#10'                         P' +
      'LDSupervisorCNBV, PLDArchivoRuta, PLDArchivoExtension, PLDMontoR' +
      'elevante, PLDLocalidad, PLDCodigoPostal'#13#10'FROM            Configu' +
      'raciones'
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterPais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterPorcentajeImpuestoIVA: TBCDField
      DisplayLabel = 'Porcentaje impuesto IVA'
      FieldName = 'PorcentajeImpuestoIVA'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 19
    end
    object adodsMasterRutaBaseFacturas: TStringField
      DisplayLabel = 'Ruta Base para Facturas'
      FieldName = 'RutaBaseFacturas'
      Size = 250
    end
    object adodsMasterRutaBasePagos: TStringField
      DisplayLabel = 'Ruta Base para pagos'
      FieldName = 'RutaBasePagos'
      Size = 250
    end
    object adodsMasterUltimoFolioPago: TIntegerField
      DisplayLabel = #218'ltimo folio de pago'
      FieldName = 'UltimoFolioPago'
    end
    object adodsMasterUltimaSeriePago: TStringField
      DisplayLabel = #218'ltima serie de pago'
      FieldName = 'UltimaSeriePago'
    end
    object adodsMasterBCClaveInstitucion: TStringField
      DisplayLabel = 'BC Clave instituci'#243'n'
      FieldName = 'BCClaveInstitucion'
      Size = 4
    end
    object adodsMasterBCInstitucion: TStringField
      DisplayLabel = 'BC Instituci'#243'n'
      FieldName = 'BCInstitucion'
      Size = 300
    end
    object adodsMasterBCTipo: TStringField
      DisplayLabel = 'BC Tipo'
      FieldName = 'BCTipo'
      Size = 3
    end
    object adodsMasterPLDPerfilTransaccional: TIntegerField
      FieldName = 'PLDPerfilTransaccional'
      Visible = False
    end
    object adodsMasterPLDInicioOperaciones: TStringField
      DisplayLabel = 'PLD Inicio operaciones'
      FieldName = 'PLDInicioOperaciones'
      Size = 10
    end
    object adodsMasterPLDCodigoCASFIM: TStringField
      DisplayLabel = 'PLD C'#243'digo CASFIM'
      FieldName = 'PLDCodigoCASFIM'
      Size = 10
    end
    object adodsMasterPLDSupervisorCNBV: TStringField
      DisplayLabel = 'PLD Supervisor CNBV'
      FieldName = 'PLDSupervisorCNBV'
      Size = 10
    end
    object adodsMasterPLDArchivoRuta: TStringField
      DisplayLabel = 'PLD Ruta archivo'
      FieldName = 'PLDArchivoRuta'
      Size = 255
    end
    object adodsMasterPLDArchivoExtension: TStringField
      DisplayLabel = 'PLD Extensi'#243'n archivo'
      FieldName = 'PLDArchivoExtension'
      Size = 5
    end
    object adodsMasterPLDMontoRelevante: TBCDField
      DisplayLabel = 'PLD Monto relevante'
      FieldName = 'PLDMontoRelevante'
      Precision = 19
    end
    object adodsMasterPLDLocalidad: TStringField
      DisplayLabel = 'PLD Localidad'
      FieldName = 'PLDLocalidad'
      Size = 10
    end
    object adodsMasterPLDCodigoPostal: TStringField
      DisplayLabel = 'PLD C'#243'digo postal'
      FieldName = 'PLDCodigoPostal'
      Size = 5
    end
  end
  object adoqGetIdPeriodoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetIdPeriodoActual() AS Valor')
    Left = 48
    Top = 152
    object adoqGetIdPeriodoActualValor: TIntegerField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adoqGetRutaBaseFacturas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBaseFacturas() AS Valor')
    Left = 48
    Top = 216
    object adoqGetRutaBaseFacturasValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Descripcion from Paises'
    Parameters = <>
    Left = 104
    Top = 16
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 112
    Top = 64
  end
  object adoqGetRutaBasePagos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT RutaBasePagos AS Valor FROM Configuraciones')
    Left = 48
    Top = 280
    object adoqGetRutaBasePagosValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adoqGetDiaPagoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CAST(DATEADD(day, 4,FechaInicio) AS DATETIME) AS Valor FR' +
        'OM Periodos WHERE IdPeriodo = dbo.GetIdPeriodoActual();')
    Left = 56
    Top = 352
    object adoqGetDiaPagoActualValor: TDateTimeField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adoqTipoCambio: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMoneda'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT dbo.GetCotizacionMoneda(:IdMoneda) AS Valor')
    Left = 216
    Top = 24
    object adoqTipoCambioValor: TFMTBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 16
    end
  end
  object adoqGetDateAux: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetDateAux() AS Valor')
    Left = 192
    Top = 152
    object adoqGetDateAuxValor: TDateTimeField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
end
