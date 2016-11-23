inherited frmTelefonos: TfrmTelefonos
  Caption = 'frmTelefonos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'IdTelefono'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdTelefonoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdTelefonoTipo'
          Visible = False
        end
        object tvMasterTelefonoTipo: TcxGridDBColumn
          Caption = 'Tipo de Telefono'
          DataBinding.FieldName = 'TelefonoTipo'
        end
        object tvMasterLada: TcxGridDBColumn
          DataBinding.FieldName = 'Lada'
        end
        object tvMasterTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
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
      ReportDocument.CreationDate = 42593.696307164350000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
