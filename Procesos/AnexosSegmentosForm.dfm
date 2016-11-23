inherited frmAnexosSegmentos: TfrmAnexosSegmentos
  Caption = 'frmAnexosSegmentos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexoSegmento: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoSegmento'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterSegmento: TcxGridDBColumn
          DataBinding.FieldName = 'Segmento'
        end
        object tvMasterValorPresente: TcxGridDBColumn
          DataBinding.FieldName = 'ValorPresente'
        end
        object tvMasterPeriodoInicial: TcxGridDBColumn
          DataBinding.FieldName = 'PeriodoInicial'
          Width = 69
        end
        object tvMasterPeriodoFinal: TcxGridDBColumn
          DataBinding.FieldName = 'PeriodoFinal'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
        end
        object tvMasterPagoMensual: TcxGridDBColumn
          DataBinding.FieldName = 'PagoMensual'
        end
        object tvMasterValorFuturo: TcxGridDBColumn
          DataBinding.FieldName = 'ValorFuturo'
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
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42688.733104155090000000
      BuiltInReportLink = True
    end
  end
end
