inherited frmPuestosCapacitacion: TfrmPuestosCapacitacion
  Caption = 'frmPuestosCapacitacion'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPuestoCapacitacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuestoCapacitacion'
          Visible = False
        end
        object tvMasterIdPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuesto'
          Visible = False
        end
        object tvMasterIdBateriaCapacitacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdBateriaCapacitacion'
          Visible = False
        end
        object tvMasterBateriaCapacitacion: TcxGridDBColumn
          DataBinding.FieldName = 'BateriaCapacitacion'
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
end
