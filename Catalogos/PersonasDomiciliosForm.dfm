inherited frmPersonasDomicilios: TfrmPersonasDomicilios
  Caption = 'frmPersonasDomicilios'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        Preview.Column = tvMasterDomicilio
        Preview.Visible = True
        object tvMasterIdPersonaDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaDomicilio'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilio'
          Visible = False
        end
        object tvMasterIdDomicilioTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilioTipo'
          Visible = False
        end
        object tvMasterDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'Domicilio'
          Width = 500
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
        end
        object tvMasterPredeterminado: TcxGridDBColumn
          DataBinding.FieldName = 'Predeterminado'
          Width = 81
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
      ReportDocument.CreationDate = 42593.695732974530000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
