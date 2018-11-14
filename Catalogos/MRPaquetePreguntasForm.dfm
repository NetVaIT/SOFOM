inherited frmPaquetePreguntas: TfrmPaquetePreguntas
  Caption = 'Paquetes de preguntas'
  ClientWidth = 743
  ExplicitWidth = 743
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 397
    Width = 743
    ExplicitTop = 397
    ExplicitWidth = 743
  end
  inherited splDetail1: TSplitter
    Top = 231
    Width = 743
    Align = alTop
    ExplicitTop = 233
    ExplicitWidth = 743
  end
  inherited splDetail2: TSplitter
    Top = 384
    Width = 743
    ExplicitTop = 384
    ExplicitWidth = 743
  end
  inherited pnlMaster: TPanel
    Width = 743
    Height = 205
    Align = alTop
    ExplicitWidth = 743
    ExplicitHeight = 205
    inherited cxGrid: TcxGrid
      Width = 743
      Height = 205
      ExplicitWidth = 743
      ExplicitHeight = 205
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
    ExplicitWidth = 743
    ExplicitHeight = 16
  end
  inherited pnlDetail2: TPanel
    Top = 387
    Width = 743
    Height = 10
    ExplicitTop = 387
    ExplicitWidth = 743
    ExplicitHeight = 10
  end
  inherited pnlDetail1: TPanel
    Top = 234
    Width = 743
    Height = 150
    Align = alClient
    ExplicitTop = 234
    ExplicitWidth = 743
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Width = 743
    ExplicitWidth = 743
    inherited btnClose: TButton
      Left = 658
      ExplicitLeft = 658
    end
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
      ReportDocument.CreationDate = 43314.759753159720000000
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
        Component = tvMasterDescripcionPaquete
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
        Component = tvMasterIdMRPaquetePregunta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPonderacion_Extra
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
