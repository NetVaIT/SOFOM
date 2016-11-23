inherited frmPersonasContacto: TfrmPersonasContacto
  Caption = 'frmPersonasContacto'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaContacto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaContacto'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdContacto: TcxGridDBColumn
          DataBinding.FieldName = 'IdContacto'
          Visible = False
        end
        object tvMasterContacto: TcxGridDBColumn
          DataBinding.FieldName = 'Contacto'
        end
        object tvMasterPrincipal: TcxGridDBColumn
          DataBinding.FieldName = 'Principal'
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
      BuiltInReportLink = True
    end
  end
end
