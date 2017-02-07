inherited frmPersonasAccionistas: TfrmPersonasAccionistas
  Caption = 'frmPersonasAccionistas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaAccionista: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaAccionista'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdAccionista: TcxGridDBColumn
          DataBinding.FieldName = 'IdAccionista'
          Visible = False
        end
        object tvMasterAccionista: TcxGridDBColumn
          DataBinding.FieldName = 'Accionista'
          Width = 300
        end
        object tvMasterPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'Porcentaje'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasAccionistas.adodsMaster
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
      ReportDocument.CreationDate = 42769.723728773150000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
