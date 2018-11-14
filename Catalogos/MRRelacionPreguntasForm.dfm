inherited frmRelacionPreguntas: TfrmRelacionPreguntas
  Caption = 'frmRelacionPreguntas'
  ClientWidth = 744
  ExplicitWidth = 744
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 744
    ExplicitWidth = 744
  end
  inherited splDetail1: TSplitter
    Width = 744
    ExplicitWidth = 744
  end
  inherited splDetail2: TSplitter
    Width = 744
    ExplicitWidth = 744
  end
  inherited pnlMaster: TPanel
    Width = 744
    ExplicitWidth = 744
    inherited cxGrid: TcxGrid
      Width = 744
      ExplicitWidth = 744
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdMRRelacionPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRRelacionPregunta'
          Visible = False
        end
        object tvMasterIdMRPaquetePregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPaquetePregunta'
          Visible = False
        end
        object tvMasterIdMRPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPregunta'
          Visible = False
        end
        object tvMasterIdMRPreguntaOpcion: TcxGridDBColumn
          DataBinding.FieldName = 'IdMRPreguntaOpcion'
          Visible = False
        end
        object tvMasterPregunta: TcxGridDBColumn
          DataBinding.FieldName = 'Pregunta'
          Width = 500
        end
        object tvMasterOpcion: TcxGridDBColumn
          DataBinding.FieldName = 'Opcion'
          Width = 500
        end
        object tvMasterValorCondicionante: TcxGridDBColumn
          DataBinding.FieldName = 'ValorCondicionante'
          Width = 100
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 744
    ExplicitWidth = 744
  end
  inherited pnlDetail2: TPanel
    Width = 744
    ExplicitWidth = 744
  end
  inherited pnlDetail1: TPanel
    Width = 744
    ExplicitWidth = 744
  end
  inherited pnlClose: TPanel
    Width = 744
    ExplicitWidth = 744
    inherited btnClose: TButton
      Left = 659
      ExplicitLeft = 659
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMRPaquetesPreguntas.AdoDSRElacionpreg
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
      ReportDocument.CreationDate = 43314.765321203700000000
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
        Component = tvMasterIdMRPregunta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMRPreguntaOpcion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMRRelacionPregunta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterOpcion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPregunta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterValorCondicionante
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
