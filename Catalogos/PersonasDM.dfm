inherited dmPersona: TdmPersona
  OldCreateOrder = True
  Height = 593
  Width = 770
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPersona, IdPersonaTipo, IdRazonSocialTipo, '#13#10'IdRolTipo,' +
      ' IdSexo, IdEstadoCivil, IdPais, IdPoblacion, IdRiesgoTipo, RFC, ' +
      'CURP,'#13#10' RazonSocial, Nombre, ApellidoPaterno, ApellidoMaterno,'#13#10 +
      ' FechaNacimiento, LugarNacimiento, IdPersonaTitular, '#13#10'VigenciaF' +
      'M34 ,IdMetodoPago, IdRegimenFiscal, IdDocumentoLogo,'#13#10' IdPersona' +
      'Estatus, Identificador, NumCtaPagoCliente, '#13#10'SaldoCliente'#13#10'FROM ' +
      'Personas'
    Left = 56
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
      Visible = False
    end
    object adodsMasterIdRolTipo: TIntegerField
      FieldName = 'IdRolTipo'
      Visible = False
    end
    object adodsMasterIdRazonSocialTipo: TIntegerField
      FieldName = 'IdRazonSocialTipo'
      Visible = False
    end
    object adodsMasterIdSexo: TIntegerField
      FieldName = 'IdSexo'
      Visible = False
    end
    object adodsMasterIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
      Visible = False
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMasterIdRegimenFiscal: TIntegerField
      FieldName = 'IdRegimenFiscal'
    end
    object adodsMasterIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object adodsMasterIdRiesgoTipo: TIntegerField
      FieldName = 'IdRiesgoTipo'
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Visible = False
      Size = 5
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsMasterCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adodsMasterRazonSocial: TStringField
      DisplayLabel = 'Nombre / Razon Social'
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterPersonaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaTipo'
      LookupDataSet = adodsPersonaTipo
      LookupKeyFields = 'IdPersonaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterRolTipo: TStringField
      DisplayLabel = 'Rol'
      FieldKind = fkLookup
      FieldName = 'RolTipo'
      LookupDataSet = adodsRolesTipos
      LookupKeyFields = 'IdRolTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterRazonSocialTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'RazonSocialTipo'
      LookupDataSet = adodsRazonSocialTipo
      LookupKeyFields = 'IdRazonSocialTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRazonSocialTipo'
      Size = 200
      Lookup = True
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object adodsMasterApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 100
    end
    object adodsMasterApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 100
    end
    object adodsMasterFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object adodsMasterSexo: TStringField
      FieldKind = fkLookup
      FieldName = 'Sexo'
      LookupDataSet = adodsSexo
      LookupKeyFields = 'IdSexo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdSexo'
      Size = 50
      Lookup = True
    end
    object adodsMasterEstadoCivil: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoCivil'
      LookupDataSet = adodsEstadoCivil
      LookupKeyFields = 'IdEstadoCivil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEstadoCivil'
      Size = 50
      Lookup = True
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterLugarNacimiento: TStringField
      FieldName = 'LugarNacimiento'
      Size = 100
    end
    object adodsMasterVigenciaFM34: TDateTimeField
      FieldName = 'VigenciaFM34'
      Visible = False
    end
    object adodsMasterNumCtaPagoCliente: TStringField
      DisplayLabel = 'No.Cuenta Pago Cliente'
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object adodsMasterExigeCta: TBooleanField
      FieldKind = fkLookup
      FieldName = 'ExigeCta'
      LookupDataSet = ADOdsMetodosPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'ExigeCuenta'
      KeyFields = 'IdMetodoPago'
      Lookup = True
    end
    object adodsMasterSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      Precision = 18
      Size = 6
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADOdsMetodosPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 50
      Lookup = True
    end
    object adodsMasterRegimenFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'RegimenFiscal'
      LookupDataSet = ADOdsRegimenFiscal
      LookupKeyFields = 'IdRegimenFiscal'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRegimenFiscal'
      Size = 150
      Lookup = True
    end
    object adodsMasterEstatusPersona: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'EstatusPersona'
      LookupDataSet = ADOdsPersonaEstatus
      LookupKeyFields = 'IdPersonaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaEstatus'
      Size = 15
      Lookup = True
    end
    object adodsMasterRiesgo: TStringField
      FieldKind = fkLookup
      FieldName = 'Riesgo'
      LookupDataSet = adodsRiesgosTipos
      LookupKeyFields = 'IdRiesgoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRiesgoTipo'
      Size = 50
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 216
  end
  inherited ActionList: TActionList
    Left = 216
    Top = 80
    object actAccionistas: TAction
      Caption = 'Accionistas'
      OnExecute = actAccionistasExecute
      OnUpdate = actAccionistasUpdate
    end
  end
  object adodsPersonaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 56
    Top = 72
  end
  object adodsRazonSocialTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRazonSocialTipo, Descripcion FROM RazonesSocialesTipos'
    Parameters = <>
    Left = 56
    Top = 128
  end
  object adodsSexo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdSexo, Descripcion FROM Sexos'
    Parameters = <>
    Left = 56
    Top = 184
  end
  object adodsEstadoCivil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEstadoCivil, Descripcion FROM EstadosCiviles'
    Parameters = <>
    Left = 56
    Top = 240
  end
  object adodsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 56
    Top = 296
  end
  object adodsPersonaRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = adodsPersonaRolesNewRecord
    CommandText = 
      'SELECT PersonasRoles.IdPersonaRol, PersonasRoles.IdPersona, Pers' +
      'onasRoles.IdPersonaRelacionada, PersonasRoles.IdRol, '#13#10'         ' +
      '    PersonasRoles.IdRolEsquemaPago, PersonasRoles.IdRolEstatus, ' +
      'PersonasRoles.IdRolClase, PersonasRoles.Calcular, '#13#10'            ' +
      ' PersonasRoles.PorcentajeCalculo, PersonasRoles.RegistroPatronal' +
      'IMSS, PersonasRoles.NSS, PersonasRoles.FechaAltaIMSS, '#13#10'        ' +
      '     PersonasRoles.Facturar, PersonasRoles.FechaIngreso, Persona' +
      'sRoles.FechaBaja, Roles.IdRolTipo'#13#10'FROM PersonasRoles INNER JOIN' +
      ' Roles ON PersonasRoles.IdRol = Roles.IdRol'#13#10'WHERE PersonasRoles' +
      '.IdPersona = :IdPersona'#13#10
    DataSource = dsMaster
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 600
    Top = 101
    object adodsPersonaRolesIdPersonaRol: TAutoIncField
      FieldName = 'IdPersonaRol'
      ReadOnly = True
      Visible = False
    end
    object adodsPersonaRolesIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsPersonaRolesIdPersonaRelacionada: TIntegerField
      FieldName = 'IdPersonaRelacionada'
      Visible = False
    end
    object adodsPersonaRolesIdRol: TIntegerField
      FieldName = 'IdRol'
      Visible = False
    end
    object adodsPersonaRolesIdRolEsquemaPago: TIntegerField
      FieldName = 'IdRolEsquemaPago'
      Visible = False
    end
    object adodsPersonaRolesIdRolEstatus: TIntegerField
      FieldName = 'IdRolEstatus'
      Visible = False
    end
    object adodsPersonaRolesIdRolClase: TIntegerField
      FieldName = 'IdRolClase'
      Visible = False
    end
    object adodsPersonaRolesIdRolTipo: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdRolTipo'
      LookupDataSet = adodsRol
      LookupKeyFields = 'IdRol'
      LookupResultField = 'IdRolTipo'
      KeyFields = 'IdRol'
      Visible = False
      Lookup = True
    end
    object adodsPersonaRolesRol: TStringField
      FieldKind = fkLookup
      FieldName = 'Rol'
      LookupDataSet = adodsRol
      LookupKeyFields = 'IdRol'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRol'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesPersonaRelacionada: TStringField
      DisplayLabel = 'Persona relacionada'
      FieldKind = fkLookup
      FieldName = 'PersonaRelacionada'
      LookupDataSet = adodsPersonaRelacionada
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRelacionada'
      Size = 300
      Lookup = True
    end
    object adodsPersonaRolesRolEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'RolEstatus'
      LookupDataSet = adodsRolEstatus
      LookupKeyFields = 'IdRolEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolEstatus'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesRolClase: TStringField
      DisplayLabel = 'Clase'
      FieldKind = fkLookup
      FieldName = 'RolClase'
      LookupDataSet = adodsRolClase
      LookupKeyFields = 'IdRolClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRolClase'
      Size = 50
      Lookup = True
    end
    object adodsPersonaRolesFacturar: TBooleanField
      FieldName = 'Facturar'
      Visible = False
    end
    object adodsPersonaRolesCalcular: TBooleanField
      FieldName = 'Calcular'
    end
    object adodsPersonaRolesPorcentajeCalculo: TFMTBCDField
      DisplayLabel = 'Porcentaje Calculo'
      FieldName = 'PorcentajeCalculo'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsPersonaRolesRegistroPatronalIMSS: TStringField
      FieldName = 'RegistroPatronalIMSS'
      Size = 15
    end
    object adodsPersonaRolesNSS: TStringField
      FieldName = 'NSS'
      Size = 15
    end
    object adodsPersonaRolesFechaAltaIMSS: TDateTimeField
      FieldName = 'FechaAltaIMSS'
    end
    object adodsPersonaRolesFechaIngreso: TDateTimeField
      DisplayLabel = 'Fecha de ingreso'
      FieldName = 'FechaIngreso'
    end
    object adodsPersonaRolesFechaBaja: TDateTimeField
      DisplayLabel = 'Fecha de baja'
      FieldName = 'FechaBaja'
    end
  end
  object adodsPersonaRelacionada: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.RazonSocial, '#13#10'PersonasRoles' +
      '.IdRol, PersonasRoles.IdPersona '#13#10'FROM Personas '#13#10'LEFT JOIN Pers' +
      'onasRoles ON Personas.IdPersona = PersonasRoles.IdPersona'#13#10
    Parameters = <>
    Left = 600
    Top = 157
  end
  object adodsRol: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRol, IdRolTipo, Descripcion FROM Roles'
    Parameters = <>
    Left = 600
    Top = 213
  end
  object adodsRolEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolEstatus, Descripcion FROM RolesEstatus'
    Parameters = <>
    Left = 600
    Top = 277
  end
  object adodsRolClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRolClase, Descripcion FROM RolesClases'
    Parameters = <>
    Left = 600
    Top = 333
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 600
    Top = 48
  end
  object adodsRolesTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRolTipo, Identificador, Descripcion from RolesTipos'
    Parameters = <>
    Left = 56
    Top = 360
  end
  object ADOdsPersonaEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaEstatus, Identificador, Descripcion from Persona' +
      'sEstatus'
    Parameters = <>
    Left = 216
    Top = 432
  end
  object ADOdsMetodosPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta,'#13#10' ' +
      'ClaveSAT2016  from MetodosPago'
    Parameters = <>
    Left = 336
    Top = 432
  end
  object ADOdsRegimenFiscal: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdRegimenFiscal, Identificador, Descripcion from Regimene' +
      'sFiscales'
    Parameters = <>
    Left = 464
    Top = 432
  end
  object adodsRiesgosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdRiesgoTipo, Descripcion from RiesgosTipos'
    Parameters = <>
    Left = 56
    Top = 432
  end
end
