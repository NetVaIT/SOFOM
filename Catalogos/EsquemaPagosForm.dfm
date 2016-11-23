inherited frmEsquemaPagos: TfrmEsquemaPagos
  BorderStyle = bsToolWindow
  Caption = 'Esquemas de Pago'
  ClientHeight = 433
  ClientWidth = 645
  OnDestroy = FormDestroy
  ExplicitWidth = 651
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Width = 645
    Align = alTop
    Visible = True
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
    Align = alTop
    ExplicitWidth = 645
    inherited cxGrid: TcxGrid
      Width = 645
      ExplicitWidth = 645
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdEsquemaPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdEsquemaPago'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdEsquemaPagoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdEsquemaPagoEstatus'
          Visible = False
        end
        object tvMasterEsquemaPagoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'EsquemaPagoEstatus'
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
    Width = 645
    Height = 17
    Align = alClient
    Visible = True
    ExplicitWidth = 645
    ExplicitHeight = 17
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
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
