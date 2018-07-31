inherited frmMRPreguntas: TfrmMRPreguntas
  BorderStyle = bsToolWindow
  Caption = 'Preguntas Matriz de Riesgo'
  ClientHeight = 428
  ClientWidth = 746
  ExplicitWidth = 752
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 746
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 746
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 746
  end
  inherited pnlMaster: TPanel
    Width = 746
    Height = 229
    inherited cxGrid: TcxGrid
      Width = 746
      Height = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPregunta'
          Visible = False
        end
        object tvMasterIdMRCuestionario: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCuestionario'
          Visible = False
        end
        object tvMasterPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'Pregunta'
          Width = 272
        end
        object tvMasterAplicaaPersonaFisica: TcxGridDBColumn
          DataBinding.FieldName = 'AplicaaPersonaFisica'
          Width = 125
        end
        object tvMasterAplicaaPersonaMoral: TcxGridDBColumn
          DataBinding.FieldName = 'AplicaaPersonaMoral'
          Width = 128
        end
        object tvMasterCondicionada: TcxGridDBColumn
          DataBinding.FieldName = 'Condicionada'
          Width = 87
        end
        object tvMasterEvaluaARDirecto: TcxGridDBColumn
          DataBinding.FieldName = 'EvaluaARDirecto'
          Width = 104
        end
        object tvMasterOrden: TcxGridDBColumn
          DataBinding.FieldName = 'Orden'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 746
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 746
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 746
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 746
    inherited btnClose: TButton
      Left = 661
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntas
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
      ReportDocument.CreationDate = 43312.497022928240000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
