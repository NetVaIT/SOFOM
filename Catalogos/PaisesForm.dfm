inherited frmPaises: TfrmPaises
  BorderStyle = bsToolWindow
  Caption = 'Pa'#237'ses'
  ClientHeight = 465
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 437
    Width = 645
    Align = alTop
    ExplicitTop = 431
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 131
    Width = 645
    Align = alTop
    ExplicitLeft = -8
    ExplicitTop = 122
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 284
    Width = 645
    Align = alTop
    ExplicitTop = 278
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 100
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 100
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 100
      ExplicitWidth = 645
      ExplicitHeight = 100
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 440
    Width = 645
    Height = 15
    Align = alClient
    ExplicitTop = 434
    ExplicitWidth = 645
    ExplicitHeight = 31
  end
  inherited pnlDetail2: TPanel
    Top = 287
    Width = 645
    Height = 150
    Align = alTop
    ExplicitTop = 281
    ExplicitWidth = 645
    ExplicitHeight = 150
  end
  inherited pnlDetail1: TPanel
    Top = 134
    Width = 645
    Height = 150
    Align = alTop
    ExplicitTop = 128
    ExplicitWidth = 645
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Top = 424
    Width = 645
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
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42593.687323726850000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
