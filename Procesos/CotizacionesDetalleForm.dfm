inherited frmCotizacionesDetalle: TfrmCotizacionesDetalle
  Caption = 'frmCotizacionesDetalle'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCotizacionDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionDetalle'
          Visible = False
        end
        object tvMasterIdCotizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacion'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdCotizacionDetalleEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionDetalleEstatus'
          Visible = False
        end
        object tvMasterIdUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuario'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
        end
        object tvMasterPrecioMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioMoneda'
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 200
        end
        object tvMasterTipoCambio: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCambio'
        end
        object tvMasterPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
        end
        object tvMasterImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
        end
        object tvMasterPrecioTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioTotal'
        end
        object tvMasterEnganchePorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'EnganchePorcentaje'
        end
        object tvMasterEnganche: TcxGridDBColumn
          DataBinding.FieldName = 'Enganche'
        end
        object tvMasterComisionPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'ComisionPorcentaje'
        end
        object tvMasterComision: TcxGridDBColumn
          DataBinding.FieldName = 'Comision'
        end
        object tvMasterComisionImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'ComisionImpuesto'
        end
        object tvMasterGastos: TcxGridDBColumn
          DataBinding.FieldName = 'Gastos'
        end
        object tvMasterGastosImpuestos: TcxGridDBColumn
          DataBinding.FieldName = 'GastosImpuestos'
        end
        object tvMasterDespositosNumero: TcxGridDBColumn
          DataBinding.FieldName = 'DespositosNumero'
        end
        object tvMasterDepositos: TcxGridDBColumn
          DataBinding.FieldName = 'Depositos'
        end
        object tvMasterPagoIncial: TcxGridDBColumn
          DataBinding.FieldName = 'PagoIncial'
        end
        object tvMasterOpcionCompraPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'OpcionCompraPorcentaje'
        end
        object tvMasterOpcionCompra: TcxGridDBColumn
          DataBinding.FieldName = 'OpcionCompra'
        end
        object tvMasterValorResidualPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidualPorcentaje'
        end
        object tvMasterValorResidual: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidual'
        end
        object tvMasterMontoFinanciar: TcxGridDBColumn
          DataBinding.FieldName = 'MontoFinanciar'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
        end
        object tvMasterPlazo: TcxGridDBColumn
          DataBinding.FieldName = 'Plazo'
        end
        object tvMasterPagoMensual: TcxGridDBColumn
          DataBinding.FieldName = 'PagoMensual'
        end
        object tvMasterImpactoISR: TcxGridDBColumn
          DataBinding.FieldName = 'ImpactoISR'
        end
        object tvMasterRegistro: TcxGridDBColumn
          DataBinding.FieldName = 'Registro'
        end
        object tvMasterUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
        end
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbbAmortizaciones'
        end>
    end
    object dxbbAmortizaciones: TdxBarButton
      Caption = 'Amortizaciones'
      Category = 0
      Visible = ivAlways
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42828.563385358790000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
