inherited dmBuroCredito: TdmBuroCredito
  OldCreateOrder = True
  object adoqConfiguracion: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT BCClaveInstitucion, BCInstitucion, BCTipo FROM Configurac' +
        'iones')
    Left = 48
    Top = 88
    object adoqConfiguracionBCClaveInstitucion: TStringField
      FieldName = 'BCClaveInstitucion'
      Size = 4
    end
    object adoqConfiguracionBCInstitucion: TStringField
      FieldName = 'BCInstitucion'
      Size = 300
    end
    object adoqConfiguracionBCTipo: TStringField
      FieldName = 'BCTipo'
      Size = 3
    end
  end
  object adoqCredito: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FechaV1'
        Size = -1
        Value = Null
      end
      item
        Name = 'FechaV2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Anexos.IdAnexo, Contratos.IdPersona, Personas.RFC, REPLAC' +
        'E(dbo.GetAnexoIdentificador(Anexos.IdAnexo),'#39'-'#39','#39#39') AS Contrato,' +
        ' '#39#39' AS ContratoAnterior, Anexos.Fecha AS FechaApertura, Anexos.P' +
        'lazo,'
      
        'BCTiposCreditos.Identificador AS TipoCredito, Anexos.MontoFinanc' +
        'iar AS SaldoInicial, '#39'001'#39' AS Moneda, Anexos.Plazo AS NumeroPago' +
        's, '#39'30'#39' AS FrecuenciaPagos, Anexos.PagoMensual AS ImportePagos,'
      
        'Pago.FechaPago AS FechaUltimoPago, Anexos.FechaTermino AS FechaR' +
        'eestructura, 0 AS PagoFinalMorosa, Anexos.FechaTermino AS FechaL' +
        'iquidacion, 0 AS Quita, 0 AS Dacion, 0 AS Quebranto, '#39'   '#39' AS Cl' +
        'aveObservacion, '#39' '#39' AS CreditoEspecial,'
      
        'I.FechaVencimiento AS FechaPrimerIncumplimiento, (Anexos.SaldoIn' +
        'soluto - Anexos.ValorResidual) AS SaldoInsoluto, Anexos.MontoFin' +
        'anciar AS CreditoMaximo, V.FechaVencimiento AS FechacarteraVenci' +
        'da'
      'FROM Anexos'
      'INNER JOIN Contratos ON Anexos.IdContrato = Contratos.IdContrato'
      'INNER JOIN Personas ON Contratos.IdPersona = Personas.IdPersona'
      
        'INNER JOIN ContratosTipos ON Contratos.IdContratoTipo = Contrato' +
        'sTipos.IdContratoTipo'
      
        'INNER JOIN BCTiposCreditos ON ContratosTipos.IdBCTipoCredito = B' +
        'CTiposCreditos.IdBCTipoCredito'
      
        'LEFT JOIN (SELECT IdAnexo, MAX(FechaPago) AS FechaPago FROM  vw_' +
        'AnexoAmortizacionCXCDiasRetraso GROUP BY IdAnexo) AS Pago ON Pag' +
        'o.IdAnexo = Anexos.IdAnexo'
      
        'LEFT JOIN (SELECT IdAnexo, MIN(FechaVencimiento) AS FechaVencimi' +
        'ento FROM vw_AnexoAmortizacionCXCDiasRetraso WHERE DiasRetraso >' +
        ' 0 AND FechaVencimiento <= :FechaV1 GROUP BY IdAnexo) AS I ON I.' +
        'IdAnexo = Anexos.IdAnexo'
      
        'LEFT JOIN (SELECT IdAnexo, MIN(FechaVencimiento) AS FechaVencimi' +
        'ento FROM vw_AnexoAmortizacionCXCDiasRetraso WHERE Saldo > 0.01 ' +
        'AND FechaVencimiento <= :FechaV2 GROUP BY IdAnexo) AS V ON V.IdA' +
        'nexo = Anexos.IdAnexo'
      'WHERE Anexos.IdAnexoEstatus = 3'
      'AND Anexos.SaldoInsoluto > 0')
    Left = 136
    Top = 88
    object adoqCreditoIdAnexo: TAutoIncField
      FieldName = 'IdAnexo'
      ReadOnly = True
    end
    object adoqCreditoIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adoqCreditoRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adoqCreditoContrato: TStringField
      FieldName = 'Contrato'
      ReadOnly = True
      Size = 25
    end
    object adoqCreditoContratoAnterior: TStringField
      FieldName = 'ContratoAnterior'
      ReadOnly = True
      Size = 1
    end
    object adoqCreditoFechaApertura: TDateTimeField
      FieldName = 'FechaApertura'
    end
    object adoqCreditoPlazo: TIntegerField
      FieldName = 'Plazo'
    end
    object adoqCreditoTipoCredito: TIntegerField
      FieldName = 'TipoCredito'
    end
    object adoqCreditoSaldoInicial: TFMTBCDField
      FieldName = 'SaldoInicial'
      Precision = 18
      Size = 6
    end
    object adoqCreditoMoneda: TStringField
      FieldName = 'Moneda'
      ReadOnly = True
      Size = 3
    end
    object adoqCreditoNumeroPagos: TIntegerField
      FieldName = 'NumeroPagos'
    end
    object adoqCreditoFrecuenciaPagos: TStringField
      FieldName = 'FrecuenciaPagos'
      ReadOnly = True
      Size = 2
    end
    object adoqCreditoImportePagos: TFMTBCDField
      FieldName = 'ImportePagos'
      Precision = 18
      Size = 6
    end
    object adoqCreditoFechaUltimoPago: TDateTimeField
      FieldName = 'FechaUltimoPago'
      ReadOnly = True
    end
    object adoqCreditoFechaReestructura: TDateTimeField
      FieldName = 'FechaReestructura'
      ReadOnly = True
    end
    object adoqCreditoPagoFinalMorosa: TIntegerField
      FieldName = 'PagoFinalMorosa'
      ReadOnly = True
    end
    object adoqCreditoFechaLiquidacion: TDateTimeField
      FieldName = 'FechaLiquidacion'
      ReadOnly = True
    end
    object adoqCreditoQuita: TIntegerField
      FieldName = 'Quita'
      ReadOnly = True
    end
    object adoqCreditoDacion: TIntegerField
      FieldName = 'Dacion'
      ReadOnly = True
    end
    object adoqCreditoQuebranto: TIntegerField
      FieldName = 'Quebranto'
      ReadOnly = True
    end
    object adoqCreditoClaveObservacion: TStringField
      FieldName = 'ClaveObservacion'
      ReadOnly = True
      Size = 3
    end
    object adoqCreditoCreditoEspecial: TStringField
      FieldName = 'CreditoEspecial'
      ReadOnly = True
      Size = 1
    end
    object adoqCreditoFechaPrimerIncumplimiento: TDateTimeField
      FieldName = 'FechaPrimerIncumplimiento'
      ReadOnly = True
    end
    object adoqCreditoSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      Precision = 18
      Size = 6
    end
    object adoqCreditoCreditoMaximo: TFMTBCDField
      FieldName = 'CreditoMaximo'
      Precision = 18
      Size = 6
    end
    object adoqCreditoFechacarteraVencida: TDateTimeField
      FieldName = 'FechacarteraVencida'
      ReadOnly = True
    end
  end
  object adoqPersonas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Personas.IdPersona, Personas.RFC, Personas.CURP, C' +
        'ASE WHEN IdPersonaTipo = 2 THEN dbo.BCTexto(RazonSocial) ELSE '#39#39 +
        ' END AS Empresa, CASE WHEN IdPersonaTipo = 2 THEN '#39#39' ELSE dbo.BC' +
        'Texto(Nombre) END AS PrimerNombre,'
      
        '                         CASE WHEN IdPersonaTipo = 2 THEN '#39#39' ELS' +
        'E dbo.BCTexto(SegundoNombre) END AS SegindoNombre, CASE WHEN IdP' +
        'ersonaTipo = 2 THEN '#39#39' ELSE dbo.BCTexto(ApellidoPaterno) END AS ' +
        'ApellidoPaterno,'
      
        '                         CASE WHEN IdPersonaTipo = 2 THEN '#39#39' ELS' +
        'E dbo.BCTexto(ApellidoMaterno) END AS ApellidoMaterno, Nacion.BC' +
        'Codigo AS Nacionalidad, BCCalificaciones.Identificador AS Califi' +
        'cacionCartera, '
      
        '                         BCActividades1.Identificador AS Activid' +
        'ad1, BCActividades2.Identificador AS Actividad2, BCActividades3.' +
        'Identificador AS Actividad3,'
      
        '                         Domicilios.Dirrecion1, Domicilios.Dirre' +
        'cion2, Domicilios.Colonia, Domicilios.Municipio, Domicilios.Ciud' +
        'ad, '
      
        '                         Domicilios.Estado, Domicilios.CodigoPos' +
        'tal, Telefonos.Lada+Telefonos.Telefono AS Telefono, '#39#39' AS Extens' +
        'ion,'
      
        #9#9#9#9#9#9' Faxes.Lada+Faxes.Telefono AS Fax, CASE Personas.IdPersona' +
        'Tipo WHEN 1 THEN 2 WHEN 2 THEN 1 ELSE 0 END AS TipoCliente, '#39#39' A' +
        'S EstadoPaisExtranjero, Domicilios.Pais'
      'FROM            Personas INNER JOIN'
      
        '                         Paises AS Nacion ON Personas.IdPais = N' +
        'acion.IdPais INNER JOIN'
      
        '                         BCCalificaciones ON Personas.IdBCCalifi' +
        'cacion = BCCalificaciones.IdBCCalificacion LEFT OUTER JOIN'
      
        '                         BCActividades AS BCActividades1 ON Pers' +
        'onas.IdBCActividad1 = BCActividades1.IdBCActividad LEFT OUTER JO' +
        'IN'
      
        '                         BCActividades AS BCActividades2 ON Pers' +
        'onas.IdBCActividad2 = BCActividades2.IdBCActividad LEFT OUTER JO' +
        'IN'
      
        '                         BCActividades AS BCActividades3 ON Pers' +
        'onas.IdBCActividad3 = BCActividades3.IdBCActividad LEFT OUTER JO' +
        'IN'
      
        #9#9#9#9#9#9' Telefonos ON Personas.IdPersona = Telefonos.IdPersona AND' +
        ' Telefonos.IdTelefonoTipo = 4 AND Telefonos.Predeterminado = 1 L' +
        'EFT OUTER JOIN'
      
        #9#9#9#9#9#9' Telefonos Faxes ON Personas.IdPersona = Faxes.IdPersona A' +
        'ND Telefonos.IdTelefonoTipo = 5 AND Telefonos.Predeterminado = 1'
      #9#9#9#9#9#9' LEFT OUTER JOIN'
      '('
      
        'SELECT       PersonasDomicilios.IdPersona, dbo.BCTexto(Domicilio' +
        's.Calle + '#39' '#39' + ISNULL(Domicilios.NoExterior,'#39#39') + '#39' '#39' + ISNULL(' +
        'Domicilios.NoInterior,'#39#39')) AS Dirrecion1, '#39#39' AS Dirrecion2, dbo.' +
        'BCTexto(Domicilios.Colonia) AS Colonia, dbo.BCTexto(Municipios.D' +
        'escripcion) AS Municipio, dbo.BCTexto(Domicilios.BCCiudad) AS Ci' +
        'udad, '
      
        '                         Estados.BCCodigo AS Estado, Paises.BCCo' +
        'digo AS Pais, Domicilios.CodigoPostal'
      'FROM            PersonasDomicilios INNER JOIN'
      
        '                         Domicilios ON PersonasDomicilios.IdDomi' +
        'cilio = Domicilios.IdDomicilio INNER JOIN'
      
        '                         Paises ON Domicilios.IdPais = Paises.Id' +
        'Pais INNER JOIN'
      
        '                         Estados ON Domicilios.IdEstado = Estado' +
        's.IdEstado INNER JOIN'
      
        '                         Municipios ON Domicilios.IdMunicipio = ' +
        'Municipios.IdMunicipio '
      'WHERE        (PersonasDomicilios.Predeterminado = 1)'
      ') Domicilios ON Personas.IdPersona = Domicilios.IdPersona'
      'WHERE Personas.IdPersona = :IdPersona')
    Left = 48
    Top = 144
    object adoqPersonasIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adoqPersonasRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adoqPersonasCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adoqPersonasEmpresa: TStringField
      FieldName = 'Empresa'
      ReadOnly = True
      Size = 300
    end
    object adoqPersonasPrimerNombre: TStringField
      FieldName = 'PrimerNombre'
      ReadOnly = True
      Size = 100
    end
    object adoqPersonasSegindoNombre: TStringField
      FieldName = 'SegindoNombre'
      ReadOnly = True
      Size = 1
    end
    object adoqPersonasApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      ReadOnly = True
      Size = 100
    end
    object adoqPersonasApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      ReadOnly = True
      Size = 100
    end
    object adoqPersonasNacionalidad: TStringField
      FieldName = 'Nacionalidad'
      Size = 2
    end
    object adoqPersonasCalificacionCartera: TStringField
      FieldName = 'CalificacionCartera'
      Size = 5
    end
    object adoqPersonasActividad1: TStringField
      FieldName = 'Actividad1'
      Size = 10
    end
    object adoqPersonasActividad2: TStringField
      FieldName = 'Actividad2'
      Size = 10
    end
    object adoqPersonasActividad3: TStringField
      FieldName = 'Actividad3'
      Size = 10
    end
    object adoqPersonasDirrecion1: TStringField
      FieldName = 'Dirrecion1'
      ReadOnly = True
      Size = 52
    end
    object adoqPersonasDirrecion2: TStringField
      FieldName = 'Dirrecion2'
      ReadOnly = True
      Size = 1
    end
    object adoqPersonasColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object adoqPersonasMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adoqPersonasCiudad: TStringField
      FieldName = 'Ciudad'
      Size = 150
    end
    object adoqPersonasEstado: TStringField
      FieldName = 'Estado'
      Size = 4
    end
    object adoqPersonasCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object adoqPersonasTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
      Size = 30
    end
    object adoqPersonasExtension: TStringField
      FieldName = 'Extension'
      ReadOnly = True
      Size = 1
    end
    object adoqPersonasFax: TStringField
      FieldName = 'Fax'
      ReadOnly = True
      Size = 30
    end
    object adoqPersonasTipoCliente: TIntegerField
      FieldName = 'TipoCliente'
    end
    object adoqPersonasEstadoPaisExtranjero: TStringField
      FieldName = 'EstadoPaisExtranjero'
      ReadOnly = True
      Size = 1
    end
    object adoqPersonasPais: TStringField
      FieldName = 'Pais'
      Size = 2
    end
  end
  object adoqAccionistas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        PersonasAccionistas.IdPersonaAccionista, Personas.' +
        'RFC, Personas.CURP, CASE WHEN IdPersonaTipo = 2 THEN dbo.BCTexto' +
        '(RazonSocial) ELSE '#39#39' END AS Empresa, CASE WHEN IdPersonaTipo = ' +
        '2 THEN '#39#39' ELSE dbo.BCTexto(Nombre) END AS PrimerNombre, '
      
        '                         CASE WHEN IdPersonaTipo = 2 THEN '#39#39' ELS' +
        'E dbo.BCTexto(SegundoNombre) END AS SegindoNombre, CASE WHEN IdP' +
        'ersonaTipo = 2 THEN '#39#39' ELSE dbo.BCTexto(ApellidoPaterno) END AS ' +
        'ApellidoPaterno,'
      
        '                         CASE WHEN IdPersonaTipo = 2 THEN '#39#39' ELS' +
        'E dbo.BCTexto(ApellidoMaterno) END AS ApellidoMaterno, '
      
        #9#9#9#9#9#9' CAST(FLOOR(PersonasAccionistas.Porcentaje) AS int) AS Por' +
        'centaje, '
      
        '                         Domicilios.Dirrecion1, Domicilios.Dirre' +
        'cion2, Domicilios.Colonia, Domicilios.Municipio, Domicilios.Ciud' +
        'ad, '
      
        '                         Domicilios.Estado, Domicilios.CodigoPos' +
        'tal, Telefonos.Lada+Telefonos.Telefono AS Telefono, '#39#39' AS Extens' +
        'ion,'
      
        #9#9#9#9#9#9' Faxes.Lada+Faxes.Telefono AS Fax, CASE Personas.IdPersona' +
        'Tipo WHEN 1 THEN 2 WHEN 2 THEN 1 ELSE 0 END AS Tipo, '#39#39' AS Estad' +
        'oPaisExtranjero, Domicilios.Pais'
      'FROM            PersonasAccionistas INNER JOIN'
      
        '                         Personas ON PersonasAccionistas.IdAccio' +
        'nista = Personas.IdPersona LEFT OUTER JOIN'
      
        #9#9#9#9#9#9' Telefonos ON Personas.IdPersona = Telefonos.IdPersona AND' +
        ' Telefonos.IdTelefonoTipo = 4 AND Telefonos.Predeterminado = 1 L' +
        'EFT OUTER JOIN'
      
        #9#9#9#9#9#9' Telefonos Faxes ON Personas.IdPersona = Faxes.IdPersona A' +
        'ND Telefonos.IdTelefonoTipo = 5 AND Telefonos.Predeterminado = 1'
      #9#9#9#9#9#9' LEFT OUTER JOIN'
      '('
      
        'SELECT       PersonasDomicilios.IdPersona, dbo.BCTexto(Domicilio' +
        's.Calle + '#39' '#39' + ISNULL(Domicilios.NoExterior,'#39#39') + '#39' '#39' + ISNULL(' +
        'Domicilios.NoInterior,'#39#39')) AS Dirrecion1, '#39#39' AS Dirrecion2, dbo.' +
        'BCTexto(Domicilios.Colonia) AS Colonia, dbo.BCTexto(Municipios.D' +
        'escripcion) AS Municipio, dbo.BCTexto(Domicilios.BCCiudad) AS Ci' +
        'udad, '
      
        '                         Estados.BCCodigo AS Estado, Paises.BCCo' +
        'digo AS Pais, Domicilios.CodigoPostal'
      'FROM            PersonasDomicilios INNER JOIN'
      
        '                         Domicilios ON PersonasDomicilios.IdDomi' +
        'cilio = Domicilios.IdDomicilio INNER JOIN'
      
        '                         Paises ON Domicilios.IdPais = Paises.Id' +
        'Pais INNER JOIN'
      
        '                         Estados ON Domicilios.IdEstado = Estado' +
        's.IdEstado INNER JOIN'
      
        '                         Municipios ON Domicilios.IdMunicipio = ' +
        'Municipios.IdMunicipio '
      'WHERE        (PersonasDomicilios.Predeterminado = 1)'
      ') Domicilios ON Personas.IdPersona = Domicilios.IdPersona'
      'WHERE PersonasAccionistas.Porcentaje > 10'
      'AND PersonasAccionistas.IdPersona = :IdPersona')
    Left = 136
    Top = 144
    object adoqAccionistasIdPersonaAccionista: TAutoIncField
      FieldName = 'IdPersonaAccionista'
      ReadOnly = True
    end
    object adoqAccionistasRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adoqAccionistasCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adoqAccionistasEmpresa: TStringField
      FieldName = 'Empresa'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasPrimerNombre: TStringField
      FieldName = 'PrimerNombre'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasSegindoNombre: TStringField
      FieldName = 'SegindoNombre'
      ReadOnly = True
      Size = 1
    end
    object adoqAccionistasApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasPorcentaje: TIntegerField
      FieldName = 'Porcentaje'
      ReadOnly = True
    end
    object adoqAccionistasDirrecion1: TStringField
      FieldName = 'Dirrecion1'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasDirrecion2: TStringField
      FieldName = 'Dirrecion2'
      ReadOnly = True
      Size = 1
    end
    object adoqAccionistasColonia: TStringField
      FieldName = 'Colonia'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasMunicipio: TStringField
      FieldName = 'Municipio'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasCiudad: TStringField
      FieldName = 'Ciudad'
      ReadOnly = True
      Size = 255
    end
    object adoqAccionistasEstado: TStringField
      FieldName = 'Estado'
      Size = 4
    end
    object adoqAccionistasCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object adoqAccionistasTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
      Size = 30
    end
    object adoqAccionistasExtension: TStringField
      FieldName = 'Extension'
      ReadOnly = True
      Size = 1
    end
    object adoqAccionistasFax: TStringField
      FieldName = 'Fax'
      ReadOnly = True
      Size = 30
    end
    object adoqAccionistasTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object adoqAccionistasEstadoPaisExtranjero: TStringField
      FieldName = 'EstadoPaisExtranjero'
      ReadOnly = True
      Size = 1
    end
    object adoqAccionistasPais: TStringField
      FieldName = 'Pais'
      Size = 2
    end
  end
  object adoqDetalle: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FechaV1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'IdAnexo1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FechaV2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'IdAnexo2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT AC.IdAnexo, CASE WHEN A.DiasRetraso > 0 THEN A.DiasRetras' +
        'o ELSE 0 END AS DiasRetraso, A.FechaVencimiento AS FechaVencimie' +
        'nto, SUM(A.PagoSaldo) AS Saldo, SUM(A.Interes) AS Interes'
      'FROM v_AnexosAmortizaciones AS A'
      
        'INNER JOIN AnexosCreditos AS AC ON A.IdAnexoCredito = AC.IdAnexo' +
        'Credito'
      'WHERE AC.IdAnexoCreditoEstatus = 1 AND A.PagoSaldo > 0.01'
      'AND A.FechaVencimiento <= :FechaV1 AND AC.IdAnexo = :IdAnexo1'
      'GROUP BY AC.IdAnexo, A.DiasRetraso, A.FechaVencimiento'
      'UNION'
      
        'SELECT AC.IdAnexo, 0 AS DiasRetraso, null AS FechaVencimiento, S' +
        'UM(A.PagoSaldo) AS Saldo, SUM(A.Interes) AS Interes'
      'FROM v_AnexosAmortizaciones AS A'
      
        'INNER JOIN AnexosCreditos AS AC ON A.IdAnexoCredito = AC.IdAnexo' +
        'Credito'
      'WHERE AC.IdAnexoCreditoEstatus = 1 AND A.PagoSaldo > 0.01'
      'AND A.FechaVencimiento > :FechaV2 AND AC.IdAnexo = :IdAnexo2'
      'GROUP BY AC.IdAnexo'
      'ORDER BY AC.IdAnexo, FechaVencimiento'
      '')
    Left = 224
    Top = 88
    object adoqDetalleIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object adoqDetalleFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object adoqDetalleDiasRetraso: TIntegerField
      FieldName = 'DiasRetraso'
      ReadOnly = True
    end
    object adoqDetalleSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object adoqDetalleInteres: TFMTBCDField
      FieldName = 'Interes'
      Precision = 18
      Size = 6
    end
  end
end
