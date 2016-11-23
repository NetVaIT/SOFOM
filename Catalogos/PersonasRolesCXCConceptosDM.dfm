inherited dmPersonaRolesCXCConceptos: TdmPersonaRolesCXCConceptos
  OldCreateOrder = True
  inherited adoqAvailable: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersonaRol'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT CuentasXCobrarConceptos.IdCuentaXCobrarConcepto, CuentasX' +
        'CobrarConceptos.Descripcion'
      'FROM CuentasXCobrarConceptos '
      
        'WHERE (CuentasXCobrarConceptos.IdCuentaXCobrarConcepto NOT IN (S' +
        'ELECT PersonasRolesCXCConceptos.IdCuentaXCobrarConcepto FROM Per' +
        'sonasRolesCXCConceptos WHERE PersonasRolesCXCConceptos.IdPersona' +
        'Rol = :IdPersonaRol))')
    object adoqAvailableIdCuentaXCobrarConcepto: TAutoIncField
      FieldName = 'IdCuentaXCobrarConcepto'
      ReadOnly = True
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  inherited adoqAssigned: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersonaRol'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT CuentasXCobrarConceptos.IdCuentaXCobrarConcepto, CuentasX' +
        'CobrarConceptos.Descripcion'
      'FROM CuentasXCobrarConceptos '
      
        'WHERE (CuentasXCobrarConceptos.IdCuentaXCobrarConcepto IN (SELEC' +
        'T PersonasRolesCXCConceptos.IdCuentaXCobrarConcepto FROM Persona' +
        'sRolesCXCConceptos WHERE PersonasRolesCXCConceptos.IdPersonaRol ' +
        '= :IdPersonaRol))')
    object adoqAssignedIdCuentaXCobrarConcepto: TAutoIncField
      FieldName = 'IdCuentaXCobrarConcepto'
      ReadOnly = True
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
  end
  inherited adocAdd: TADOCommand
    CommandText = 
      'INSERT INTO PersonasRolesCXCConceptos (IdPersonaRol, IdCuentaXCo' +
      'brarConcepto)'#13#10'VALUES (:IdPersonaRol, :IdCuentaXCobrarConcepto)'#13 +
      #10
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCuentaXCobrarConcepto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited adocDelete: TADOCommand
    CommandText = 
      'DELETE FROM PersonasRolesCXCConceptos'#13#10'WHERE IdPersonaRol = :IdP' +
      'ersonaRol AND IdCuentaXCobrarConcepto = :IdCuentaXCobrarConcepto' +
      #13#10
    Parameters = <
      item
        Name = 'IdPersonaRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdCuentaXCobrarConcepto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
end
