inherited frmEmails: TfrmEmails
  Caption = 'frmEmails'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdEmail: TcxGridDBColumn
          DataBinding.FieldName = 'IdEmail'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdEmailTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdEmailTipo'
          Visible = False
        end
        object tvMasterEmail: TcxGridDBColumn
          Caption = 'e-Mail'
          DataBinding.FieldName = 'Email'
          Width = 300
        end
        object tvMasterEmailTipo: TcxGridDBColumn
          Caption = 'Tipo e-Mail'
          DataBinding.FieldName = 'EmailTipo'
        end
        object tvMasterPredeterminado: TcxGridDBColumn
          DataBinding.FieldName = 'Predeterminado'
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
      ReportDocument.CreationDate = 42593.696668854170000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
