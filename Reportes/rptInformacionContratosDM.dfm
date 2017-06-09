inherited DMRptInformacionContratos: TDMRptInformacionContratos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'Select c.IdContratoEstatus, c.IdContrato,c.Identificador as Cont' +
      'rato,P.RazonSocial '#13#10',a. idAnexo, A.Identificador Anexo, a.Engan' +
      'chePorcentaje, '#13#10'a.MontoFinanciar,A.MontoVencido, A.CapitalCobra' +
      'do,A.SaldoInsoluto, A.Enganche'#13#10',Pr.IdProducto, Pr.Identificador' +
      ' as Producto, Pr.PorcentajeAnexo, '#13#10' Pr.DepreciacionComercial,PR' +
      '.DepreciacionContable, '#13#10#13#10'A.Enganche+a.MontoFinanciar as sumaAn' +
      'exo,'#13#10'Pr.PrecioTotal, case when vPaXPro.TotalPagadoProducto is n' +
      'ull then 0 else vPaXPro.TotalPagadoProducto end as TotalPagadoPr' +
      'od,'#13#10'((Pr.PrecioTotal*(1-(a.EnganchePorcentaje)/100)) - (case wh' +
      'en vPaXPro.TotalPagadoProducto is null then 0 else vPaXPro.Total' +
      'PagadoProducto end)) as SaldoInsolutoXProd,'#13#10#13#10'(Pr.PrecioTotal*(' +
      '1-(a.EnganchePorcentaje)/100)) AfinanciarXprod,'#13#10' '#13#10'(a.Montovenc' +
      'ido/ a.MontoFinanciar )*(Pr.PrecioTotal*(1-(a.EnganchePorcentaje' +
      ')/100)) as VencidoXProd'#13#10#13#10#13#10#13#10'from Contratos C'#13#10'inner Join Pers' +
      'onas P on  P. IdPersona=C.IdPersona'#13#10'inner join Anexos A on A. I' +
      'dContrato=c.IdContrato'#13#10#13#10'inner join Productos PR on PR.IdAnexo=' +
      'A.IdAnexo'#13#10'left join vw_PagosXProducto vPaXPro on VPaXPro.IdProd' +
      'ucto=Pr.IdProducto'#13#10
    Left = 32
    object adodsMasterIdContratoEstatus: TIntegerField
      FieldName = 'IdContratoEstatus'
    end
    object adodsMasterIdContrato: TAutoIncField
      FieldName = 'IdContrato'
      ReadOnly = True
    end
    object adodsMasterContrato: TStringField
      FieldName = 'Contrato'
    end
    object adodsMasterRazonSocial: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasteridAnexo: TAutoIncField
      FieldName = 'idAnexo'
      ReadOnly = True
    end
    object adodsMasterAnexo: TStringField
      FieldName = 'Anexo'
      Size = 5
    end
    object adodsMasterMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Monto a Financiar'
      FieldName = 'MontoFinanciar'
      Precision = 18
      Size = 6
    end
    object adodsMasterMontoVencido: TFMTBCDField
      DisplayLabel = 'Monto Vencido'
      FieldName = 'MontoVencido'
      Precision = 18
      Size = 6
    end
    object adodsMasterCapitalCobrado: TFMTBCDField
      DisplayLabel = 'Capital Cobrado'
      FieldName = 'CapitalCobrado'
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldoInsoluto: TFMTBCDField
      DisplayLabel = 'Saldo Insoluto'
      FieldName = 'SaldoInsoluto'
      Precision = 18
      Size = 6
    end
    object adodsMasterEnganche: TFMTBCDField
      FieldName = 'Enganche'
      Precision = 18
      Size = 6
    end
    object adodsMasterIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
    end
    object adodsMasterProducto: TStringField
      FieldName = 'Producto'
      Size = 10
    end
    object adodsMasterPorcentajeAnexo: TBCDField
      DisplayLabel = 'Porcentaje Anexo'
      FieldName = 'PorcentajeAnexo'
      DisplayFormat = '###.00 %'
      Precision = 19
    end
    object adodsMasterDepreciacionComercial: TBCDField
      DisplayLabel = 'Depreciacion Comercial'
      FieldName = 'DepreciacionComercial'
      Precision = 19
    end
    object adodsMasterDepreciacionContable: TBCDField
      DisplayLabel = 'Depreciacion Contable'
      FieldName = 'DepreciacionContable'
      Precision = 19
    end
    object adodsMasterPrecioTotal: TBCDField
      DisplayLabel = 'Precio Total'
      FieldName = 'PrecioTotal'
      currency = True
      Precision = 19
    end
    object adodsMasterEnganchePorcentaje: TFMTBCDField
      FieldName = 'EnganchePorcentaje'
      Precision = 18
      Size = 6
    end
    object adodsMastersumaAnexo: TFMTBCDField
      FieldName = 'sumaAnexo'
      ReadOnly = True
      currency = True
      Precision = 19
      Size = 6
    end
    object adodsMasterTotalPagadoProd: TFMTBCDField
      FieldName = 'TotalPagadoProd'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterAfinanciarXprod: TFMTBCDField
      FieldName = 'AfinanciarXprod'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 9
    end
    object adodsMasterVencidoXProd: TFMTBCDField
      FieldName = 'VencidoXProd'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
    object adodsMasterSaldoInsolutoXProd: TFMTBCDField
      FieldName = 'SaldoInsolutoXProd'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 6
    end
  end
end
