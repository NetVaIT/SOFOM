inherited frmMatrizRiesgo: TfrmMatrizRiesgo
  BorderStyle = bsToolWindow
  Caption = 'Matriz de riesgo'
  ClientHeight = 711
  ClientWidth = 810
  ExplicitWidth = 816
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 523
    Width = 810
    Align = alTop
    ExplicitTop = 576
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 265
    Width = 810
    Align = alTop
    ExplicitTop = 333
    ExplicitWidth = 810
  end
  inherited splDetail2: TSplitter
    Top = 513
    Width = 810
    Align = alTop
    ExplicitLeft = -10
    ExplicitTop = 478
    ExplicitWidth = 810
  end
  inherited pnlMaster: TPanel
    Width = 810
    Height = 239
    Align = alTop
    ExplicitWidth = 810
    ExplicitHeight = 239
    inherited cxGrid: TcxGrid
      Width = 810
      Height = 239
      ExplicitWidth = 810
      ExplicitHeight = 239
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
    Top = 526
    Width = 810
    Height = 150
    Align = alClient
    ExplicitTop = 526
    ExplicitWidth = 810
    ExplicitHeight = 150
  end
  inherited pnlDetail2: TPanel
    Top = 516
    Width = 810
    Height = 7
    Align = alTop
    ExplicitTop = 516
    ExplicitWidth = 810
    ExplicitHeight = 7
  end
  inherited pnlDetail1: TPanel
    Top = 268
    Width = 810
    Height = 245
    Align = alTop
    ExplicitTop = 268
    ExplicitWidth = 810
    ExplicitHeight = 245
  end
  inherited pnlClose: TPanel
    Top = 676
    Width = 810
    Height = 35
    ExplicitTop = 676
    ExplicitWidth = 810
    ExplicitHeight = 35
    inherited btnClose: TButton
      Left = 725
      ExplicitLeft = 725
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited cxpsGrid: TcxPropertiesStore
    Components = <
      item
        Component = tvMaster
        Properties.Strings = (
          'OptionsView.Footer'
          'OptionsView.GroupByBox'
          'OptionsView.GroupFooters')
      end
      item
        Component = tvMasterEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterFechaCreacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMRCuestionario
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMRCuestionarioEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdUsuario
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMesesVigenciaAplicacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterVersion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end>
  end
end
