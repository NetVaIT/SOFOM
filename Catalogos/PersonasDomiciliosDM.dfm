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
        Value = Null
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
      '+CHAR(10) +'#13#10'Paises.Descripcion AS Domicilio'#13#10'FROM Domicilios '#13#10 +
      'INNER JOIN Paises ON Domicilios.IdPais = Paises.IdPais'#13#10'INNER JO' +
      'IN Estados ON Domicilios.IdEstado = Estados.IdEstado'#13#10'INNER JOIN' +
      ' Municipios ON Domicilios.IdMunicipio = Municipios.IdMunicipio'#13#10 +
      'INNER JOIN Poblaciones ON Domicilios.IdPoblacion = Poblaciones.I' +
      'dPoblacion'#13#10
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
  end
end
