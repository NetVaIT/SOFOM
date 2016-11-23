inherited frmMonedas: TfrmMonedas
  BorderStyle = bsToolWindow
  Caption = 'Monedas'
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
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 107
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 78
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 253
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    inherited btnClose: TButton
      Left = 560
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
