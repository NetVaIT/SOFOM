inherited dmSeguimientoCobranza: TdmSeguimientoCobranza
  OldCreateOrder = True
  Height = 492
  Width = 586
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select CxC.IdPersona,P.RazonSocial,Sum(CXC.Saldo) as Saldo , sum' +
      '(CXC.Interes) as interes from CuentasXCobrar CXC, Personas P'#13#10'wh' +
      'ere p.idpersona=Cxc.IdPersona'#13#10'Group by cxC.IdPersona, P.RazonSo' +
      'cial'
    Left = 56
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterinteres: TFMTBCDField
      FieldName = 'interes'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
  end
  object ADODtStIncidenciasEstados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdIncidenciaEstado, Identificador, Descripcion'#13#10' from Inc' +
      'idenciasEstados'
    Parameters = <>
    Left = 56
    Top = 96
  end
  object ADODtStPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdRolTipo, IdPoblacion, RFC, RazonSocial,'#13#10' Id' +
      'MetodoPago, IdPersonaEstatus, NumCtaPagoCliente, '#13#10'SaldoCliente ' +
      'from Personas  where IdRolTipo=3'
    Parameters = <>
    Left = 56
    Top = 168
  end
  object ADODtStIncidencias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStIncidenciasNewRecord
    CommandText = 
      'select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, '#13#10'IdIn' +
      'cidenciaEstado, IdAnexo, FechaReg, FoliosAsoc, RegContacto, '#13#10'Ac' +
      'uerdo, Proxcontacto, Condiciones, PromesaPago'#13#10' from Incidencias' +
      'Cobranza where IdIncidenciaEstado=1 and IdPersonaCliente=:IDPers' +
      'ona'#13#10'order by FechaReg desc'
    DataSource = dsSaldoCliente
    IndexFieldNames = 'IDPersonaCliente'
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 88
    object ADODtStIncidenciasIDIncidenciaCobranza: TAutoIncField
      FieldName = 'IDIncidenciaCobranza'
      ReadOnly = True
    end
    object ADODtStIncidenciasIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object ADODtStIncidenciasIDPersonaCliente: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object ADODtStIncidenciasIdIncidenciaEstado: TIntegerField
      FieldName = 'IdIncidenciaEstado'
    end
    object ADODtStIncidenciasIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtStIncidenciasFechaReg: TDateTimeField
      FieldName = 'FechaReg'
    end
    object ADODtStIncidenciasFoliosAsoc: TStringField
      FieldName = 'FoliosAsoc'
      Size = 300
    end
    object ADODtStIncidenciasRegContacto: TStringField
      FieldName = 'RegContacto'
      Size = 50
    end
    object ADODtStIncidenciasAcuerdo: TStringField
      FieldName = 'Acuerdo'
      Size = 500
    end
    object ADODtStIncidenciasProxcontacto: TDateTimeField
      FieldName = 'Proxcontacto'
    end
    object ADODtStIncidenciasCondiciones: TIntegerField
      FieldName = 'Condiciones'
    end
    object ADODtStIncidenciasPromesaPago: TStringField
      FieldName = 'PromesaPago'
      Size = 2
    end
    object ADODtStIncidenciasEstadoIncidencia: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoIncidencia'
      LookupDataSet = ADODtStIncidenciasEstados
      LookupKeyFields = 'IdIncidenciaEstado'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdIncidenciaEstado'
      Lookup = True
    end
    object ADODtStIncidenciasCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IDPersonaCliente'
      Size = 150
      Lookup = True
    end
    object ADODtStIncidenciasUsuarioReg: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioReg'
      LookupDataSet = ADODtStUsuarios
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Usuario'
      KeyFields = 'IDUsuario'
      Size = 150
      Lookup = True
    end
  end
  object ADODtStUsuarios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdUsuario, U.IdPersona, IdUsuarioEstatus, P.RazonSocial a' +
      's Usuario '#13#10'from Usuarios U , Personas P'#13#10'where U.idPersona=P.ID' +
      'Persona'
    Parameters = <>
    Left = 328
    Top = 208
    object ADODtStUsuariosIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
    end
    object ADODtStUsuariosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStUsuariosIdUsuarioEstatus: TIntegerField
      FieldName = 'IdUsuarioEstatus'
    end
    object ADODtStUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 300
    end
  end
  object ADODtSTCXCPend: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select CxC.IdPersona,CXC.Fecha,CXC.IdCuentaXCobrar,CXC.Saldo  ,C' +
      'XC.IdCFDINormal,Ci.Serie,CI.Folio,  Ci.Total, Ci.SaldoDocumento,' +
      ' '#13#10'CXC.IdAnexo, A.Descripcion, A.CapitalCobrado, A.SaldoInsoluto' +
      #13#10'from CuentasXCobrar CXC '#13#10'inner join Anexos A on A.IdAnexo=CXC' +
      '.IdAnexo'#13#10'Left Join CFDI CI on CI.IdCFDI= CXC.IdCFDINormal'#13#10'wher' +
      'e Cxc.IdPersona=:IDPersona   and CXC.Saldo >0.00001'#13#10
    DataSource = dsSaldoCliente
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IDPersona'
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 472
    Top = 152
    object ADODtSTCXCPendIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtSTCXCPendIdCuentaXCobrar: TAutoIncField
      FieldName = 'IdCuentaXCobrar'
      ReadOnly = True
    end
    object ADODtSTCXCPendFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtSTCXCPendSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtSTCXCPendIdCFDINormal: TLargeintField
      FieldName = 'IdCFDINormal'
    end
    object ADODtSTCXCPendSerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtSTCXCPendFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtSTCXCPendTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtSTCXCPendSaldoDocumento: TFMTBCDField
      FieldName = 'SaldoDocumento'
      Precision = 18
      Size = 6
    end
    object ADODtSTCXCPendIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object ADODtSTCXCPendDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 100
    end
    object ADODtSTCXCPendCapitalCobrado: TFMTBCDField
      DisplayLabel = 'Capital Cobrado'
      FieldName = 'CapitalCobrado'
      Precision = 18
      Size = 6
    end
    object ADODtSTCXCPendSaldoInsoluto: TFMTBCDField
      FieldName = 'SaldoInsoluto'
      Precision = 18
      Size = 6
    end
  end
  object dsSaldoCliente: TDataSource
    DataSet = adodsMaster
    Left = 160
    Top = 16
  end
  object ADODtStIncidenciaXFecha: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, '#13#10'IdIn' +
      'cidenciaEstado, IdAnexo, FechaReg, FoliosAsoc, RegContacto, '#13#10'Ac' +
      'uerdo, Proxcontacto, Condiciones, PromesaPago'#13#10' from Incidencias' +
      'Cobranza'#13#10'where Proxcontacto>=:FecIni  and ProxContacto<=:FecFin' +
      #13#10'order by FechaReg desc'
    Parameters = <
      item
        Name = 'FecIni'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FecFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Left = 64
    Top = 248
    object AutoIncField1: TAutoIncField
      FieldName = 'IDIncidenciaCobranza'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IDUsuario'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object IntegerField3: TIntegerField
      FieldName = 'IdIncidenciaEstado'
    end
    object IntegerField4: TIntegerField
      FieldName = 'IdAnexo'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FechaReg'
    end
    object StringField1: TStringField
      FieldName = 'FoliosAsoc'
      Size = 300
    end
    object StringField2: TStringField
      FieldName = 'RegContacto'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Acuerdo'
      Size = 500
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Proxcontacto'
    end
    object IntegerField5: TIntegerField
      FieldName = 'Condiciones'
    end
    object StringField4: TStringField
      FieldName = 'PromesaPago'
      Size = 2
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoIncidencia'
      LookupDataSet = ADODtStIncidenciasEstados
      LookupKeyFields = 'IdIncidenciaEstado'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdIncidenciaEstado'
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IDPersonaCliente'
      Size = 150
      Lookup = True
    end
    object StringField7: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioReg'
      LookupDataSet = ADODtStUsuarios
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Usuario'
      KeyFields = 'IDUsuario'
      Size = 150
      Lookup = True
    end
  end
end
