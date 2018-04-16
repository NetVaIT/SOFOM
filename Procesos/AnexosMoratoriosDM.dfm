inherited dmAnexosMoratorios: TdmAnexosMoratorios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterPost = adodsMasterAfterPost
    CommandText = 
      'select IdAnexoMoratorio, IdAnexoAmortizacion, IdAnexoMoratorioEs' +
      'tatus, IdCuentaXCobrar, Fecha, ImporteBase, Importe, Descuento, ' +
      'Impuesto, ImporteAplicado, Cancelacion from AnexosMoratorios'#13#10'OR' +
      'DER BY Fecha'
    object adodsMasterIdAnexoMoratorio: TIntegerField
      FieldName = 'IdAnexoMoratorio'
      Visible = False
    end
    object adodsMasterIdAnexoAmortizacion: TIntegerField
      FieldName = 'IdAnexoAmortizacion'
      Visible = False
    end
    object adodsMasterIdAnexoMoratorioEstatus: TIntegerField
      FieldName = 'IdAnexoMoratorioEstatus'
      Visible = False
    end
    object adodsMasterIdCuentaXCobrar: TIntegerField
      FieldName = 'IdCuentaXCobrar'
      Visible = False
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdAnexoMoratorioEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAnexoMoratorioEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterImporteBase: TFMTBCDField
      DisplayLabel = 'Base'
      FieldName = 'ImporteBase'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      OnChange = adodsMasterImporteChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterDescuento: TFMTBCDField
      FieldName = 'Descuento'
      OnChange = adodsMasterImporteChange
      OnValidate = adodsMasterDescuentoValidate
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImpuesto: TFMTBCDField
      FieldName = 'Impuesto'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterImporteAplicado: TFMTBCDField
      DisplayLabel = 'Importe aplicado'
      FieldName = 'ImporteAplicado'
      Visible = False
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterCancelacion: TDateTimeField
      FieldName = 'Cancelacion'
      Visible = False
    end
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnexoMoratorioEstatus, Identificador, Descripcion from ' +
      'AnexosMoratoriosEstatus'
    Parameters = <>
    Left = 96
    Top = 80
  end
  object adopUpdAmortizacionMoratorio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdAnexoAmortizacionMoratorios;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoAmortizacion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 88
    Top = 144
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    OnDataChange = dsMasterDataChange
    Left = 104
    Top = 16
  end
end
