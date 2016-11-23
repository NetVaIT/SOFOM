inherited frmAnexosProductos: TfrmAnexosProductos
  Caption = 'frmAnexosProductos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      ExplicitTop = -3
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        OptionsData.Inserting = True
        object tvMasterIdAnexoProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoProducto'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterProducto: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          Width = 500
        end
      end
    end
  end
  inherited DataSource: TDataSource
    AutoEdit = True
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
    inherited dxbTools: TdxBar
      DockedLeft = 279
    end
    object dxBarButton8: TdxBarButton
      Action = DatasetPost
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = DatasetCancel
      Category = 0
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42684.460569618060000000
      BuiltInReportLink = True
    end
  end
end
