inherited frmPaquetePreguntas: TfrmPaquetePreguntas
  Caption = 'frmPaquetePreguntas'
  ClientWidth = 743
  ExplicitWidth = 743
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 397
    Width = 743
  end
  inherited splDetail1: TSplitter
    Top = 233
    Width = 743
    Align = alTop
  end
  inherited splDetail2: TSplitter
    Top = 384
    Width = 743
  end
  inherited pnlMaster: TPanel
    Width = 743
    Height = 205
    Align = alTop
    ExplicitTop = 28
    ExplicitHeight = 205
    inherited cxGrid: TcxGrid
      Width = 743
      Height = 205
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRPaquetePregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPaquetePregunta'
          Visible = False
        end
        object tvMasterIdMRCuestionario: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCuestionario'
          Visible = False
        end
        object tvMasterDescripcionPaquete: TcxGridDBColumn
          DataBinding.FieldName = 'DescripcionPaquete'
          Width = 300
        end
        object tvMasterPonderacion_Extra: TcxGridDBColumn
          DataBinding.FieldName = 'Ponderacion_Extra'
          Width = 115
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 400
    Width = 743
    Height = 16
    ExplicitTop = 400
    ExplicitHeight = 16
  end
  inherited pnlDetail2: TPanel
    Top = 387
    Width = 743
    Height = 10
    ExplicitTop = 387
    ExplicitHeight = 10
  end
  inherited pnlDetail1: TPanel
    Top = 236
    Width = 743
    Height = 148
    Align = alClient
  end
  inherited pnlClose: TPanel
    Width = 743
    inherited btnClose: TButton
      Left = 658
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      28
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
      ReportDocument.CreationDate = 43314.759753159720000000
      BuiltInReportLink = True
    end
  end
end
