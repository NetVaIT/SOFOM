inherited dmRptPlazas: TdmRptPlazas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT Outsourcing, Gerencia, Departamento, Puesto, CategoriaPue' +
      'sto, PuestoSuperior, CreacionPuesto, Plaza, Turno, Temporalidad,' +
      ' ClasePlaza, Ubicacion, Empleado, SalarioBase, CreacionPlaza FRO' +
      'M vReportePlazas'
    object adodsMasterOutsourcing: TStringField
      FieldName = 'Outsourcing'
      Size = 300
    end
    object adodsMasterGerencia: TStringField
      FieldName = 'Gerencia'
      Size = 50
    end
    object adodsMasterDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 200
    end
    object adodsMasterPuesto: TStringField
      FieldName = 'Puesto'
      Size = 50
    end
    object adodsMasterCategoriaPuesto: TStringField
      DisplayLabel = 'Categoria Puesto'
      FieldName = 'CategoriaPuesto'
      Size = 50
    end
    object adodsMasterPuestoSuperior: TStringField
      DisplayLabel = 'Puesto Superior'
      FieldName = 'PuestoSuperior'
      Size = 50
    end
    object adodsMasterCreacionPuesto: TDateTimeField
      DisplayLabel = 'Creacion Puesto'
      FieldName = 'CreacionPuesto'
    end
    object adodsMasterPlaza: TStringField
      FieldName = 'Plaza'
      Size = 100
    end
    object adodsMasterTurno: TStringField
      FieldName = 'Turno'
      Size = 50
    end
    object adodsMasterTemporalidad: TStringField
      FieldName = 'Temporalidad'
      Size = 50
    end
    object adodsMasterClasePlaza: TStringField
      DisplayLabel = 'Clase Plaza'
      FieldName = 'ClasePlaza'
      Size = 1
    end
    object adodsMasterUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 50
    end
    object adodsMasterEmpleado: TStringField
      FieldName = 'Empleado'
      Size = 300
    end
    object adodsMasterSalarioBase: TBCDField
      DisplayLabel = 'Salario Base'
      FieldName = 'SalarioBase'
      Precision = 18
      Size = 0
    end
    object adodsMasterCreacionPlaza: TDateTimeField
      DisplayLabel = 'Creacion Plaza'
      FieldName = 'CreacionPlaza'
    end
  end
end
