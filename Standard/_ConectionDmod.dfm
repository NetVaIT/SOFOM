object _dmConection: T_dmConection
  OldCreateOrder = False
  Height = 180
  Width = 227
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=as47Pw3K;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=SOFOM;Data Source=NAS4\NominasV12;Us' +
      'e Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;W' +
      'orkstation ID=DESARROLLO3;Use Encryption for Data=False;Tag with' +
      ' column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    OnDisconnect = ADOConnectionDisconnect
    OnConnectComplete = ADOConnectionConnectComplete
    Left = 48
    Top = 8
  end
  object adoqUsuarios: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Usuarios.IdUsuario, Usuarios.IdPersona, Personas.RazonSoc' +
        'ial, Usuarios.Login, Usuarios.Password, Usuarios.OficialCumplimi' +
        'ento'
      'FROM Usuarios'
      'INNER JOIN Personas ON Usuarios.IdPersona = Personas.IdPersona'
      'WHERE Usuarios.IdUsuarioEstatus = 1')
    Left = 40
    Top = 64
    object adoqUsuariosIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
    end
    object adoqUsuariosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adoqUsuariosRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adoqUsuariosLogin: TStringField
      FieldName = 'Login'
      Size = 15
    end
    object adoqUsuariosPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
    object adoqUsuariosOficialCumplimiento: TBooleanField
      FieldName = 'OficialCumplimiento'
    end
  end
  object ADOQryFechaActual: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [dbo].[GetDateAux] ()  as FechaAct ')
    Left = 136
    Top = 56
    object ADOQryFechaActualFechaAct: TDateTimeField
      FieldName = 'FechaAct'
      ReadOnly = True
    end
  end
  object DSFechaActual: TDataSource
    DataSet = ADOQryEdFecha
    Left = 144
    Top = 128
  end
  object ADOQryEdFecha: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT* from FechaActualPruebas')
    Left = 35
    Top = 128
    object ADOQryEdFechaFechaActual: TDateTimeField
      FieldName = 'FechaActual'
    end
    object ADOQryEdFechaEsProduccion: TBooleanField
      FieldName = 'EsProduccion'
    end
    object ADOQryEdFechaUsarFecha: TBooleanField
      FieldName = 'UsarFecha'
    end
  end
end
