inherited dmMovimientosTipo: TdmMovimientosTipo
  OldCreateOrder = True
  Height = 479
  Width = 399
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterScroll = adodsMasterAfterScroll
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdMovimientoTipo, IdMovimientoTipoCategoria, IdMovimiento' +
      'TipoEfecto, IdMovimientoTipoAcumular, IdPersonaRolPagadora1, IdP' +
      'ersonaRolPagadora2, IdPersonaRolCXCPagadora1, IdPersonaRolCXCPag' +
      'adora2, IdVariable, Identificador, Descripcion, ProduceCXC, Prod' +
      'uceCXP, AgruparTipo, AplicarISRProvisional, PorcentajePagadora1,' +
      ' PorcentajePagadora2, AplicarUltimoPeriodo, EnviarCuentaControl,' +
      ' AplicarCategoria, Importar, PorcentajeRetencion, PorcentajeApor' +
      'tacion, AplicarDescuentos from MovimientosTipos'
    Left = 48
    object adodsMasterIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdMovimientoTipoCategoria: TIntegerField
      FieldName = 'IdMovimientoTipoCategoria'
      Visible = False
      OnChange = adodsMasterIdMovimientoTipoCategoriaChange
    end
    object adodsMasterIdMovimientoTipoEfecto: TIntegerField
      FieldName = 'IdMovimientoTipoEfecto'
      Visible = False
    end
    object adodsMasterIdMovimientoTipoAcumular: TIntegerField
      FieldName = 'IdMovimientoTipoAcumular'
      Visible = False
    end
    object adodsMasterIdPersonaRolPagadora1: TIntegerField
      FieldName = 'IdPersonaRolPagadora1'
      Visible = False
    end
    object adodsMasterIdpersonaRolPagadora2: TIntegerField
      FieldName = 'IdpersonaRolPagadora2'
      Visible = False
    end
    object adodsMasterIdPersonaRolCXCPagadora1: TIntegerField
      FieldName = 'IdPersonaRolCXCPagadora1'
      Visible = False
    end
    object adodsMasterIdPersonaRolCXCPagadora2: TIntegerField
      FieldName = 'IdPersonaRolCXCPagadora2'
      Visible = False
    end
    object adodsMasterIdImpuesto: TIntegerField
      FieldName = 'IdVariable'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsMasterMovimientoTipoCategoria: TStringField
      DisplayLabel = 'Categor'#237'a'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsMasterMovimientoTipoEfecto: TStringField
      DisplayLabel = 'Efecto'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsMasterVariable: TStringField
      FieldKind = fkLookup
      FieldName = 'Variable'
      LookupDataSet = adodsVariables
      LookupKeyFields = 'IdVariable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdVariable'
      Size = 50
      Lookup = True
    end
    object adodsMasterImportar: TBooleanField
      DisplayLabel = 'Dato b'#225'sico'
      FieldName = 'Importar'
    end
    object adodsMasterProduceCXP: TBooleanField
      DisplayLabel = 'Produce CXP'
      FieldName = 'ProduceCXP'
    end
    object adodsMasterProduceCXC: TBooleanField
      DisplayLabel = 'Produce CXC'
      FieldName = 'ProduceCXC'
    end
    object adodsMasterEnviarCuentaControl: TBooleanField
      DisplayLabel = 'Enviar a cuenta de control'
      FieldName = 'EnviarCuentaControl'
    end
    object adodsMasterAplicarCategoria: TBooleanField
      DisplayLabel = 'Acumular al saldo de la categor'#237'a'
      FieldName = 'AplicarCategoria'
    end
    object adodsMasterAplicarUltimoPeriodo: TBooleanField
      DisplayLabel = 'Aplicar '#250'ltimo periodo'
      FieldName = 'AplicarUltimoPeriodo'
    end
    object adodsMasterAgruparTipo: TBooleanField
      DisplayLabel = 'Agrupar por tipo de movimiento'
      FieldName = 'AgruparTipo'
    end
    object adodsMasterMovimientoTipo: TStringField
      DisplayLabel = 'Acumular a movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoAcumular'
      Size = 100
      Lookup = True
    end
    object adodsMasterPorcentajeRetencion: TFMTBCDField
      DisplayLabel = 'Porcentaje de retenci'#243'n'
      FieldName = 'PorcentajeRetencion'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterPorcentajeAportacion: TFMTBCDField
      DisplayLabel = 'Porcentaje de aportaci'#243'n'
      FieldName = 'PorcentajeAportacion'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterAplicarDescuentos: TBooleanField
      DisplayLabel = 'Aplicar descuentos'
      FieldName = 'AplicarDescuentos'
    end
    object adodsMasterAplicarISRProvisional: TBooleanField
      DisplayLabel = 'Aplicar ISR mensual'
      FieldName = 'AplicarISRProvisional'
    end
    object adodsMasterCXPRelacion1: TStringField
      DisplayLabel = 'CXP Relaci'#243'n de pago pago 1'
      FieldKind = fkLookup
      FieldName = 'CXPRelacion1'
      LookupDataSet = adodsPersonaRolCXP1
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Relacion'
      KeyFields = 'IdPersonaRolPagadora1'
      Size = 500
      Lookup = True
    end
    object adodsMasterCXPRelacion2: TStringField
      DisplayLabel = 'CXP Relaci'#243'n de pago pago 2'
      FieldKind = fkLookup
      FieldName = 'CXPRelacion2'
      LookupDataSet = adodsPersonaRolCXP2
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Relacion'
      KeyFields = 'IdpersonaRolPagadora2'
      Size = 500
      Lookup = True
    end
    object adodsMasterCXCPagadora1: TStringField
      DisplayLabel = 'CXC Relaci'#243'n de pago pago 1'
      FieldKind = fkLookup
      FieldName = 'CXCRelacion1'
      LookupDataSet = adodsPersonaRolCXC1
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Relacion'
      KeyFields = 'IdPersonaRolCXCPagadora1'
      Size = 50
      Lookup = True
    end
    object adodsMasterCXCRelacion2: TStringField
      DisplayLabel = 'CXC Relaci'#243'n de pago pago 2'
      FieldKind = fkLookup
      FieldName = 'CXCRelacion2'
      LookupDataSet = adodsPersonaRolCXC2
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Relacion'
      KeyFields = 'IdPersonaRolCXCPagadora2'
      Size = 500
      Lookup = True
    end
    object adodsMasterPorcentajePagadora2: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 2'
      FieldName = 'PorcentajePagadora2'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterPorcentajePagador1: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 1'
      FieldName = 'PorcentajePagadora1'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoTipo, IdMovimientoTipoCategoria, IdMovimiento' +
      'TipoEfecto, IdMovimientoTipoAcumular, IdPersonaRolPagadora1, Idp' +
      'ersonaRolPagadora2, IdVariable, Identificador, Descripcion, Prod' +
      'uceCXC, ProduceCXP, AgruparTipo, AplicarISRProvisional, Porcenta' +
      'jePagadora1, PorcentajePagadora2 from MovimientosTipos'#13#10'WHERE Id' +
      'MovimientoTipo = :IdMovimientoTipo'
    Parameters = <
      item
        Name = 'IdMovimientoTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsUpdateIdMovimientoTipo: TAutoIncField
      FieldName = 'IdMovimientoTipo'
      ReadOnly = True
      Visible = False
    end
    object adodsUpdateIdMovimientoTipoCategoria: TIntegerField
      FieldName = 'IdMovimientoTipoCategoria'
      Visible = False
    end
    object adodsUpdateIdMovimientoTipoEfecto: TIntegerField
      FieldName = 'IdMovimientoTipoEfecto'
      Visible = False
    end
    object adodsUpdateIdMovimientoTipoAcumular: TIntegerField
      FieldName = 'IdMovimientoTipoAcumular'
      Visible = False
    end
    object adodsUpdateIdPersonaRolPagadora1: TIntegerField
      FieldName = 'IdPersonaRolPagadora1'
    end
    object adodsUpdateIdpersonaRolPagadora2: TIntegerField
      FieldName = 'IdpersonaRolPagadora2'
    end
    object adodsUpdateIdVariable: TIntegerField
      FieldName = 'IdVariable'
      Visible = False
    end
    object adodsUpdateIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
    end
    object adodsUpdateDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsUpdateMovimientoTipoCategoria: TStringField
      DisplayLabel = 'Categor'#237'a'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoCategoria'
      LookupDataSet = adodsMovimientoTipoCategoria
      LookupKeyFields = 'IdMovimientoTipoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoCategoria'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsUpdateMovimientoTipoEfecto: TStringField
      DisplayLabel = 'Efecto'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipoEfecto'
      LookupDataSet = adodsMovimientoTipoEfecto
      LookupKeyFields = 'IdMovimientoTipoEfecto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoEfecto'
      Required = True
      Size = 100
      Lookup = True
    end
    object adodsUpdateProduceCXC: TBooleanField
      DisplayLabel = 'Produce CXC'
      FieldName = 'ProduceCXC'
    end
    object adodsUpdateProduceCXP: TBooleanField
      DisplayLabel = 'Produce CXP'
      FieldName = 'ProduceCXP'
    end
    object adodsUpdateVariable: TStringField
      FieldKind = fkLookup
      FieldName = 'Variable'
      LookupDataSet = adodsVariables
      LookupKeyFields = 'IdVariable'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdVariable'
      Size = 50
      Lookup = True
    end
    object adodsUpdateAgruparTipo: TBooleanField
      DisplayLabel = 'Agrupar por tipo de movimiento'
      FieldName = 'AgruparTipo'
    end
    object adodsUpdateMovimientoTipo: TStringField
      DisplayLabel = 'Acumular a movimiento'
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipoAcumular'
      Size = 100
      Lookup = True
    end
    object adodsUpdateAplicarISRProvisional: TBooleanField
      DisplayLabel = 'Aplicar ISR Mensual'
      FieldName = 'AplicarISRProvisional'
    end
    object adodsUpdatePagadora1: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagadora1'
      LookupDataSet = adodsPersonaRolCXP1
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Pagadora'
      KeyFields = 'IdPersonaRolPagadora1'
      Size = 500
      Lookup = True
    end
    object adodsUpdatePorcentajePagadora1: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 1'
      FieldName = 'PorcentajePagadora1'
      Precision = 18
      Size = 6
    end
    object adodsUpdatePagadora2: TStringField
      FieldKind = fkLookup
      FieldName = 'Pagadora2'
      LookupDataSet = adodsPersonaRolCXP2
      LookupKeyFields = 'IdPersonaRol'
      LookupResultField = 'Pagadora'
      KeyFields = 'IdpersonaRolPagadora2'
      Size = 500
      Lookup = True
    end
    object adodsUpdatePorcentajePagadora2: TFMTBCDField
      DisplayLabel = 'Porcentaje pago 2'
      FieldName = 'PorcentajePagadora2'
      Precision = 18
      Size = 6
    end
  end
  object adodsMovimientoTipoCategoria: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoCategoria, Descripcion FROM MovimientosTi' +
      'posCategorias'#13#10'order by Descripcion'
    Parameters = <>
    Left = 120
    Top = 72
  end
  object adodsMovimientoTipoEfecto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMovimientoTipoEfecto, Descripcion FROM MovimientosTipos' +
      'Efectos'#13#10'order by Descripcion'
    Parameters = <>
    Left = 120
    Top = 128
  end
  object adodsMovimientoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoTipo, Descripcion from MovimientosTipos'#13#10'orde' +
      'r by Descripcion'
    Parameters = <>
    Left = 120
    Top = 184
  end
  object adodsPersonaRolCXP1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, Personas_1.RazonSocial' +
      ' + '#39'=>'#39' + Personas.RazonSocial AS Relacion, Personas.RazonSocial' +
      ' AS Receptora, Personas_1.RazonSocial AS Pagadora'#13#10'FROM         ' +
      '   PersonasRoles INNER JOIN'#13#10'                         Personas O' +
      'N PersonasRoles.IdPersona = Personas.IdPersona INNER JOIN'#13#10'     ' +
      '                    Personas AS Personas_1 ON PersonasRoles.IdPe' +
      'rsonaRelacionada = Personas_1.IdPersona INNER JOIN'#13#10'            ' +
      '             Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JO' +
      'IN'#13#10'                         RolesTipos ON Roles.IdRolTipo = Rol' +
      'esTipos.IdRolTipo'#13#10'WHERE        (RolesTipos.IdRolTipo = 2)'
    Parameters = <>
    Left = 112
    Top = 304
  end
  object adodsVariables: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdVariable, Descripcion from Variables'#13#10'order by Descripc' +
      'ion'
    Parameters = <>
    Left = 120
    Top = 240
  end
  object adodsPersonaRolCXP2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, Personas_1.RazonSocial' +
      ' + '#39'=>'#39' + Personas.RazonSocial AS Relacion, Personas.RazonSocial' +
      ' AS Receptora, Personas_1.RazonSocial AS Pagadora'#13#10'FROM         ' +
      '   PersonasRoles INNER JOIN'#13#10'                         Personas O' +
      'N PersonasRoles.IdPersona = Personas.IdPersona INNER JOIN'#13#10'     ' +
      '                    Personas AS Personas_1 ON PersonasRoles.IdPe' +
      'rsonaRelacionada = Personas_1.IdPersona INNER JOIN'#13#10'            ' +
      '             Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JO' +
      'IN'#13#10'                         RolesTipos ON Roles.IdRolTipo = Rol' +
      'esTipos.IdRolTipo'#13#10'WHERE        (RolesTipos.IdRolTipo = 2)'
    Parameters = <>
    Left = 232
    Top = 304
  end
  object adodsMovimientoTipoLkp: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMovimientoTipo, Descripcion from MovimientosTipos'#13#10'wher' +
      'e IdMovimientoTipoCategoria = :IdMovimientoTipoCategoria'#13#10'order ' +
      'by Descripcion '
    Parameters = <
      item
        Name = 'IdMovimientoTipoCategoria'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 248
    Top = 184
  end
  object adodsPersonaRolCXC1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, Personas_1.RazonSocial' +
      ' + '#39'=>'#39' + Personas.RazonSocial AS Relacion, Personas.RazonSocial' +
      ' AS Receptora, Personas_1.RazonSocial AS Pagadora'#13#10'FROM         ' +
      '   PersonasRoles INNER JOIN'#13#10'                         Personas O' +
      'N PersonasRoles.IdPersona = Personas.IdPersona INNER JOIN'#13#10'     ' +
      '                    Personas AS Personas_1 ON PersonasRoles.IdPe' +
      'rsonaRelacionada = Personas_1.IdPersona INNER JOIN'#13#10'            ' +
      '             Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JO' +
      'IN'#13#10'                         RolesTipos ON Roles.IdRolTipo = Rol' +
      'esTipos.IdRolTipo'#13#10'WHERE        (RolesTipos.IdRolTipo = 2)'
    Parameters = <>
    Left = 112
    Top = 360
  end
  object adodsPersonaRolCXC2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        PersonasRoles.IdPersonaRol, Personas_1.RazonSocial' +
      ' + '#39'=>'#39' + Personas.RazonSocial AS Relacion, Personas.RazonSocial' +
      ' AS Receptora, Personas_1.RazonSocial AS Pagadora'#13#10'FROM         ' +
      '   PersonasRoles INNER JOIN'#13#10'                         Personas O' +
      'N PersonasRoles.IdPersona = Personas.IdPersona INNER JOIN'#13#10'     ' +
      '                    Personas AS Personas_1 ON PersonasRoles.IdPe' +
      'rsonaRelacionada = Personas_1.IdPersona INNER JOIN'#13#10'            ' +
      '             Roles ON PersonasRoles.IdRol = Roles.IdRol INNER JO' +
      'IN'#13#10'                         RolesTipos ON Roles.IdRolTipo = Rol' +
      'esTipos.IdRolTipo'#13#10'WHERE        (RolesTipos.IdRolTipo = 2)'
    Parameters = <>
    Left = 232
    Top = 360
  end
end
