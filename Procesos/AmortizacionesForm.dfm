inherited frmAmortizaciones: TfrmAmortizaciones
  Caption = 'Amortizaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    ExplicitTop = 333
    ExplicitWidth = 635
  end
  inherited splDetail1: TSplitter
    ExplicitTop = 245
    ExplicitWidth = 635
  end
  inherited splDetail2: TSplitter
    ExplicitTop = 289
    ExplicitWidth = 635
  end
  inherited pnlMaster: TPanel
    ExplicitWidth = 635
    ExplicitHeight = 214
    inherited cxGrid: TcxGrid
      ExplicitWidth = 635
      ExplicitHeight = 214
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
  inherited pnlDetail3: TPanel
    ExplicitTop = 336
    ExplicitWidth = 635
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 292
    ExplicitWidth = 635
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 248
    ExplicitWidth = 635
  end
  inherited pnlClose: TPanel
    ExplicitTop = 377
    ExplicitWidth = 635
    inherited btnClose: TButton
      ExplicitLeft = 550
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
      ReportDocument.CreationDate = 42688.699287557880000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
