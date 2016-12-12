inherited frmAnexosAmortizaciones: TfrmAnexosAmortizaciones
  Caption = 'frmAnexosAmortizaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexoAmortizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoAmortizacion'
          Visible = False
        end
        object tvMasterIdAnexoCredito: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoCredito'
          Visible = False
        end
        object tvMasterIdAnexoSegmento: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoSegmento'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
          Visible = False
        end
        object tvMasterSaldoInicial: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoInicial'
        end
        object tvMasterCapital: TcxGridDBColumn
          DataBinding.FieldName = 'Capital'
        end
        object tvMasterCapitalImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalImpuesto'
        end
        object tvMasterCapitalTotal: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalTotal'
        end
        object tvMasterInteres: TcxGridDBColumn
          DataBinding.FieldName = 'Interes'
        end
        object tvMasterInteresImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'InteresImpuesto'
        end
        object tvMasterInteresTotal: TcxGridDBColumn
          DataBinding.FieldName = 'InteresTotal'
        end
        object tvMasterImpactoISR: TcxGridDBColumn
          DataBinding.FieldName = 'ImpactoISR'
        end
        object tvMasterPago: TcxGridDBColumn
          DataBinding.FieldName = 'Pago'
        end
        object tvMasterPagoTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PagoTotal'
        end
        object tvMasterSaldoFinal: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFinal'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmContratos.adodsAmortizaciones
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42691.490725081020000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
