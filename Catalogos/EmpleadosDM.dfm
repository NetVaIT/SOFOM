inherited dmEmpleados: TdmEmpleados
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaRol, IdPerfilPago, NSS, FechaIngresoIMSS, FechaI' +
      'ngreso, FechaBaja FROM Empleados'
    Left = 32
    object adodsMasterIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
      Visible = False
    end
    object adodsMasterIdPerfilPago: TIntegerField
      FieldName = 'IdPerfilPago'
      Visible = False
    end
    object adodsMasterNSS: TStringField
      FieldName = 'NSS'
      Size = 15
    end
    object adodsMasterFechaIngresoIMSS: TDateTimeField
      FieldName = 'FechaIngresoIMSS'
    end
    object adodsMasterFechaIngreso: TDateTimeField
      FieldName = 'FechaIngreso'
    end
    object adodsMasterFechaBaja: TDateTimeField
      FieldName = 'FechaBaja'
    end
  end
end
