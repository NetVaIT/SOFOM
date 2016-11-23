inherited dmUbicaciones: TdmUbicaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    CommandText = 'select IdPais, Identificador, Descripcion from Paises'
    Left = 40
    object adodsMasterIdPais: TAutoIncField
      FieldName = 'IdPais'
      ReadOnly = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 3
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 120
    Top = 16
  end
  object adodsEstados: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdEstado, IdPais, Identificador, Descripcion from Estados' +
      #13#10'where IdPais = :IdPais'
    DataSource = dsMaster
    MasterFields = 'IdPais'
    Parameters = <
      item
        Name = 'IdPais'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 40
    Top = 80
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
    Left = 120
    Top = 80
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
    Left = 40
    Top = 144
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
    Left = 120
    Top = 144
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
    Left = 40
    Top = 208
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
