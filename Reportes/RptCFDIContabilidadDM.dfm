inherited dmRptCFDIContabilidad: TdmRptCFDIContabilidad
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        CFDI.IdCFDI, CFDI.IdCFDITipoDocumento, CFDI.Fecha,' +
      ' CONCAT(CFDI.Serie, CFDI.Folio) AS Folio, CFDI.UUID_TB, CFDITipo' +
      'Documento.SATClave AS Tipo, CFDIEstatus.Descripcion AS Estatus, ' +
      'Personas.RazonSocial AS Cliente, '#13#10'                         Cont' +
      'ratosTipos.Identificador AS TipoContrato, (C.SIN_ASIGNAR+C.SIN_C' +
      'ONTRATO) AS SIN_ASIGNAR, C.CS_INT, C.CS_ENGANCHE, C.CS_COM_APER,' +
      ' C.CS_GASTOSADM, C.CS_ABONOCAP, C.CS_INTM, C.CS_VR, C.CS_OC, C.A' +
      'F_CAP, C.AF_INT, '#13#10'                         C.AF_ENGANCHE, C.AF_' +
      'COM_APER, C.AF_GASTOSADM, C.AF_ABONOCAP, C.AF_INTM, C.AF_VR, C.A' +
      'F_OC, C.AP_RENTA, C.AP_ENGANCHE, C.AP_COM_APER, C.AP_GASTOSADM, ' +
      'C.AP_ABONOCAP, C.AP_INTM, C.AP_VR, '#13#10'                         C.' +
      'AP_OC, CFDI.SubTotal, CFDI.Descto, CFDI.TotalImpuestoTrasladado,' +
      ' CFDI.Total'#13#10'FROM            CFDI INNER JOIN'#13#10'                  ' +
      '       CFDITipoDocumento ON CFDI.IdCFDITipoDocumento = CFDITipoD' +
      'ocumento.IdCFDITipoDocumento INNER JOIN'#13#10'                       ' +
      '  CFDIEstatus ON CFDI.IdCFDIEstatus = CFDIEstatus.IdCFDIEstatus ' +
      'INNER JOIN'#13#10'                         Personas ON CFDI.IdPersonaR' +
      'eceptor = Personas.IdPersona INNER JOIN'#13#10'                       ' +
      '  v_CFDIConceptosTipo AS C ON CFDI.IdCFDI = C.IdCFDI LEFT OUTER ' +
      'JOIN'#13#10'                         CuentasXCobrar ON CFDI.IdCuentaXC' +
      'obrar = CuentasXCobrar.IdCuentaXCobrar LEFT OUTER JOIN'#13#10'        ' +
      '                 Anexos ON CuentasXCobrar.IdAnexo = Anexos.IdAne' +
      'xo LEFT OUTER JOIN'#13#10'                         Contratos ON Contra' +
      'tos.IdContrato = Anexos.IdContrato LEFT OUTER JOIN'#13#10'            ' +
      '             ContratosTipos ON Contratos.IdContratoTipo = Contra' +
      'tosTipos.IdContratoTipo'#13#10#9#9#9#9#9#9' WHERE CFDI.IdCFDITipoDocumento <' +
      '> 4'#13#10#13#10
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
      Visible = False
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterFolio: TStringField
      FieldName = 'Folio'
      ReadOnly = True
      Size = 44
    end
    object adodsMasterUUID_TB: TStringField
      DisplayLabel = 'UUID'
      FieldName = 'UUID_TB'
      Visible = False
      Size = 40
    end
    object adodsMasterTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object adodsMasterEstatus: TStringField
      FieldName = 'Estatus'
      Size = 15
    end
    object adodsMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsMasterTipoContrato: TStringField
      DisplayLabel = 'Tipo de cr'#233'dito'
      FieldName = 'TipoContrato'
      Size = 5
    end
    object adodsMasterSIN_ASIGNAR: TFMTBCDField
      DisplayLabel = 'Sin asignar'
      FieldName = 'SIN_ASIGNAR'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_INT: TFMTBCDField
      DisplayLabel = 'Intereses ordinarios (CS)'
      FieldName = 'CS_INT'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_ENGANCHE: TFMTBCDField
      DisplayLabel = 'Enganche (CS)'
      FieldName = 'CS_ENGANCHE'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_COM_APER: TFMTBCDField
      DisplayLabel = 'Comisiones (CS)'
      FieldName = 'CS_COM_APER'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_GASTOSADM: TFMTBCDField
      DisplayLabel = 'Gastos (CS)'
      FieldName = 'CS_GASTOSADM'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_ABONOCAP: TFMTBCDField
      DisplayLabel = 'Abono capital (CS)'
      FieldName = 'CS_ABONOCAP'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_INTM: TFMTBCDField
      DisplayLabel = 'Interes moratorio (CS)'
      FieldName = 'CS_INTM'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_VR: TFMTBCDField
      DisplayLabel = 'Valor residual (CS)'
      FieldName = 'CS_VR'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterCS_OC: TFMTBCDField
      DisplayLabel = 'Opci'#243'n compra (CS)'
      FieldName = 'CS_OC'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_CAP: TFMTBCDField
      DisplayLabel = 'Capital (AF)'
      FieldName = 'AF_CAP'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_INT: TFMTBCDField
      DisplayLabel = 'Intereses ordinarios (AF)'
      FieldName = 'AF_INT'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_ENGANCHE: TFMTBCDField
      DisplayLabel = 'Enganche (AF)'
      FieldName = 'AF_ENGANCHE'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_COM_APER: TFMTBCDField
      DisplayLabel = 'Comisiones (AF)'
      FieldName = 'AF_COM_APER'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_GASTOSADM: TFMTBCDField
      DisplayLabel = 'Gastos (AF)'
      FieldName = 'AF_GASTOSADM'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_ABONOCAP: TFMTBCDField
      DisplayLabel = 'Abono capital (AF)'
      FieldName = 'AF_ABONOCAP'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_INTM: TFMTBCDField
      DisplayLabel = 'Interes moratorio (AF)'
      FieldName = 'AF_INTM'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_VR: TFMTBCDField
      DisplayLabel = 'Valor residual (AF)'
      FieldName = 'AF_VR'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAF_OC: TFMTBCDField
      DisplayLabel = 'Opci'#243'n compra (AF)'
      FieldName = 'AF_OC'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_RENTA: TFMTBCDField
      DisplayLabel = 'Renta (AP)'
      FieldName = 'AP_RENTA'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_ENGANCHE: TFMTBCDField
      DisplayLabel = 'Enganche (AP)'
      FieldName = 'AP_ENGANCHE'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_COM_APER: TFMTBCDField
      DisplayLabel = 'Comisiones (AP)'
      FieldName = 'AP_COM_APER'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_GASTOSADM: TFMTBCDField
      DisplayLabel = 'Gastos (AP)'
      FieldName = 'AP_GASTOSADM'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_ABONOCAP: TFMTBCDField
      DisplayLabel = 'Abono capital (AP)'
      FieldName = 'AP_ABONOCAP'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_INTM: TFMTBCDField
      DisplayLabel = 'Interes moratorio (AP)'
      FieldName = 'AP_INTM'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_VR: TFMTBCDField
      DisplayLabel = 'Valor residual (AP)'
      FieldName = 'AP_VR'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAP_OC: TFMTBCDField
      DisplayLabel = 'Opci'#243'n compra (AP)'
      FieldName = 'AP_OC'
      ReadOnly = True
      Visible = False
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterSubTotal: TFloatField
      FieldName = 'SubTotal'
      currency = True
    end
    object adodsMasterDescto: TFloatField
      DisplayLabel = 'Descuento'
      FieldName = 'Descto'
      currency = True
    end
    object adodsMasterTotalImpuestoTrasladado: TFloatField
      DisplayLabel = 'Impuesto'
      FieldName = 'TotalImpuestoTrasladado'
      currency = True
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
  end
end
