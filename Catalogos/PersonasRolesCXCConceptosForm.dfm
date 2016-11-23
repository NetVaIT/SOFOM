inherited frmPersonasRolesCXCConceptos: TfrmPersonasRolesCXCConceptos
  Caption = 'frmPersonasRolesCXCConceptos'
  ExplicitWidth = 867
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited pnlAviable: TPanel
      inherited cxGridAvailable: TcxGrid
        inherited tvAvailable: TcxGridDBTableView
          object tvAvailableIdCuentaXCobrarConcepto: TcxGridDBColumn
            DataBinding.FieldName = 'IdCuentaXCobrarConcepto'
            Visible = False
          end
          object tvAvailableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
        end
      end
    end
    inherited pnlAssigned: TPanel
      inherited cxGridAssigned: TcxGrid
        inherited tvAssigned: TcxGridDBTableView
          object tvAssignedIdCuentaXCobrarConcepto: TcxGridDBColumn
            DataBinding.FieldName = 'IdCuentaXCobrarConcepto'
            Visible = False
          end
          object tvAssignedDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
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
end
