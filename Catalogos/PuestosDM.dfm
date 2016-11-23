inherited dmPuestos: TdmPuestos
  OldCreateOrder = True
  Height = 426
  Width = 446
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdUnidadNegocio, IdPersona, Identificador, Descripcion FR' +
      'OM UnidadesNegocio'
    Left = 48
    object adodsMasterIdUnidadNegocio: TAutoIncField
      FieldName = 'IdUnidadNegocio'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsMasterPersona: TStringField
      DisplayLabel = 'Outsourcing'
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
  end
  object adodsGerencias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdGerencia, IdUnidadNegocio, Identificador, Descripcion F' +
      'ROM Gerencias WHERE IdUnidadNegocio = :IdUnidadNegocio'
    DataSource = dsMaster
    MasterFields = 'IdUnidadNegocio'
    Parameters = <
      item
        Name = 'IdUnidadNegocio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 80
    object adodsGerenciasIdGerencia: TIntegerField
      FieldName = 'IdGerencia'
      Visible = False
    end
    object adodsGerenciasIdUnidadNegocio: TIntegerField
      FieldName = 'IdUnidadNegocio'
      Visible = False
    end
    object adodsGerenciasIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsGerenciasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 144
    Top = 16
  end
  object adodsDepartamentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDepartamento, IdGerencia, Identificador, Descripcion FR' +
      'OM Departamentos WHERE IdGerencia = :IdGerencia'
    DataSource = dsGerencias
    MasterFields = 'IdGerencia'
    Parameters = <
      item
        Name = 'IdGerencia'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 48
    Top = 144
    object adodsDepartamentosIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
      Visible = False
    end
    object adodsDepartamentosIdGerencia: TIntegerField
      FieldName = 'IdGerencia'
      Visible = False
    end
    object adodsDepartamentosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsDepartamentosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  object adodsPuestos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPuesto, IdDepartamento, Identificador, Descripcion, Fec' +
      'haCreacion, IdPuestoSuperior, IdPuestoCategoria FROM Puestos WHE' +
      'RE IdDepartamento = :IdDepartamento'
    DataSource = dsDepartamentos
    IndexFieldNames = 'IdDepartamento'
    MasterFields = 'IdDepartamento'
    Parameters = <
      item
        Name = 'IdDepartamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 208
    object adodsPuestosIdPuesto: TAutoIncField
      FieldName = 'IdPuesto'
      ReadOnly = True
      Visible = False
    end
    object adodsPuestosIdDepartamento: TIntegerField
      FieldName = 'IdDepartamento'
      Required = True
      Visible = False
    end
    object adodsPuestosIdPuestoSuperior: TIntegerField
      FieldName = 'IdPuestoSuperior'
      Visible = False
    end
    object adodsPuestosIdPuestoCategoria: TIntegerField
      FieldName = 'IdPuestoCategoria'
      Visible = False
    end
    object adodsPuestosIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 10
    end
    object adodsPuestosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 50
    end
    object adodsPuestosPuestoCategoria: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'PuestoCategoria'
      LookupDataSet = adodsPuestosCategorias
      LookupKeyFields = 'IdPuestoCategoria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoCategoria'
      Required = True
      Size = 50
      Lookup = True
    end
    object adodsPuestosPuestoSuperior: TStringField
      DisplayLabel = 'Puesto superior'
      FieldKind = fkLookup
      FieldName = 'PuestoSuperior'
      LookupDataSet = adodsPuestoSuperior
      LookupKeyFields = 'IdPuesto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPuestoSuperior'
      Size = 50
      Lookup = True
    end
    object adodsPuestosFechaCreacion: TDateTimeField
      DisplayLabel = 'Fecha creaci'#243'n'
      FieldName = 'FechaCreacion'
    end
  end
  object dsGerencias: TDataSource
    DataSet = adodsGerencias
    Left = 144
    Top = 80
  end
  object dsDepartamentos: TDataSource
    DataSet = adodsDepartamentos
    Left = 144
    Top = 144
  end
  object adodsPuestosCategorias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuestoCategoria, Descripcion FROM PuestosCategorias'
    Parameters = <>
    Left = 120
    Top = 320
  end
  object adodsPuestoSuperior: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPuesto, Descripcion FROM Puestos'
    Parameters = <>
    Left = 120
    Top = 264
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.RazonSocial'#13#10'FROM Personas '#13 +
      #10'INNER JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.' +
      'IdPersona '#13#10'INNER JOIN Roles ON PersonasRoles.IdRol = Roles.IdRo' +
      'l'#13#10'WHERE (Roles.IdRolTipo = 2)'
    Parameters = <>
    Left = 224
    Top = 16
  end
end
