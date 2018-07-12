inherited frmConceptos: TfrmConceptos
  Caption = 'frmConceptosGrid'
  ClientWidth = 885
  OnClose = FormClose
  ExplicitWidth = 885
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 885
    ExplicitWidth = 885
  end
  inherited splDetail1: TSplitter
    Width = 885
    ExplicitWidth = 885
  end
  inherited splDetail2: TSplitter
    Width = 885
    ExplicitWidth = 885
  end
  inherited pnlMaster: TPanel
    Width = 885
    ExplicitWidth = 885
    inherited cxGrid: TcxGrid
      Width = 885
      ExplicitWidth = 885
      inherited tvMaster: TcxGridDBTableView
        OptionsBehavior.IncSearch = False
        OptionsData.Deleting = True
        OptionsData.Editing = True
        OptionsData.Inserting = True
        object tvMasterIdCFDIConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIConcepto'
          Visible = False
        end
        object tvMasterIdCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI'
          Visible = False
        end
        object tvMasterIdUnidadMedida: TcxGridDBColumn
          DataBinding.FieldName = 'IdUnidadMedida'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarDetalle'
          Visible = False
        end
        object tvMasterSATClaveProdServ: TcxGridDBColumn
          DataBinding.FieldName = 'SATClaveProdServ'
          Width = 118
        end
        object tvMasterNoIdentifica: TcxGridDBColumn
          DataBinding.FieldName = 'NoIdentifica'
          Width = 118
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 300
        end
        object tvMasterCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
        object tvMasterUnidad: TcxGridDBColumn
          DataBinding.FieldName = 'Unidad'
        end
        object tvMasterSATClaveUnidad: TcxGridDBColumn
          DataBinding.FieldName = 'SATClaveUnidad'
          Width = 77
        end
        object tvMasterValorUnitario: TcxGridDBColumn
          DataBinding.FieldName = 'ValorUnitario'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterDescuento: TcxGridDBColumn
          DataBinding.FieldName = 'Descuento'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 885
    ExplicitWidth = 885
  end
  inherited pnlDetail2: TPanel
    Width = 885
    ExplicitWidth = 885
  end
  inherited pnlDetail1: TPanel
    Width = 885
    ExplicitWidth = 885
  end
  inherited pnlClose: TPanel
    Width = 885
    ExplicitWidth = 885
    inherited btnClose: TButton
      Left = 800
      ExplicitLeft = 800
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmFacturas.adodsCFDIConceptos
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
      ReportDocument.CreationDate = 42699.356933969910000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
