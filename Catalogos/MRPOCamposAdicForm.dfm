inherited frmMRCamposAdi: TfrmMRCamposAdi
  BorderStyle = bsToolWindow
  Caption = 'Campos Adicionales'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRTablaAsociadoCampo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRTablaAsociadoCampo'
          Visible = False
        end
        object tvMasterIdMRPreguntaOpcion: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPreguntaOpcion'
          Visible = False
        end
        object tvMasterCampoEspecialAltoRiesgo: TcxGridDBColumn
          DataBinding.FieldName = 'CampoEspecialAltoRiesgo'
          Width = 156
        end
        object tvMasterCondicionEnTexto: TcxGridDBColumn
          DataBinding.FieldName = 'CondicionEnTexto'
          Width = 300
        end
        object tvMasterPonderacionExtra: TcxGridDBColumn
          DataBinding.FieldName = 'PonderacionExtra'
          Width = 97
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    inherited btnClose: TButton
      Left = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.ADODsCamposAdicionales
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
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
      ReportDocument.CreationDate = 43312.811234803240000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
