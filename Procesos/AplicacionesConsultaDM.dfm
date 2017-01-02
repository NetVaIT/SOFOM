inherited dmAplicacionesConsulta: TdmAplicacionesConsulta
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select PA.FechaAplicacion ,pa.importe, PR.FechaPago as FechaPago' +
      ', PR.FolioPago, Pr.SeriePago,Cc.IdCuentaXCobrar NoCuentaXCobrar,' +
      ' CC.Fecha as FechaCXC ,P.RazonSocial,'#13#10'PA.IdPagoAplicacion, Pa.I' +
      'dPago, PA.IdCFDI, PA.IdPersonaCliente '#13#10'from PagosAplicaciones P' +
      'A'#13#10'inner join Pagos PR on PA.IdPago=PR.IdPago'#13#10'inner join Cuenta' +
      'sXCobrar CC on PA.IdCuentaXCobrar =Cc.IdcuentaXCobrar'#13#10'inner joi' +
      'n Personas P on P.IdPersona =Cc.IdPersona'
    object adodsMasterRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterNoCuentaXCobrar: TAutoIncField
      FieldName = 'NoCuentaXCobrar'
      ReadOnly = True
    end
    object adodsMasterFechaCXC: TDateTimeField
      FieldName = 'FechaCXC'
    end
    object adodsMasterFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object adodsMasterFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adodsMasterSeriePago: TStringField
      FieldName = 'SeriePago'
    end
    object adodsMasterFolioPago: TIntegerField
      FieldName = 'FolioPago'
    end
    object adodsMasterimporte: TFMTBCDField
      FieldName = 'importe'
      Precision = 18
      Size = 6
    end
    object adodsMasterIdPagoAplicacion: TAutoIncField
      FieldName = 'IdPagoAplicacion'
      ReadOnly = True
    end
    object adodsMasterIdPago: TIntegerField
      FieldName = 'IdPago'
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 28
    Top = 91
  end
end
