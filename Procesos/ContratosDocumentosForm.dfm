inherited frmContratosDocumentos: TfrmContratosDocumentos
  Caption = 'frmContratosDocumentos'
  ExplicitWidth = 867
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited pnlAviable: TPanel
      inherited cxGridAvailable: TcxGrid
        inherited tvAvailable: TcxGridDBTableView
          object tvAvailableIdPersonaDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'IdPersonaDocumento'
            Visible = False
          end
          object tvAvailableIdPersona: TcxGridDBColumn
            DataBinding.FieldName = 'IdPersona'
            Visible = False
          end
          object tvAvailableIdDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'IdDocumento'
            Visible = False
          end
          object tvAvailableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
          object tvAvailableRazonSocial: TcxGridDBColumn
            DataBinding.FieldName = 'RazonSocial'
          end
          object tvAvailableFechaEmision: TcxGridDBColumn
            DataBinding.FieldName = 'FechaEmision'
          end
        end
      end
    end
    inherited pnlAssigned: TPanel
      inherited cxGridAssigned: TcxGrid
        inherited tvAssigned: TcxGridDBTableView
          object tvAssignedIdPersonaDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'IdPersonaDocumento'
            Visible = False
          end
          object tvAssignedIdPersona: TcxGridDBColumn
            DataBinding.FieldName = 'IdPersona'
            Visible = False
          end
          object tvAssignedIdDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'IdDocumento'
            Visible = False
          end
          object tvAssignedDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
          object tvAssignedRazonSocial: TcxGridDBColumn
            DataBinding.FieldName = 'RazonSocial'
          end
          object tvAssignedFechaEmision: TcxGridDBColumn
            DataBinding.FieldName = 'FechaEmision'
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
    DataSet = dmContratosDocumentos.adoqAvailable
  end
  inherited dsAssigned: TDataSource
    DataSet = dmContratosDocumentos.adoqAssigned
  end
end
