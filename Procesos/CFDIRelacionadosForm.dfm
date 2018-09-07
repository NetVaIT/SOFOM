inherited frmCFDIRelacionados: TfrmCFDIRelacionados
  Caption = 'CFDI relacionados'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        OptionsData.Inserting = True
        object tvMasterIdCFDIRelacionado: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIRelacionado'
          Visible = False
        end
        object tvMasterIDCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDI'
          Visible = False
        end
        object tvMasterIDCFDIAsociado: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDIAsociado'
          Visible = False
        end
        object tvMasterCFDIAsociado: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIAsociado'
        end
        object tvMasterUUID: TcxGridDBColumn
          DataBinding.FieldName = 'UUID'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCFDIRelacionados.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 150
    end
    inherited dxbEdit: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Insert1'
        end
        item
          Visible = True
          ItemName = 'Edit1'
        end
        item
          Visible = True
          ItemName = 'Delete1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    inherited dxbTools: TdxBar
      DockedLeft = 277
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
      ReportDocument.CreationDate = 43165.499007245380000000
      BuiltInReportLink = True
    end
  end
end
