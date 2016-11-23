inherited frmEstados: TfrmEstados
  BorderStyle = bsToolWindow
  Caption = 'Estados'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 384
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    ExplicitTop = 296
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
    ExplicitTop = 340
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 224
    ExplicitWidth = 645
    ExplicitHeight = 265
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 265
      ExplicitWidth = 645
      ExplicitHeight = 265
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdEstado: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstado'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 300
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
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
      ReportDocument.CreationDate = 42593.687647256940000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
