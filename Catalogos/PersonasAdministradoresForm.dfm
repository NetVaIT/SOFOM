inherited frmPersonasAdministradores: TfrmPersonasAdministradores
  Caption = 'Administradores'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaAdministrador: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaAdministrador'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdAdministrador: TcxGridDBColumn
          DataBinding.FieldName = 'IdAdministrador'
          Visible = False
        end
        object tvMasterAdministrador: TcxGridDBColumn
          DataBinding.FieldName = 'Administrador'
          Width = 300
        end
        object tvMasterRFC: TcxGridDBColumn
          DataBinding.FieldName = 'RFC'
          Width = 124
        end
        object tvMasterCargo: TcxGridDBColumn
          DataBinding.FieldName = 'Cargo'
        end
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
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
      ReportDocument.CreationDate = 43301.692780787040000000
      BuiltInReportLink = True
    end
  end
end