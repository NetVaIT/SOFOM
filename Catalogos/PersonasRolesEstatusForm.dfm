inherited frmPersonasRolesEstatus: TfrmPersonasRolesEstatus
  Caption = 'frmPersonasRolesEstatus'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRolEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRolEstatus'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdRolEstarus: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolEstarus'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
