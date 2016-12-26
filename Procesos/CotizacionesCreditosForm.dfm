inherited frmCotizacionesCreditos: TfrmCotizacionesCreditos
  Caption = 'frmCotizacionesCreditos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCotizacionCredito: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionCredito'
          Visible = False
        end
        object tvMasterIdCotizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacion'
          Visible = False
        end
        object tvMasterIdCotizacionCreditoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionCreditoEstatus'
          Visible = False
        end
        object tvMasterIdUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuario'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 100
        end
        object tvMasterMontoFinanciar: TcxGridDBColumn
          DataBinding.FieldName = 'MontoFinanciar'
        end
        object tvMasterValorResidual: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidual'
        end
        object tvMasterImpactoISR: TcxGridDBColumn
          DataBinding.FieldName = 'ImpactoISR'
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
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
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
      Action = dmCotizaciones.actAmortizaciones
      Category = 0
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
      ReportDocument.CreationDate = 42717.488781793980000000
      BuiltInReportLink = True
    end
  end
end
