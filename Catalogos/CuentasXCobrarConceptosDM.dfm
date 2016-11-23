inherited dmCuentasXCobrarConceptos: TdmCuentasXCobrarConceptos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaXCobrarConcepto, Identificador, Descripcion FROM ' +
      'CuentasXCobrarConceptos'
    object adodsMasterIdCuentaXCobrarConcepto: TAutoIncField
      FieldName = 'IdCuentaXCobrarConcepto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
end
