inherited frmConfiguraciones: TfrmConfiguraciones
  Caption = 'frmConfiguraciones'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 200
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 200
        end
        object tvMasterRutaBaseFacturas: TcxGridDBColumn
          DataBinding.FieldName = 'RutaBaseFacturas'
          Width = 200
        end
        object tvMasterRutaBasePagos: TcxGridDBColumn
          DataBinding.FieldName = 'RutaBasePagos'
          Width = 200
        end
        object tvMasterUltimoFolioPago: TcxGridDBColumn
          DataBinding.FieldName = 'UltimoFolioPago'
          Width = 124
        end
        object tvMasterUltimaSeriePago: TcxGridDBColumn
          DataBinding.FieldName = 'UltimaSeriePago'
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DatasetInsert: TDataSetInsert
      Visible = False
    end
    inherited DatasetDelete: TDataSetDelete
      Visible = False
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
      ReportDocument.CreationDate = 42790.505809502310000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
