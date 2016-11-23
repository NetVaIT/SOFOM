inherited dmCuentasBancarias: TdmCuentasBancarias
  OldCreateOrder = True
  Height = 413
  Width = 457
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdCuentaBancaria,'#13#10'             IdPersona,'#13#10'             ' +
      'IdCuentaBancariaTipo,'#13#10'             IdBanco,'#13#10'             Cuent' +
      'aBancaria,'#13#10'             ClabeInterbancaria,'#13#10'             IdMon' +
      'eda,             '#13#10'             IdDocumento,'#13#10'             Saldo' +
      'Cuenta, IdCuentaBancariaEstatus'#13#10'  FROM CuentasBancarias'#13#10
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
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
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
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
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
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
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
    object adodsMasterIdCuentaBancariaEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaEstatus'
      Visible = False
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
    Left = 392
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
    Left = 64
    Top = 264
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
    Left = 400
    Top = 160
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
    Left = 232
    Top = 24
  end
  object adodsBanco: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdBanco, Nombre from Bancos'
    Parameters = <>
    Left = 232
    Top = 80
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
    Left = 232
    Top = 136
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
    Left = 232
    Top = 208
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
    Left = 232
    Top = 272
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCuentaBancariaEstatus, Descripcion from CuentasBancaria' +
      'sEstatus'
    Parameters = <>
    Left = 232
    Top = 344
  end
end
