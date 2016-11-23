inherited frmDepartamentos: TfrmDepartamentos
  BorderStyle = bsToolWindow
  Caption = 'Departamentos'
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
    ExplicitHeight = 270
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 270
      ExplicitWidth = 645
      ExplicitHeight = 270
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdDepartamento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDepartamento'
          Visible = False
        end
        object tvMasterIdGerencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdGerencia'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 600
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
    ExplicitTop = 304
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
  end
  inherited DataSource: TDataSource
    DataSet = dmPuestos.adodsDepartamentos
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
      ReportDocument.CreationDate = 42593.689617789350000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
