inherited dmEstablecimientos: TdmEstablecimientos
  OldCreateOrder = True
  Height = 407
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdEstablecimiento, Identificador, Descripcion, IdDomicili' +
      'o FROM Establecimientos'
    object adodsMasterIdEstablecimiento: TIntegerField
      FieldName = 'IdEstablecimiento'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Required = True
      Size = 50
    end
    object adodsMasterIdDomicilio: TIntegerField
      DisplayLabel = 'Domicilio'
      FieldName = 'IdDomicilio'
      Required = True
      Visible = False
    end
    object adodsMasterDomicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'Domicilio'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Domicilio'
      KeyFields = 'IdDomicilio'
      Size = 500
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actUpdate: TAction
      Caption = '...'
      OnExecute = actUpdateExecute
    end
  end
  object adodsDomicilios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Domicilios.IdDomicilio,'#13#10'Domicilios.Calle + '#39' '#39' + Domicil' +
      'ios.NoExterior + '#39' '#39' + Domicilios.NoInterior + CHAR(13)+CHAR(10)' +
      ' +'#13#10'Domicilios.Colonia + '#39', '#39' + Municipios.Descripcion + '#39', '#39' + ' +
      'Poblaciones.Descripcion + '#39', '#39' + Estados.Descripcion + '#39' '#39' + Dom' +
      'icilios.CodigoPostal + CHAR(13)+CHAR(10) +'#13#10'Paises.Descripcion A' +
      'S Domicilio'#13#10'FROM Domicilios '#13#10'INNER JOIN Paises ON Domicilios.I' +
      'dPais = Paises.IdPais'#13#10'INNER JOIN Estados ON Domicilios.IdEstado' +
      ' = Estados.IdEstado'#13#10'INNER JOIN Municipios ON Domicilios.IdMunic' +
      'ipio = Municipios.IdMunicipio'#13#10'INNER JOIN Poblaciones ON Domicil' +
      'ios.IdPoblacion = Poblaciones.IdPoblacion'#13#10
    Parameters = <>
    Left = 152
    Top = 80
    object adodsDomiciliosIdDomicilio: TAutoIncField
      FieldName = 'IdDomicilio'
      ReadOnly = True
    end
    object adodsDomiciliosDomicilio: TStringField
      FieldName = 'Domicilio'
      ReadOnly = True
      Size = 473
    end
  end
  object adodsUbicacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdUbicacion, IdEstablecimiento, Identificador, Descripcio' +
      'n, IdUbicacionSuperior FROM Ubicaciones'
    DataSource = dsMaster
    IndexFieldNames = 'IdEstablecimiento'
    MasterFields = 'IdEstablecimiento'
    Parameters = <>
    Left = 64
    Top = 136
    object adodsUbicacionIdUbicacion: TAutoIncField
      FieldName = 'IdUbicacion'
      ReadOnly = True
      Visible = False
    end
    object adodsUbicacionIdEstablecimiento: TIntegerField
      FieldName = 'IdEstablecimiento'
      Visible = False
    end
    object adodsUbicacionIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsUbicacionDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsUbicacionIdUbicacionSuperior: TIntegerField
      FieldName = 'IdUbicacionSuperior'
      Visible = False
    end
    object adodsUbicacionUbicacionSuperior: TStringField
      FieldKind = fkLookup
      FieldName = 'UbicacionSuperior'
      LookupDataSet = adodsUbicacionSuperior
      LookupKeyFields = 'IdUbicacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUbicacionSuperior'
      Size = 50
      Lookup = True
    end
  end
  object adodsUbicacionSuperior: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUbicacion, Descripcion FROM Ubicaciones'
    Parameters = <>
    Left = 72
    Top = 216
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 104
    Top = 16
  end
end
