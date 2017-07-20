inherited dmPLDAlertas: TdmPLDAlertas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        PLDAlertas.IdPLDAlerta, PLDAlertas.IdPago, PLDAler' +
      'tas.IdPLDOperacionTipo, PLDAlertas.IdPLDAlertaTipo, PLDAlertas.I' +
      'dPLDAlertaEstatus, PLDAlertas.FechaDeteccion, PLDAlertas.Descrip' +
      'cion, PLDAlertas.Razon, '#13#10'                         PLDAlertas.R2' +
      '4, Pagos.FechaPago, Personas.RazonSocial AS Cliente, Pagos.Folio' +
      'Pago, Pagos.SeriePago, MetodosPago.Descripcion AS MetodoPago, Pa' +
      'gos.Importe AS ImportePago'#13#10'FROM            PLDAlertas INNER JOI' +
      'N'#13#10'                         Pagos ON PLDAlertas.IdPago = Pagos.I' +
      'dPago INNER JOIN'#13#10'                         Personas ON Pagos.IdP' +
      'ersonaCliente = Personas.IdPersona INNER JOIN'#13#10'                 ' +
      '        MetodosPago ON Pagos.IdMetodoPago = MetodosPago.IdMetodo' +
      'Pago'#13#10
    object adodsMasterIdPLDAlerta: TIntegerField
      FieldName = 'IdPLDAlerta'
      Visible = False
    end
    object adodsMasterIdPago: TIntegerField
      FieldName = 'IdPago'
      Visible = False
    end
    object adodsMasterIdPLDOperacionTipo: TIntegerField
      FieldName = 'IdPLDOperacionTipo'
      Visible = False
    end
    object adodsMasterIdPLDAlertaTipo: TIntegerField
      FieldName = 'IdPLDAlertaTipo'
      Visible = False
    end
    object adodsMasterIdPLDAlertaEstatus: TIntegerField
      FieldName = 'IdPLDAlertaEstatus'
      Visible = False
    end
    object adodsMasterFechaDeteccion: TDateTimeField
      DisplayLabel = 'Fecha de detecci'#243'n'
      FieldName = 'FechaDeteccion'
    end
    object adodsMasterFechaPago: TDateTimeField
      DisplayLabel = 'Fechade pago'
      FieldName = 'FechaPago'
    end
    object adodsMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsMasterFolioPago: TIntegerField
      DisplayLabel = 'Folio pago'
      FieldName = 'FolioPago'
      Visible = False
    end
    object adodsMasterSeriePago: TStringField
      DisplayLabel = 'Serie pago'
      FieldName = 'SeriePago'
      Visible = False
    end
    object adodsMasterMetodoPago: TStringField
      DisplayLabel = 'Metodo de pago'
      FieldName = 'MetodoPago'
      Size = 50
    end
    object adodsMasterImportePago: TFMTBCDField
      DisplayLabel = 'Importe de pago'
      FieldName = 'ImportePago'
      Precision = 18
      Size = 6
    end
    object adodsMasterOperacionTipo: TStringField
      DisplayLabel = 'Tipo de operaci'#243'n'
      FieldKind = fkLookup
      FieldName = 'OperacionTipo'
      LookupDataSet = adodsOperacionTipo
      LookupKeyFields = 'IdPLDOperacionTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDOperacionTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipo
      LookupKeyFields = 'IdPLDAlertaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDAlertaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdPLDAlertaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDAlertaEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 4000
    end
    object adodsMasterRazon: TStringField
      DisplayLabel = 'Raz'#243'n'
      FieldName = 'Razon'
      Size = 4000
    end
    object adodsMasterR24: TBooleanField
      FieldName = 'R24'
    end
  end
  object adodsOperacionTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDOperacionTipo, Descripcion from PLDOperacionesTipos'
    Parameters = <>
    Left = 72
    Top = 152
  end
  object adodsTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDAlertaTipo, Descripcion from PLDAlertasTipos'
    Parameters = <>
    Left = 72
    Top = 208
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDAlertaEstatus, Descripcion from PLDAlertasEstatus'
    Parameters = <>
    Left = 72
    Top = 264
  end
end
