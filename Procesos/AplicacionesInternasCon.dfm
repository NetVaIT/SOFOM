inherited frmConAplicacionesInternas: TfrmConAplicacionesInternas
  Caption = 'frmConAplicacionesInternas'
  ClientWidth = 868
  ExplicitWidth = 868
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 868
    ExplicitWidth = 868
  end
  inherited splDetail1: TSplitter
    Width = 868
    ExplicitWidth = 868
  end
  inherited splDetail2: TSplitter
    Width = 868
    ExplicitWidth = 868
  end
  inherited pnlMaster: TPanel
    Width = 868
    ExplicitWidth = 868
    inherited cxGrid: TcxGrid
      Width = 868
      ExplicitWidth = 868
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIDPagoAplicacionInterna: TcxGridDBColumn
          DataBinding.FieldName = 'IDPagoAplicacionInterna'
          Visible = False
        end
        object tvMasterIDPagoAplicacion: TcxGridDBColumn
          DataBinding.FieldName = 'IDPagoAplicacion'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarDetalle'
          Visible = False
        end
        object tvMasterIDCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDI'
          Visible = False
        end
        object tvMasterIDCFDIConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDIConcepto'
          Visible = False
        end
        object tvMasterfechaCXC: TcxGridDBColumn
          DataBinding.FieldName = 'fechaCXC'
        end
        object tvMasterItemCXC: TcxGridDBColumn
          DataBinding.FieldName = 'ItemCXC'
          Width = 305
        end
        object tvMastersaldoCXC: TcxGridDBColumn
          DataBinding.FieldName = 'saldoCXC'
        end
        object tvMasterImportePagado: TcxGridDBColumn
          DataBinding.FieldName = 'ImportePagado'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 868
    ExplicitWidth = 868
  end
  inherited pnlDetail2: TPanel
    Width = 868
    ExplicitWidth = 868
  end
  inherited pnlDetail1: TPanel
    Width = 868
    ExplicitWidth = 868
  end
  inherited pnlClose: TPanel
    Width = 868
    ExplicitWidth = 868
    inherited btnClose: TButton
      Left = 783
      ExplicitLeft = 783
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmAplicacionesConsulta.ADODtstAplicacionesInternas
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 107
    end
    inherited dxbTools: TdxBar
      DockedLeft = 238
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
      ReportDocument.CreationDate = 42739.414081597220000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
