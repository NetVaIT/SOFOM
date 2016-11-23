inherited frmBancos: TfrmBancos
  BorderStyle = bsToolWindow
  Caption = 'Bancos'
  ClientHeight = 433
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
    ExplicitTop = 260
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
    ExplicitTop = 304
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
        object tvMasterIdBanco: TcxGridDBColumn
          DataBinding.FieldName = 'IdBanco'
          Visible = False
        end
        object tvMasterIdPaisBanco: TcxGridDBColumn
          DataBinding.FieldName = 'IdPaisBanco'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 119
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 72
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterSiglas: TcxGridDBColumn
          DataBinding.FieldName = 'Siglas'
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
    DesignSize = (
      645
      41)
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
    end
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
      BuiltInReportLink = True
    end
  end
end
