inherited dmPuestos2: TdmPuestos2
  OldCreateOrder = True
  Width = 450
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuesto, IdDepartamento, Identificacion, Descripcion, Fe' +
      'chaCreacionPuesto, IdPuestoSuperior, IdPuestoCategoria FROM Pues' +
      'tos'
    object adodsMasterIdPuesto: TAutoIncField
      FieldName = 'IdPuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object adodsMasterIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
    end
    object adodsMasterIdentificacion: TStringField
      FieldName = 'Identificacion'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterFechaCreacionPuesto: TWideStringField
      FieldName = 'FechaCreacionPuesto'
      Size = 10
    end
    object adodsMasterIdPuestoSuperior: TIntegerField
      FieldName = 'IdPuestoSuperior'
    end
    object adodsMasterIdPuestoCategoria: TIntegerField
      FieldName = 'IdPuestoCategoria'
    end
  end
  inherited dspMaster: TDataSetProvider
    Options = [poAutoRefresh, poUseQuoteChar]
  end
  inherited cdsMaster: TClientDataSet
    OnNewRecord = cdsMasterNewRecord
    object cdsMasterIdPuesto: TAutoIncField
      FieldName = 'IdPuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object cdsMasterIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
      Visible = False
    end
    object cdsMasterIdPuestoSuperior: TIntegerField
      FieldName = 'IdPuestoSuperior'
      Visible = False
    end
    object cdsMasterIdPuestoCategoria: TIntegerField
      FieldName = 'IdPuestoCategoria'
      Visible = False
    end
    object cdsMasterIdentificacion: TStringField
      FieldName = 'Identificacion'
      Size = 10
    end
    object cdsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object cdsMasterFechaCreacionPuesto: TWideStringField
      FieldName = 'FechaCreacionPuesto'
      Size = 10
    end
    object cdsMasterPuestoSuperior: TStringField
      FieldKind = fkLookup
      FieldName = 'PuestoSuperior'
      LookupDataSet = adodsPuestoSuperior
      LookupKeyFields = 'IdPuesto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoSuperior'
      Size = 50
      Lookup = True
    end
    object cdsMasterPuestoCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'PuestoCategoria'
      LookupDataSet = adodsPuestosCategorias
      LookupKeyFields = 'IdPuestoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoCategoria'
      Size = 50
      Lookup = True
    end
    object cdsMasteradodsPerfiles: TDataSetField
      FieldName = 'adodsPerfiles'
    end
  end
  object adodsPuestoSuperior: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuesto, Descripcion FROM Puestos'
    Parameters = <>
    Left = 336
    Top = 16
  end
  object adodsPuestosCategorias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuestoCategoria, Descripcion FROM PuestosCategorias'
    Parameters = <>
    Left = 336
    Top = 72
  end
  object adodsPerfiles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuestoPerfil, IdPuesto, IdPuestoPerfilCategoria, Identi' +
      'ficador, Descripcion, Valor FROM PuestosPerfiles WHERE IdPuesto ' +
      '= :IdPuesto'#13#10
    DataSource = DataSource1
    IndexFieldNames = 'IdPuesto'
    MasterFields = 'IdPuesto'
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 60
      end>
    Left = 32
    Top = 144
    object adodsPerfilesIdPuestoPerfil: TAutoIncField
      FieldName = 'IdPuestoPerfil'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adodsPerfilesIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
    end
    object adodsPerfilesIdPuestoPerfilCategoria: TIntegerField
      FieldName = 'IdPuestoPerfilCategoria'
    end
    object adodsPerfilesIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsPerfilesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsPerfilesValor: TIntegerField
      FieldName = 'Valor'
    end
  end
  object dspPerfiles: TDataSetProvider
    DataSet = adodsPerfiles
    Options = [poAutoRefresh, poUseQuoteChar]
    Left = 104
    Top = 144
  end
  object cdsPerfiles: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMasteradodsPerfiles
    Params = <>
    Left = 184
    Top = 144
    object cdsPerfilesIdPuestoPerfil: TAutoIncField
      FieldName = 'IdPuestoPerfil'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsPerfilesIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
    end
    object cdsPerfilesIdPuestoPerfilCategoria: TIntegerField
      FieldName = 'IdPuestoPerfilCategoria'
    end
    object cdsPerfilesIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object cdsPerfilesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object cdsPerfilesValor: TIntegerField
      FieldName = 'Valor'
    end
    object cdsPerfilesPerfilCategoria: TStringField
      FieldKind = fkLookup
      FieldName = 'PerfilCategoria'
      LookupDataSet = adodsPuestosPerfilCategorias
      LookupKeyFields = 'IdPuestoPerfilCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoPerfilCategoria'
      Size = 50
      Lookup = True
    end
  end
  object adodsPuestosPerfilCategorias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuestoPerfilCategoria, Descripcion FROM PuestosPerfiles' +
      'Categorias'
    Parameters = <>
    Left = 336
    Top = 136
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 224
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = adodsMaster
    Left = 104
    Top = 88
  end
end
