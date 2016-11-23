inherited dmPrestamos: TdmPrestamos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterPost = adodsMasterAfterPost
    CommandText = 
      'select IdPrestamo, IdPersona, Importe, Fecha, Porcentaje, Saldo ' +
      'from Prestamos'
    object adodsMasterIdPrestamo: TAutoIncField
      FieldName = 'IdPrestamo'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Required = True
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 500
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterPorcentaje: TFMTBCDField
      FieldName = 'Porcentaje'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 96
    Top = 16
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RazonSocial from Personas'#13#10'order by RazonSocia' +
      'l '
    Parameters = <>
    Left = 96
    Top = 72
  end
  object adodsPrestamosPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPrestamoPago, IdPrestamo, IdMovimiento, IdPersona, IdPe' +
      'riodo, IdMovimientoTipo, ImporteCalculo, Porcentaje, ImportePeri' +
      'odo, ImportePago from PrestamosPago'#13#10'where IdPrestamo = :IdPrest' +
      'amo'#13#10
    DataSource = dsMaster
    MasterFields = 'IdPrestamo'
    Parameters = <
      item
        Name = 'IdPrestamo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 48
    Top = 144
    object adodsPrestamosPagoIdPrestamoPago: TAutoIncField
      FieldName = 'IdPrestamoPago'
      ReadOnly = True
      Visible = False
    end
    object adodsPrestamosPagoIdPrestamo: TIntegerField
      FieldName = 'IdPrestamo'
      Visible = False
    end
    object adodsPrestamosPagoIdMovimiento: TIntegerField
      FieldName = 'IdMovimiento'
      Visible = False
    end
    object adodsPrestamosPagoIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsPrestamosPagoIdPeriodo: TIntegerField
      FieldName = 'IdPeriodo'
      Visible = False
    end
    object adodsPrestamosPagoIdMovimientoTipo: TIntegerField
      FieldName = 'IdMovimientoTipo'
      Visible = False
    end
    object adodsPrestamosPagoPeriodo: TStringField
      FieldKind = fkLookup
      FieldName = 'Periodo'
      LookupDataSet = adodsPeriodo
      LookupKeyFields = 'IdPeriodo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPeriodo'
      Size = 100
      Lookup = True
    end
    object adodsPrestamosPagoPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersonasPago
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Visible = False
      Size = 500
      Lookup = True
    end
    object adodsPrestamosPagoMovimientoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'MovimientoTipo'
      LookupDataSet = adodsMovimientoTipo
      LookupKeyFields = 'IdMovimientoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMovimientoTipo'
      Size = 100
      Lookup = True
    end
    object adodsPrestamosPagoImporteCalculo: TFMTBCDField
      DisplayLabel = 'Base'
      FieldName = 'ImporteCalculo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPrestamosPagoPorcentaje: TFMTBCDField
      FieldName = 'Porcentaje'
      DisplayFormat = '0.00 %'
      EditFormat = '0.00'
      Precision = 18
      Size = 6
    end
    object adodsPrestamosPagoImportePeriodo: TFMTBCDField
      DisplayLabel = 'Importe del periodo'
      FieldName = 'ImportePeriodo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsPrestamosPagoImportePago: TFMTBCDField
      DisplayLabel = 'Importe pago'
      FieldName = 'ImportePago'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adodsPeriodo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion from Periodos'
    Parameters = <>
    Left = 152
    Top = 176
  end
  object adodsPersonasPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 152
    Top = 224
  end
  object adodsMovimientoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMovimientoTipo, Descripcion from MovimientosTipos'
    Parameters = <>
    Left = 152
    Top = 272
  end
  object adopUpdPrestamosSaldo: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdPrestamosSaldo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdPrestamo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 296
    Top = 272
  end
end
