inherited dmPuestosCapacitacion: TdmPuestosCapacitacion
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPuestoCapacitacion, IdPuesto, IdBateriaCapacitacion fro' +
      'm PuestosCapacitaciones'#13#10'where IdPuesto = :IdPuesto'
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdPuestoCapacitacion: TAutoIncField
      FieldName = 'IdPuestoCapacitacion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
      Visible = False
    end
    object adodsMasterIdBateriaCapacitacion: TIntegerField
      FieldName = 'IdBateriaCapacitacion'
      Visible = False
    end
    object adodsMasterBateriaCapacitacion: TStringField
      DisplayLabel = 'Bateria de capacitaci'#243'n'
      FieldKind = fkLookup
      FieldName = 'BateriaCapacitacion'
      LookupDataSet = adodsBateriaCapacitacion
      LookupKeyFields = 'IdBateriaCapacitacion'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdBateriaCapacitacion'
      Required = True
      Size = 100
      Lookup = True
    end
  end
  object adodsBateriaCapacitacion: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdBateriaCapacitacion, Descripcion from BateriaCapacitaci' +
      'on'
    Parameters = <>
    Left = 152
    Top = 16
  end
end
