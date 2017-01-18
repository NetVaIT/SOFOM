inherited dmContratosDocumentos: TdmContratosDocumentos
  OldCreateOrder = True
  inherited adoqAvailable: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdPersona2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdContrato'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT PersonasDocumentos.IdPersonaDocumento, PersonasDocumentos' +
        '.IdPersona, PersonasDocumentos.IdDocumento, PersonasDocumentos.D' +
        'escripcion, Personas.RazonSocial, '
      'PersonasDocumentos.FechaEmision'
      'FROM PersonasDocumentos '
      
        'INNER JOIN Personas ON PersonasDocumentos.IdPersona = Personas.I' +
        'dPersona'
      'WHERE (PersonasDocumentos.IdPersona = :IdPersona1'
      
        'OR PersonasDocumentos.IdPersona IN (SELECT IdContacto FROM Perso' +
        'nasContactos WHERE IdPersona = :IdPersona2))'
      
        'AND PersonasDocumentos.IdPersonaDocumento NOT IN (SELECT IdPerso' +
        'naDocumento FROM ContratosDocumentos WHERE IdContrato = :IdContr' +
        'ato)')
    object adoqAvailableIdPersonaDocumento: TAutoIncField
      FieldName = 'IdPersonaDocumento'
      ReadOnly = True
      Visible = False
    end
    object adoqAvailableIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adoqAvailableIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adoqAvailableDescripcion: TStringField
      DisplayLabel = 'Documento disponible'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adoqAvailableRazonSocial: TStringField
      DisplayLabel = 'Pertenece a'
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adoqAvailableFechaEmision: TDateTimeField
      DisplayLabel = 'Fecha emision'
      FieldName = 'FechaEmision'
    end
  end
  inherited adoqAssigned: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdPersona2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdContrato'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT PersonasDocumentos.IdPersonaDocumento, PersonasDocumentos' +
        '.IdPersona, PersonasDocumentos.IdDocumento, PersonasDocumentos.D' +
        'escripcion, Personas.RazonSocial, '
      'PersonasDocumentos.FechaEmision'
      'FROM PersonasDocumentos '
      
        'INNER JOIN Personas ON PersonasDocumentos.IdPersona = Personas.I' +
        'dPersona'
      'WHERE (PersonasDocumentos.IdPersona = :IdPersona1'
      
        'OR PersonasDocumentos.IdPersona IN (SELECT IdContacto FROM Perso' +
        'nasContactos WHERE IdPersona = :IdPersona2))'
      
        'AND PersonasDocumentos.IdPersonaDocumento IN (SELECT IdPersonaDo' +
        'cumento FROM ContratosDocumentos WHERE IdContrato = :IdContrato)')
    object adoqAssignedIdPersonaDocumento: TAutoIncField
      FieldName = 'IdPersonaDocumento'
      ReadOnly = True
      Visible = False
    end
    object adoqAssignedIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adoqAssignedIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adoqAssignedDescripcion: TStringField
      DisplayLabel = 'Documento asignado'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adoqAssignedRazonSocial: TStringField
      DisplayLabel = 'Pertenece a'
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adoqAssignedFechaEmision: TDateTimeField
      DisplayLabel = 'Fecha emision'
      FieldName = 'FechaEmision'
    end
  end
  inherited adocAdd: TADOCommand
    CommandText = 
      'INSERT INTO ContratosDocumentos (IdContrato,IdPersonaDocumento)'#13 +
      #10'VALUES (:IdContrato, :IdPersonaDocumento)'
    Parameters = <
      item
        Name = 'IdContrato'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersonaDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  inherited adocDelete: TADOCommand
    CommandText = 
      'DELETE FROM ContratosDocumentos'#13#10'WHERE IdContrato = :IdContrato ' +
      'AND IdPersonaDocumento = :IdPersonaDocumento'#13#10
    Parameters = <
      item
        Name = 'IdContrato'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersonaDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
end
