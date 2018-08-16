inherited dmCuentasBancarias: TdmCuentasBancarias
  OldCreateOrder = True
  Height = 413
  Width = 452
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdCuentaBancaria, IdPersona, IdCuentaBancariaTipo, IdBanc' +
      'o, CuentaBancaria, ClabeInterbancaria, IdMoneda, IdDocumento, Sa' +
      'ldoCuenta, IdCuentaBancariaEstatus'#13#10'FROM CuentasBancarias'
    Left = 32
    object adodsMasterIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaTipo: TIntegerField
      FieldName = 'IdCuentaBancariaTipo'
      Visible = False
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object adodsMasterIdCuentaBancariaEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaEstatus'
      Visible = False
    end
    object adodsMasterCuentaBancariaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaBancariaTipo'
      LookupDataSet = adodsCuentaBancariaTipo
      LookupKeyFields = 'IdCuentaBancariaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = adodsBanco
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 50
      Lookup = True
    end
    object adodsMasterCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
    object adodsMasterClabeInterbancaria: TStringField
      FieldName = 'ClabeInterbancaria'
      Size = 18
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 10
      Lookup = True
    end
    object adodsMasterEstructuraEstadoCuenta: TStringField
      FieldKind = fkLookup
      FieldName = 'EstructuraEstadoCuenta'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsMasterSaldoCuenta: TBCDField
      FieldName = 'SaldoCuenta'
      Precision = 18
      Size = 0
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdCuentaBancariaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaEstatus'
      Size = 50
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsUpdateNewRecord
    CommandText = 
      'SELECT IdCuentaBancaria, IdPersona, IdCuentaBancariaTipo, IdBanc' +
      'o, CuentaBancaria, ClabeInterbancaria, IdMoneda, IdDocumento, Sa' +
      'ldoCuenta, IdCuentaBancariaEstatus'#13#10'FROM CuentasBancarias'#13#10'WHERE' +
      ' IdCuentaBancaria = :IdCuentaBancaria'
    Parameters = <
      item
        Name = 'IdCuentaBancaria'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 392
    object adodsUpdateIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
      Visible = False
    end
    object adodsUpdateIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsUpdateIdCuentaBancariaTipo: TIntegerField
      FieldName = 'IdCuentaBancariaTipo'
      Visible = False
    end
    object adodsUpdateCuentaBancariaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaBancariaTipo'
      LookupDataSet = adodsCuentaBancariaTipo
      LookupKeyFields = 'IdCuentaBancariaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaTipo'
      Size = 50
      Lookup = True
    end
    object adodsUpdateIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsUpdateBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = adodsBanco
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 50
      Lookup = True
    end
    object adodsUpdateCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
    object adodsUpdateClabeInterbancaria: TStringField
      FieldName = 'ClabeInterbancaria'
      Size = 18
    end
    object adodsUpdateIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsUpdateMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 10
      Lookup = True
    end
    object adodsUpdateIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object adodsUpdateEstructuraEstadoCuenta: TStringField
      FieldKind = fkLookup
      FieldName = 'EstructuraEstadoCuenta'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 200
      Lookup = True
    end
    object adodsUpdateSaldoCuenta: TBCDField
      FieldName = 'SaldoCuenta'
      Precision = 18
      Size = 0
    end
    object adodsUpdateIdCuentaBancariaEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaEstatus'
      Visible = False
    end
    object adodsUpdateEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdCuentaBancariaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaEstatus'
      Size = 50
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    Left = 384
    object actUpdateFile: TAction
      Caption = '...'
      Hint = 'Asigna archivo'
      OnExecute = actUpdateFileExecute
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    Left = 120
    Top = 16
  end
  object adodsUsuariosXCtaBan: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT  IdCuentaBancariaUsuario, IdCuentaBancaria, IdPersonaResp' +
      'onsable, LoginBanco, NumeroSerieToken, Observaciones1, Observaci' +
      'ones2 FROM CuentasBancariasUsuarios'#13#10'WHERE IdCuentaBancaria =:Id' +
      'CuentaBancaria'
    DataSource = dsMaster
    MasterFields = 'IdCuentaBancaria'
    Parameters = <
      item
        Name = 'IdCuentaBancaria'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 200
    Top = 192
    object adodsUsuariosXCtaBanIdCuentaBancariaUsuario: TAutoIncField
      FieldName = 'IdCuentaBancariaUsuario'
      ReadOnly = True
      Visible = False
    end
    object adodsUsuariosXCtaBanIdCuentaBancaria: TIntegerField
      FieldName = 'IdCuentaBancaria'
      Visible = False
    end
    object adodsUsuariosXCtaBanIdPersonaResponsable: TIntegerField
      FieldName = 'IdPersonaResponsable'
      Visible = False
    end
    object adodsUsuariosXCtaBanResponsable: TStringField
      FieldKind = fkLookup
      FieldName = 'Responsable'
      LookupDataSet = adodsPersonaUsuario
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaResponsable'
      Size = 50
      Lookup = True
    end
    object adodsUsuariosXCtaBanLoginBanco: TStringField
      DisplayLabel = 'Login Banco'
      FieldName = 'LoginBanco'
      Size = 100
    end
    object adodsUsuariosXCtaBanNumeroSerieToken: TStringField
      DisplayLabel = 'Numero de Serie Token'
      FieldName = 'NumeroSerieToken'
      Size = 100
    end
    object adodsUsuariosXCtaBanObservaciones1: TStringField
      DisplayLabel = 'Observaciones 1'
      FieldName = 'Observaciones1'
      Size = 100
    end
    object adodsUsuariosXCtaBanObservaciones2: TStringField
      DisplayLabel = 'Observaciones 2'
      FieldName = 'Observaciones2'
      Size = 100
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial, Nombre, ApellidoPaterno, Ape' +
      'llidoMaterno '#13#10'from Personas'
    Parameters = <>
    Left = 200
    Top = 88
    object adodsPersonaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsPersonaRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsPersonaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 200
    end
    object adodsPersonaNombre: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object adodsPersonaApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 30
    end
    object adodsPersonaApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 30
    end
  end
  object adodsCuentaBancariaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaBancariaTipo, Descripcion from CuentasBancariasTi' +
      'pos'
    Parameters = <>
    Left = 56
    Top = 80
  end
  object adodsBanco: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdBanco, Nombre from Bancos'
    Parameters = <>
    Left = 56
    Top = 136
    object adodsBancoIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object adodsBancoNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
  end
  object adodsMoneda: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 56
    Top = 192
    object adodsMonedaIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object adodsMonedaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object adodsPersonaUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial, Nombre, ApellidoPaterno, Ape' +
      'llidoMaterno '#13#10'from Personas where IDPersonaTipo=1'
    Parameters = <>
    Left = 200
    Top = 136
    object AutoIncField1: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object StringField2: TStringField
      FieldName = 'RazonSocial'
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'Nombre'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 30
    end
    object adodsPersonaUsuarioNombreCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCompleto'
      Size = 150
      Calculated = True
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 56
    Top = 240
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaBancariaEstatus, Descripcion from CuentasBancaria' +
      'sEstatus'
    Parameters = <>
    Left = 56
    Top = 288
  end
end
