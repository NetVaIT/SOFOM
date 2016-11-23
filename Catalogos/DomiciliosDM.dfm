inherited dmDomicilios: TdmDomicilios
  OldCreateOrder = True
  Height = 372
  Width = 380
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT Domicilios.IdDomicilio, Domicilios.IdPais, Domicilios.IdE' +
      'stado, Domicilios.IdMunicipio, Domicilios.IdPoblacion, '#13#10'Domicil' +
      'ios.Calle, Domicilios.NoExterior, Domicilios.NoInterior, Domicil' +
      'ios.Colonia, Domicilios.Referencia, '#13#10'Paises.Descripcion AS Pais' +
      ', Estados.Descripcion AS Estado, Municipios.Descripcion AS Munic' +
      'ipio, '#13#10'Poblaciones.Descripcion AS Poblacion, Domicilios.CodigoP' +
      'ostal'#13#10'FROM Domicilios '#13#10'INNER JOIN Paises ON Domicilios.IdPais ' +
      '= Paises.IdPais'#13#10'INNER JOIN Estados ON Domicilios.IdEstado = Est' +
      'ados.IdEstado'#13#10'INNER JOIN Municipios ON Domicilios.IdMunicipio =' +
      ' Municipios.IdMunicipio'#13#10'INNER JOIN Poblaciones ON Domicilios.Id' +
      'Poblacion = Poblaciones.IdPoblacion'
    Left = 48
    Top = 32
    object adodsMasterIdDomicilio: TAutoIncField
      FieldName = 'IdDomicilio'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterCalle: TStringField
      FieldName = 'Calle'
      Required = True
      Size = 30
    end
    object adodsMasterNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object adodsMasterNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object adodsMasterColonia: TStringField
      FieldName = 'Colonia'
      Required = True
      Size = 50
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 200
    end
    object adodsMasterIdPais: TIntegerField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'IdPais'
      Required = True
      Visible = False
      OnChange = adodsMasterIdPaisChange
    end
    object adodsMasterIdEstado: TIntegerField
      DisplayLabel = 'Estado'
      FieldName = 'IdEstado'
      Required = True
      Visible = False
      OnChange = adodsMasterIdEstadoChange
    end
    object adodsMasterIdMunicipio: TIntegerField
      DisplayLabel = 'Municipio'
      FieldName = 'IdMunicipio'
      Required = True
      Visible = False
      OnChange = adodsMasterIdMunicipioChange
    end
    object adodsMasterIdPoblacion: TIntegerField
      DisplayLabel = 'Poblaci'#243'n'
      FieldName = 'IdPoblacion'
      Required = True
      Visible = False
    end
    object adodsMasterPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object adodsMasterEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object adodsMasterMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adodsMasterPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object adodsMasterCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Required = True
      Size = 10
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsUpdateNewRecord
    CommandText = 
      'SELECT Domicilios.IdDomicilio, Domicilios.IdPais, Domicilios.IdE' +
      'stado, Domicilios.IdMunicipio, Domicilios.IdPoblacion, '#13#10'Domicil' +
      'ios.Calle, Domicilios.NoExterior, Domicilios.NoInterior, Domicil' +
      'ios.Colonia, Domicilios.Referencia, '#13#10'Paises.Descripcion AS Pais' +
      ', Estados.Descripcion AS Estado, Municipios.Descripcion AS Munic' +
      'ipio, '#13#10'Poblaciones.Descripcion AS Poblacion, Domicilios.CodigoP' +
      'ostal'#13#10'FROM Domicilios '#13#10'INNER JOIN Paises ON Domicilios.IdPais ' +
      '= Paises.IdPais'#13#10'INNER JOIN Estados ON Domicilios.IdEstado = Est' +
      'ados.IdEstado'#13#10'INNER JOIN Municipios ON Domicilios.IdMunicipio =' +
      ' Municipios.IdMunicipio'#13#10'INNER JOIN Poblaciones ON Domicilios.Id' +
      'Poblacion = Poblaciones.IdPoblacion'#13#10'WHERE Domicilios.IdDomicili' +
      'o = :IdDomicilio'
    Parameters = <
      item
        Name = 'IdDomicilio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Top = 32
    object adodsUpdateIdDomicilio: TAutoIncField
      FieldName = 'IdDomicilio'
      ReadOnly = True
    end
    object adodsUpdateCalle: TStringField
      FieldName = 'Calle'
      Required = True
      Size = 30
    end
    object adodsUpdateNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object adodsUpdateNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object adodsUpdateColonia: TStringField
      FieldName = 'Colonia'
      Required = True
      Size = 50
    end
    object adodsUpdateReferencia: TStringField
      FieldName = 'Referencia'
      Size = 200
    end
    object adodsUpdateIdPais: TIntegerField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'IdPais'
      Required = True
    end
    object adodsUpdateIdEstado: TIntegerField
      DisplayLabel = 'Estado'
      FieldName = 'IdEstado'
      Required = True
    end
    object adodsUpdateIdMunicipio: TIntegerField
      DisplayLabel = 'Municipio'
      FieldName = 'IdMunicipio'
      Required = True
    end
    object adodsUpdateIdPoblacion: TIntegerField
      DisplayLabel = 'Poblaci'#243'n'
      FieldName = 'IdPoblacion'
      Required = True
    end
    object adodsUpdatePais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object adodsUpdateEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object adodsUpdateMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adodsUpdatePoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object adodsUpdateCodigoPostal: TStringField
      DisplayLabel = 'C'#243'digo postal'
      FieldName = 'CodigoPostal'
      Required = True
      Size = 10
    end
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Descripcion from Paises'
    Parameters = <>
    Left = 56
    Top = 112
  end
  object dsPaises: TDataSource
    DataSet = adodsPaises
    Left = 136
    Top = 112
  end
  object adodsEstados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdEstado, IdPais, Identificador, Descripcion from Estados' +
      #13#10'where IdPais = :IdPais'
    DataSource = dsPaises
    MasterFields = 'IdPais'
    Parameters = <
      item
        Name = 'IdPais'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 56
    Top = 168
    object adodsEstadosIdEstado: TAutoIncField
      FieldName = 'IdEstado'
      ReadOnly = True
    end
    object adodsEstadosIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object adodsEstadosIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 5
    end
    object adodsEstadosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
    end
  end
  object dsEstados: TDataSource
    DataSet = adodsEstados
    Left = 136
    Top = 168
  end
  object adodsMunicipios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMunicipio, IdEstado, Identificador, Descripcion from Mu' +
      'nicipios'#13#10'where IdEstado = :IdEstado'
    DataSource = dsEstados
    MasterFields = 'IdEstado'
    Parameters = <
      item
        Name = 'IdEstado'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 56
    Top = 232
    object adodsMunicipiosIdMunicipio: TIntegerField
      FieldName = 'IdMunicipio'
      Visible = False
    end
    object adodsMunicipiosIdEstado: TIntegerField
      FieldName = 'IdEstado'
      Visible = False
    end
    object adodsMunicipiosIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object adodsMunicipiosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object dsMunicipios: TDataSource
    DataSet = adodsMunicipios
    Left = 136
    Top = 232
  end
  object adodsPoblaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPoblacion, IdMunicipio, Identificador, Descripcion from' +
      ' Poblaciones'#13#10'where IdMunicipio = :IdMunicipio'
    DataSource = dsMunicipios
    MasterFields = 'IdMunicipio'
    Parameters = <
      item
        Name = 'IdMunicipio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 296
    object adodsPoblacionesIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
      Visible = False
    end
    object adodsPoblacionesIdMunicipio: TIntegerField
      FieldName = 'IdMunicipio'
      Visible = False
    end
    object adodsPoblacionesIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object adodsPoblacionesDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
