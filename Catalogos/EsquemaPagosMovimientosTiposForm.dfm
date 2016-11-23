inherited frmEsquemaPagosMovimientosTipos: TfrmEsquemaPagosMovimientosTipos
  Caption = 'Tipos de Movimiento'
  ExplicitWidth = 867
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited Splitter: TSplitter
      ExplicitLeft = 311
    end
    inherited pnlAviable: TPanel
      inherited cxGridAvailable: TcxGrid
        inherited tvAvailable: TcxGridDBTableView
          object tvAvailableIdMovimientoTipo: TcxGridDBColumn
            DataBinding.FieldName = 'IdMovimientoTipo'
            Visible = False
          end
          object tvAvailableIdentificador: TcxGridDBColumn
            DataBinding.FieldName = 'Identificador'
            Visible = False
          end
          object tvAvailableDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 184
          end
          object tvAvailableCategoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            Width = 184
          end
          object tvAvailableEfecto: TcxGridDBColumn
            DataBinding.FieldName = 'Efecto'
            Width = 184
          end
          object tvAvailableProduceCXC: TcxGridDBColumn
            DataBinding.FieldName = 'ProduceCXC'
            Width = 67
          end
          object tvAvailableProduceCXP: TcxGridDBColumn
            DataBinding.FieldName = 'ProduceCXP'
            Width = 66
          end
        end
      end
    end
    inherited pnlAssigned: TPanel
      inherited cxGridAssigned: TcxGrid
        inherited tvAssigned: TcxGridDBTableView
          object tvAssignedIdMovimientoTipo: TcxGridDBColumn
            DataBinding.FieldName = 'IdMovimientoTipo'
            Visible = False
          end
          object tvAssignedIdentificador: TcxGridDBColumn
            DataBinding.FieldName = 'Identificador'
            Visible = False
          end
          object tvAssignedDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 184
          end
          object tvAssignedCategoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            Width = 184
          end
          object tvAssignedEfecto: TcxGridDBColumn
            DataBinding.FieldName = 'Efecto'
            Width = 184
          end
          object tvAssignedProduceCXC: TcxGridDBColumn
            DataBinding.FieldName = 'ProduceCXC'
            Width = 67
          end
          object tvAssignedProduceCXP: TcxGridDBColumn
            DataBinding.FieldName = 'ProduceCXP'
            Width = 66
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
