inherited dmPlazasTurnos: TdmPlazasTurnos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPlazaTurno, Identificador, Descripcion, HoraEntrada, Ho' +
      'raSalida, HoraAlimentosInicio, HoraAlimentosFin FROM PlazasTurno' +
      's'
    object adodsMasterIdPlazaTurno: TIntegerField
      FieldName = 'IdPlazaTurno'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterHoraEntrada: TDateTimeField
      DisplayLabel = 'Hora Entrada'
      FieldName = 'HoraEntrada'
    end
    object adodsMasterHoraSalida: TDateTimeField
      DisplayLabel = 'Hora Salida'
      FieldName = 'HoraSalida'
    end
    object adodsMasterHoraAlimentosInicio: TDateTimeField
      DisplayLabel = 'Hora Alimentos Inicio'
      FieldName = 'HoraAlimentosInicio'
    end
    object adodsMasterHoraAlimentosFin: TDateTimeField
      DisplayLabel = 'Hora Alimentos Fin'
      FieldName = 'HoraAlimentosFin'
    end
  end
end
