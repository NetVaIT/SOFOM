inherited dmPLDAlertasConfiguracion: TdmPLDAlertasConfiguracion
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdPLDAlertaCofiguracion, IdPLDAlertaTipo, IdPersonaTipo, ' +
      'IdMetodoPago, IdMoneda, Importe, Descripcion, Mensaje, Acumular ' +
      'from PLDAlertasConfiguracion'
    object adodsMasterIdPLDAlertaCofiguracion: TIntegerField
      FieldName = 'IdPLDAlertaCofiguracion'
      Visible = False
    end
    object adodsMasterIdPLDAlertaTipo: TIntegerField
      FieldName = 'IdPLDAlertaTipo'
      Visible = False
    end
    object adodsMasterIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
      Visible = False
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterPLDAlertaTipo: TStringField
      DisplayLabel = 'Tipo de alerta'
      FieldKind = fkLookup
      FieldName = 'PLDAlertaTipo'
      LookupDataSet = adodsPLDAlertasTipos
      LookupKeyFields = 'IdPLDAlertaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPLDAlertaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterMensaje: TStringField
      FieldName = 'Mensaje'
      Size = 50
    end
    object adodsMasterPersonaTipo: TStringField
      DisplayLabel = 'Tipo de persona'
      FieldKind = fkLookup
      FieldName = 'PersonaTipo'
      LookupDataSet = adodsPersonasTipos
      LookupKeyFields = 'IdPersonaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterMetodoPago: TStringField
      DisplayLabel = 'Metodo de pago'
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = adodsMetodosPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 50
      Lookup = True
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterAcumular: TBooleanField
      FieldName = 'Acumular'
    end
  end
  object adodsPLDAlertasTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPLDAlertaTipo, Descripcion from PLDAlertasTipos'
    Parameters = <>
    Left = 48
    Top = 81
  end
  object adodsPersonasTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersonaTipo, Descripcion from PersonasTipos'
    Parameters = <>
    Left = 48
    Top = 136
  end
  object adodsMetodosPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMetodoPago, Descripcion from MetodosPago'
    Parameters = <>
    Left = 48
    Top = 192
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'#13#10'where UsoComun = 1'
    Parameters = <>
    Left = 48
    Top = 248
  end
end
