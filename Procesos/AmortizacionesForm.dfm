inherited frmAmortizaciones: TfrmAmortizaciones
  Caption = 'frmAmortizaciones'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvMasterSegmento: TcxGridDBColumn
          DataBinding.FieldName = 'Segmento'
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterSaldoInicial: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoInicial'
          Width = 100
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
          Width = 100
        end
        object tvMasterPago: TcxGridDBColumn
          DataBinding.FieldName = 'Pago'
          Width = 100
        end
        object tvMasterCapital: TcxGridDBColumn
          DataBinding.FieldName = 'Capital'
          Width = 100
        end
        object tvMasterCapitalImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalImpuesto'
          Width = 100
        end
        object tvMasterCapitalTotal: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalTotal'
          Width = 100
        end
        object tvMasterInteres: TcxGridDBColumn
          DataBinding.FieldName = 'Interes'
          Width = 100
        end
        object tvMasterInteresImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'InteresImpuesto'
          Width = 100
        end
        object tvMasterInteresTotal: TcxGridDBColumn
          DataBinding.FieldName = 'InteresTotal'
          Width = 100
        end
        object tvMasterSaldoFinal: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFinal'
          Width = 100
        end
        object tvMasterPagoTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PagoTotal'
          Width = 100
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmAmortizaciones.dxmAmortizaciones
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
      ReportDocument.CreationDate = 42688.699287557870000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
