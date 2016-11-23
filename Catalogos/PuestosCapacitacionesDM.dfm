inherited dmPuestosCapacitaciones: TdmPuestosCapacitaciones
  OldCreateOrder = True
  inherited adoqAvailable: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPuesto'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdBateriaCapacitacion, Descripcion'
      'FROM BateriaCapacitacion'
      
        'WHERE (IdBateriaCapacitacion NOT IN (SELECT IdBateriaCapacitacio' +
        'n FROM PuestosCapacitaciones WHERE IdPuesto = :IdPuesto))'
      'ORDER BY Descripcion')
    object adoqAvailableIdBateriaCapacitacion: TAutoIncField
      FieldName = 'IdBateriaCapacitacion'
      ReadOnly = True
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Capacitaciones disonibles'
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  inherited adoqAssigned: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPuesto'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdBateriaCapacitacion, Descripcion'
      'FROM BateriaCapacitacion'
      
        'WHERE (IdBateriaCapacitacion IN (SELECT IdBateriaCapacitacion FR' +
        'OM PuestosCapacitaciones WHERE IdPuesto = :IdPuesto))'
      'ORDER BY Descripcion'
      '')
    object adoqAssignedIdBateriaCapacitacion: TAutoIncField
      FieldName = 'IdBateriaCapacitacion'
      ReadOnly = True
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      DisplayLabel = 'Capacitaciones asignadas'
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  inherited adocAdd: TADOCommand
    CommandText = 
      'INSERT INTO PuestosCapacitaciones (IdPuesto,IdBateriaCapacitacio' +
      'n)'#13#10'VALUES (:IdPuesto, :IdBateriaCapacitacion)'
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdBateriaCapacitacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited adocDelete: TADOCommand
    CommandText = 
      'DELETE FROM PuestosCapacitaciones'#13#10'WHERE IdPuesto = :IdPuesto AN' +
      'D IdBateriaCapacitacion = :IdBateriaCapacitacion'#13#10
    Parameters = <
      item
        Name = 'IdPuesto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdBateriaCapacitacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
end
