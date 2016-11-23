inherited dmPlazas: TdmPlazas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPlaza, IdPuesto, IdPersonaEmpleado, IdPlazaTurno, IdUbi' +
      'cacion, IdPlazaTemporalidadTipo, IdPlazaClase, Identificador, De' +
      'scripcion, SalarioBase, FechaCreacion from Plazas'#13#10'where IdPuest' +
      'o = :IdPuesto'
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPlaza: TIntegerField
      FieldName = 'IdPlaza'
      Visible = False
    end
    object adodsMasterIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
      Visible = False
    end
    object adodsMasterIdPersonaEmpleado: TIntegerField
      FieldName = 'IdPersonaEmpleado'
      Visible = False
    end
    object adodsMasterIdPlazaTurno: TIntegerField
      FieldName = 'IdPlazaTurno'
      Visible = False
    end
    object adodsMasterIdUbicacion: TIntegerField
      FieldName = 'IdUbicacion'
      Visible = False
    end
    object adodsMasterIdPlazaTemporalidadTipo: TIntegerField
      FieldName = 'IdPlazaTemporalidadTipo'
      Visible = False
    end
    object adodsMasterIdPlazaClase: TIntegerField
      FieldName = 'IdPlazaClase'
    end
    object adodsMasterPlazaClase: TStringField
      FieldKind = fkLookup
      FieldName = 'PlazaClase'
      LookupDataSet = adodsPlazaClase
      LookupKeyFields = 'IdPlazaClase'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPlazaClase'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Required = True
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Required = True
      Size = 100
    end
    object adodsMasterSalarioBase: TBCDField
      DisplayLabel = 'Salario base'
      FieldName = 'SalarioBase'
      Required = True
      Precision = 18
      Size = 0
    end
    object adodsMasterEmpleado: TStringField
      FieldKind = fkLookup
      FieldName = 'Empleado'
      LookupDataSet = adodsEmpleado
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Nombre'
      KeyFields = 'IdPersonaEmpleado'
      Required = True
      Size = 300
      Lookup = True
    end
    object adodsMasterTurnos: TStringField
      FieldKind = fkLookup
      FieldName = 'Turnos'
      LookupDataSet = adodsPlazaTurnos
      LookupKeyFields = 'IdPlazaTurno'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPlazaTurno'
      Required = True
      Size = 50
      Lookup = True
    end
    object adodsMasterUbicacion: TStringField
      FieldKind = fkLookup
      FieldName = 'Ubicacion'
      LookupDataSet = adodsUbicacion
      LookupKeyFields = 'IdUbicacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUbicacion'
      Required = True
      Size = 50
      Lookup = True
    end
    object adodsMasterTemporalidad: TStringField
      FieldKind = fkLookup
      FieldName = 'Temporalidad'
      LookupDataSet = adodsPlazaTemporalidadTipos
      LookupKeyFields = 'IdPlazaTemporalidadTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPlazaTemporalidadTipo'
      Required = True
      Size = 50
      Lookup = True
    end
    object adodsMasterFechaCreacion: TDateTimeField
      DisplayLabel = 'Fecha creaci'#243'n'
      FieldName = 'FechaCreacion'
    end
  end
  object adodsPlazaTemporalidadTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPlazaTemporalidadTipo, Descripcion FROM PlazasTemporali' +
      'dadTipos'
    Parameters = <>
    Left = 128
    Top = 192
  end
  object adodsUbicacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUbicacion, Descripcion FROM Ubicaciones'
    Parameters = <>
    Left = 128
    Top = 128
  end
  object adodsPlazaTurnos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPlazaTurno, Descripcion FROM PlazasTurnos'
    Parameters = <>
    Left = 128
    Top = 72
  end
  object adodsEmpleado: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial as Nombre from Personas'
    Parameters = <>
    Left = 128
    Top = 16
  end
  object adodsPlazaClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPlazaClase, Descripcion FROM PlazasClases'
    Parameters = <>
    Left = 128
    Top = 248
  end
end
