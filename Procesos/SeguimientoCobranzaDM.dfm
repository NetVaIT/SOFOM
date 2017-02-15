inherited dmSeguimientoCobranza: TdmSeguimientoCobranza
  Height = 492
  Width = 586
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, '#13#10'IdIn' +
      'cidenciaEstado, IdAnexo, FechaReg, FoliosAsoc, RegContacto, '#13#10'Ac' +
      'uerdo, Proxcontacto, Condiciones, PromesaPago'#13#10' from Incidencias' +
      'Cobranza'#13#10'order by FechaReg desc'
    Left = 56
    object adodsMasterIDIncidenciaCobranza: TAutoIncField
      FieldName = 'IDIncidenciaCobranza'
      ReadOnly = True
    end
    object adodsMasterIDUsuario: TIntegerField
      FieldName = 'IDUsuario'
    end
    object adodsMasterIDPersonaCliente: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object adodsMasterIdIncidenciaEstado: TIntegerField
      FieldName = 'IdIncidenciaEstado'
    end
    object adodsMasterIdAnexo: TIntegerField
      FieldName = 'IdAnexo'
    end
    object adodsMasterFechaReg: TDateTimeField
      FieldName = 'FechaReg'
    end
    object adodsMasterFoliosAsoc: TStringField
      FieldName = 'FoliosAsoc'
      Size = 300
    end
    object adodsMasterRegContacto: TStringField
      FieldName = 'RegContacto'
      Size = 50
    end
    object adodsMasterAcuerdo: TStringField
      FieldName = 'Acuerdo'
      Size = 500
    end
    object adodsMasterProxcontacto: TDateTimeField
      FieldName = 'Proxcontacto'
    end
    object adodsMasterCondiciones: TIntegerField
      FieldName = 'Condiciones'
    end
    object adodsMasterPromesaPago: TStringField
      FieldName = 'PromesaPago'
      Size = 2
    end
    object adodsMasterEstadoIncidencia: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoIncidencia'
      LookupDataSet = ADODtStIncidenciasEstados
      LookupKeyFields = 'IdIncidenciaEstado'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdIncidenciaEstado'
      Lookup = True
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IDPersonaCliente'
      Size = 150
      Lookup = True
    end
    object adodsMasterUsuarioReg: TStringField
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
  object ADODtStIncidenciasEstados: TADODataSet
    Active = True
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
    Active = True
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
  object ADODtStSaldoCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select CxC.IdPersona,P.RazonSocial,Sum(CXC.Saldo) as Saldo , sum' +
      '(CXC.Interes) as interes from CuentasXCobrar CXC, Personas P'#13#10'wh' +
      'ere p.idpersona=Cxc.IdPersona'#13#10'Group by cxC.IdPersona, P.RazonSo' +
      'cial'
    Parameters = <>
    Left = 320
    Top = 152
    object ADODtStSaldoClienteIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStSaldoClienteSaldo: TFMTBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object ADODtStSaldoClienteinteres: TFMTBCDField
      FieldName = 'interes'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object ADODtStSaldoClienteRazonSocial: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'RazonSocial'
      Size = 300
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
      'XC.IdCFDINormal'#13#10'from CuentasXCobrar CXC'#13#10'where Cxc.IdPersona=:I' +
      'DPersona'#13#10
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
    Left = 464
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
  end
  object dsSaldoCliente: TDataSource
    DataSet = ADODtStSaldoCliente
    Left = 408
    Top = 128
  end
end
