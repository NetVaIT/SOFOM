inherited frmMatrizRiesgo: TfrmMatrizRiesgo
  BorderStyle = bsToolWindow
  Caption = 'Matriz de Riesgo'
  ClientHeight = 711
  ClientWidth = 810
  ExplicitWidth = 816
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 633
    Width = 810
    Align = alTop
    ExplicitTop = 576
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 333
    Width = 810
    Align = alTop
    ExplicitTop = 333
    ExplicitWidth = 810
  end
  inherited splDetail2: TSplitter
    Top = 484
    Width = 810
    Align = alTop
    ExplicitLeft = -10
    ExplicitTop = 478
    ExplicitWidth = 810
  end
  inherited pnlMaster: TPanel
    Width = 810
    Height = 307
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 307
    inherited cxGrid: TcxGrid
      Width = 810
      Height = 307
      ExplicitLeft = -10
      ExplicitTop = -3
      ExplicitWidth = 810
      ExplicitHeight = 307
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRCuestionario: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCuestionario'
          Visible = False
        end
        object tvMasterIdMRCuestionarioEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRCuestionarioEstatus'
          Visible = False
        end
        object tvMasterIdUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuario'
          Visible = False
        end
        object tvMasterVersion: TcxGridDBColumn
          DataBinding.FieldName = 'Version'
        end
        object tvMasterFechaCreacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCreacion'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
        end
        object tvMasterMesesVigenciaAplicacion: TcxGridDBColumn
          DataBinding.FieldName = 'MesesVigenciaAplicacion'
          Width = 148
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 636
    Width = 810
    Height = 42
    Align = alTop
    ExplicitTop = 623
    ExplicitWidth = 810
    ExplicitHeight = 42
  end
  inherited pnlDetail2: TPanel
    Top = 487
    Width = 810
    Height = 146
    Align = alTop
    ExplicitTop = 487
    ExplicitWidth = 810
    ExplicitHeight = 146
  end
  inherited pnlDetail1: TPanel
    Top = 336
    Width = 810
    Height = 148
    Align = alTop
    ExplicitTop = 336
    ExplicitWidth = 645
    ExplicitHeight = 148
  end
  inherited pnlClose: TPanel
    Top = 676
    Width = 810
    Height = 35
    ExplicitTop = 607
    ExplicitWidth = 645
    ExplicitHeight = 35
    inherited btnClose: TButton
      Left = 725
      ExplicitLeft = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 107
    end
    inherited dxbTools: TdxBar
      DockedLeft = 238
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 43311.541016712960000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
