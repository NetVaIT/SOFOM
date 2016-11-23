inherited frmPuestosCapacitaciones: TfrmPuestosCapacitaciones
  Caption = 'frmPuestosCapacitaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited pnlAviable: TPanel
      inherited cxGridAvailable: TcxGrid
        TabOrder = 1
        inherited tvAvailable: TcxGridDBTableView
          object tvAviableIdBateriaCapacitacion: TcxGridDBColumn
            DataBinding.FieldName = 'IdBateriaCapacitacion'
            Visible = False
          end
          object tvAviableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 350
          end
        end
      end
    end
    inherited pnlAssigned: TPanel
      inherited cxGridAssigned: TcxGrid
        inherited tvAssigned: TcxGridDBTableView
          object tvAssignedIdBateriaCapacitacion: TcxGridDBColumn
            DataBinding.FieldName = 'IdBateriaCapacitacion'
            Visible = False
          end
          object tvAssignedDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 350
          end
        end
      end
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dsAvailable: TDataSource
    DataSet = dmPuestosCapacitaciones.adoqAvailable
  end
  inherited dsAssigned: TDataSource
    DataSet = dmPuestosCapacitaciones.adoqAssigned
  end
end
