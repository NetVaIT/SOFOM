inherited frmMRCalificacionesRiesgos: TfrmMRCalificacionesRiesgos
  BorderStyle = bsToolWindow
  Caption = 'Calificaciones de Riesgos'
  ClientHeight = 513
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 463
    Width = 645
  end
  inherited splDetail1: TSplitter
    Top = 419
    Width = 645
  end
  inherited splDetail2: TSplitter
    Top = 439
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 393
    ExplicitTop = 28
    ExplicitHeight = 256
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 393
      ExplicitWidth = 645
      ExplicitHeight = 282
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRCalificacionRiesgo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCalificacionRiesgo'
          Visible = False
        end
        object tvMasterIdMRCuestionario: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCuestionario'
          Visible = False
        end
        object tvMasterIdPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaTipo'
          Visible = False
        end
        object tvMasterPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaTipo'
          Width = 79
        end
        object tvMasterNivelRiesgo: TcxGridDBColumn
          DataBinding.FieldName = 'NivelRiesgo'
        end
        object tvMasterValorMinimo: TcxGridDBColumn
          DataBinding.FieldName = 'ValorMinimo'
          Width = 65
        end
        object tvMasterValorMaximo: TcxGridDBColumn
          DataBinding.FieldName = 'ValorMaximo'
          Width = 69
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 466
    Width = 645
    Height = 21
    ExplicitTop = 458
    ExplicitWidth = 645
    ExplicitHeight = 21
  end
  inherited pnlDetail2: TPanel
    Top = 442
    Width = 645
    Height = 21
    ExplicitTop = 400
    ExplicitWidth = 645
    ExplicitHeight = 21
  end
  inherited pnlDetail1: TPanel
    Top = 422
    Width = 645
    Height = 17
    ExplicitTop = 360
    ExplicitWidth = 645
    ExplicitHeight = 17
  end
  inherited pnlClose: TPanel
    Top = 487
    Width = 645
    Height = 26
    ExplicitTop = 480
    ExplicitWidth = 645
    ExplicitHeight = 26
    inherited btnClose: TButton
      Left = 560
      Top = -2
      ExplicitLeft = 560
      ExplicitTop = -2
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsCalificacionRiesgo
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
      ReportDocument.CreationDate = 43311.602271053240000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
