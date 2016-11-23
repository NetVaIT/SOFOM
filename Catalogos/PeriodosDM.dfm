inherited dmPeriodos: TdmPeriodos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPeriodo, IdPeriodoTipo, Numero, IdPeriodoEstatus, Fecha' +
      'Inicio, FechaFin, Descripcion, Mes, Anio FROM Periodos'
    object adodsMasterIdPeriodo: TAutoIncField
      FieldName = 'IdPeriodo'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPeriodoTipo: TIntegerField
      FieldName = 'IdPeriodoTipo'
      Visible = False
    end
    object adodsMasterNumero: TIntegerField
      FieldName = 'Numero'
    end
    object adodsMasterPeriodoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'PeriodoTipo'
      LookupDataSet = adodsPeriodoTipo
      LookupKeyFields = 'IdPeriodoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPeriodoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdPeriodoEstatus: TIntegerField
      FieldName = 'IdPeriodoEstatus'
      Visible = False
    end
    object adodsMasterPeriodoEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'PeriodoEstatus'
      LookupDataSet = adodsPeriodoEstatus
      LookupKeyFields = 'IdPeriodoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPeriodoEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterFechaInicio: TWideStringField
      FieldName = 'FechaInicio'
      Size = 10
    end
    object adodsMasterFechaFin: TWideStringField
      FieldName = 'FechaFin'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsMasterMes: TIntegerField
      FieldName = 'Mes'
    end
    object adodsMasterAnio: TIntegerField
      FieldName = 'Anio'
    end
  end
  inherited ActionList: TActionList
    object actCalculaPeriodo: TAction
      Hint = 'Calcula Periodos'
      ImageIndex = 13
      OnExecute = actCalculaPeriodoExecute
    end
  end
  object adodsPeriodoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodoTipo, Descripcion FROM PeriodosTipos'
    Parameters = <>
    Left = 120
    Top = 96
  end
  object adodsPeriodoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPeriodoEstatus, Descripcion FROM PeriodosEstatus'
    Parameters = <>
    Left = 120
    Top = 168
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 120
    Top = 16
  end
end
