inherited dmRolesEsquemasPagos: TdmRolesEsquemasPagos
  OldCreateOrder = True
  inherited adoqAvailable: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdRol'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdEsquemaPago, Descripcion'
      'FROM EsquemaPagos'
      
        'WHERE (IdEsquemaPago NOT IN (SELECT IdEsquemaPago FROM RolesEsqu' +
        'emasPagos WHERE IdRol = :IdRol))'
      'ORDER BY Descripcion')
    object adoqAvailableIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Esquemas de pago disponibles'
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  inherited adoqAssigned: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdRol'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IdEsquemaPago, Descripcion'
      'FROM EsquemaPagos'
      
        'WHERE (IdEsquemaPago IN (SELECT IdEsquemaPago FROM RolesEsquemas' +
        'Pagos WHERE IdRol = :IdRol))'
      'ORDER BY Descripcion'
      '')
    object adoqAssignedIdEsquemaPago: TIntegerField
      FieldName = 'IdEsquemaPago'
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      DisplayLabel = 'Esquemas de pago asignados'
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  inherited adocAdd: TADOCommand
    CommandText = 
      'INSERT INTO RolesEsquemasPagos (IdEsquemaPago, IdRol)'#13#10'VALUES (:' +
      'IdEsquemaPago, :IdRol)'#13#10
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited adocDelete: TADOCommand
    CommandText = 
      'DELETE FROM RolesEsquemasPagos'#13#10'WHERE IdEsquemaPago = :IdEsquema' +
      'Pago AND IdRol = :IdRol'#13#10
    Parameters = <
      item
        Name = 'IdEsquemaPago'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited ActionList: TActionList
    inherited actViewAviable: TAction
      Visible = True
      OnExecute = actViewAviableExecute
    end
    inherited actViewAssigned: TAction
      Visible = True
      OnExecute = actViewAssignedExecute
    end
  end
end
