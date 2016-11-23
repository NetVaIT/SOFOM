inherited frmGerencias: TfrmGerencias
  BorderStyle = bsToolWindow
  Caption = 'Gerencias'
  ClientHeight = 433
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 389
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
    ExplicitTop = 301
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
    ExplicitTop = 345
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdGerencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdGerencia'
          Visible = False
        end
        object tvMasterIdUnidadNegocio: TcxGridDBColumn
          DataBinding.FieldName = 'IdUnidadNegocio'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
    ExplicitTop = 307
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
    ExplicitTop = 263
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
  end
  inherited DataSource: TDataSource
    DataSet = dmPuestos.adodsGerencias
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
      ReportDocument.CreationDate = 42593.689478368050000000
      BuiltInReportLink = True
    end
  end
end
