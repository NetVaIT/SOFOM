inherited frmConAplicacionesInternas: TfrmConAplicacionesInternas
  BorderStyle = bsToolWindow
  Caption = 'Aplicaicones Internas'
  ClientHeight = 428
  ClientWidth = 862
  ExplicitWidth = 868
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 862
    ExplicitTop = 343
    ExplicitWidth = 868
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 862
    ExplicitTop = 255
    ExplicitWidth = 868
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 862
    ExplicitTop = 299
    ExplicitWidth = 868
  end
  inherited pnlMaster: TPanel
    Width = 862
    Height = 224
    ExplicitWidth = 862
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 862
      Height = 224
      ExplicitTop = -3
      ExplicitWidth = 862
      ExplicitHeight = 224
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
    Top = 346
    Width = 862
    ExplicitTop = 346
    ExplicitWidth = 862
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 862
    ExplicitTop = 302
    ExplicitWidth = 862
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 862
    ExplicitTop = 258
    ExplicitWidth = 862
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 862
    ExplicitTop = 387
    ExplicitWidth = 862
    inherited btnClose: TButton
      Left = 777
      ExplicitLeft = 777
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
