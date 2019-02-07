inherited dmPersonasDomicilios: TdmPersonasDomicilios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdPersonaDomicilio, IdPersona, IdDomicilio, IdDomicilioTi' +
      'po, Predeterminado'#13#10'from PersonasDomicilios'#13#10'where IdPersona = :' +
      'IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 385
      end>
    object adodsMasterIdPersonaDomicilio: TIntegerField
      FieldName = 'IdPersonaDomicilio'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDomicilio: TIntegerField
      DisplayLabel = 'Domicilio'
      FieldName = 'IdDomicilio'
      Required = True
      Visible = False
    end
    object adodsMasterIdDomicilioTipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'IdDomicilioTipo'
      Required = True
      Visible = False
    end
    object adodsMasterDomicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'Domicilio'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Domicilio'
      KeyFields = 'IdDomicilio'
      Size = 500
      Lookup = True
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsDomiciliosTipos
      LookupKeyFields = 'IdDomicilioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDomicilioTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
      Required = True
    end
    object adodsMasterRegimenFiscalPreferente: TBooleanField
      DisplayLabel = 'REP'
      FieldKind = fkLookup
      FieldName = 'RegimenFiscalPreferente'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'RegimenFiscalPreferente'
      KeyFields = 'IdDomicilio'
      Lookup = True
    end
    object adodsMasterListaGAFI: TBooleanField
      DisplayLabel = 'GAFI'
      FieldKind = fkLookup
      FieldName = 'ListaGAFI'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'ListaGAFI'
      KeyFields = 'IdDomicilio'
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actUpdate: TAction
      Caption = '...'
      OnExecute = actUpdateExecute
    end
  end
  object adodsDomiciliosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdDomicilioTipo, Descripcion from DomiciliosTipos'
    Parameters = <>
    Left = 120
    Top = 96
  end
  object adodsDomicilios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Domicilios.IdDomicilio,'#13#10'Domicilios.Calle + '#39' '#39' + ISNULL(' +
      'Domicilios.NoExterior,'#39#39') + '#39' '#39' + ISNULL(Domicilios.NoInterior,'#39 +
      #39') + CHAR(13)+CHAR(10) +'#13#10'ISNULL(Domicilios.Colonia,'#39#39') + '#39', '#39' +' +
      ' Municipios.Descripcion + '#39', '#39' + Poblaciones.Descripcion + '#39', '#39' ' +
      '+ Estados.Descripcion + '#39' '#39' + Domicilios.CodigoPostal + CHAR(13)' +
      '+CHAR(10) +'#13#10'Paises.Descripcion AS Domicilio, Paises.RegimenFisc' +
      'alPreferente, Paises.ListaGAFI'#13#10'FROM Domicilios '#13#10'INNER JOIN Pai' +
      'ses ON Domicilios.IdPais = Paises.IdPais'#13#10'INNER JOIN Estados ON ' +
      'Domicilios.IdEstado = Estados.IdEstado'#13#10'INNER JOIN Municipios ON' +
      ' Domicilios.IdMunicipio = Municipios.IdMunicipio'#13#10'INNER JOIN Pob' +
      'laciones ON Domicilios.IdPoblacion = Poblaciones.IdPoblacion'#13#10
    Parameters = <>
    Left = 120
    Top = 48
    object adodsDomiciliosIdDomicilio: TAutoIncField
      FieldName = 'IdDomicilio'
      ReadOnly = True
    end
    object adodsDomiciliosDomicilio: TStringField
      FieldName = 'Domicilio'
      ReadOnly = True
      Size = 473
    end
    object adodsDomiciliosRegimenFiscalPreferente: TBooleanField
      FieldName = 'RegimenFiscalPreferente'
    end
    object adodsDomiciliosListaGAFI: TBooleanField
      FieldName = 'ListaGAFI'
    end
  end
end
