inherited frmEstablecimientos: TfrmEstablecimientos
  BorderStyle = bsToolWindow
  Caption = 'Establecimientos'
  ClientHeight = 433
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 341
    Width = 645
    ExplicitTop = 365
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 53
    Width = 645
    ExplicitTop = 191
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 285
    Width = 645
    ExplicitTop = 264
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 27
    ExplicitWidth = 645
    ExplicitHeight = 27
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 27
      ExplicitWidth = 645
      ExplicitHeight = 27
      inherited tvMaster: TcxGridDBTableView
        Preview.Column = tvMasterDomicilio
        Preview.Visible = True
        object tvMasterIdEstablecimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstablecimiento'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilio'
          Visible = False
        end
        object tvMasterDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'Domicilio'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 344
    Width = 645
    Height = 48
    ExplicitTop = 344
    ExplicitWidth = 645
    ExplicitHeight = 48
  end
  inherited pnlDetail2: TPanel
    Top = 288
    Width = 645
    Height = 53
    ExplicitTop = 288
    ExplicitWidth = 645
    ExplicitHeight = 53
  end
  inherited pnlDetail1: TPanel
    Top = 56
    Width = 645
    Height = 229
    ExplicitTop = 56
    ExplicitWidth = 645
    ExplicitHeight = 229
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
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
      ReportDocument.CreationDate = 43412.480623819440000000
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
        Component = tvMasterDescripcion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDomicilio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdDomicilio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdentificador
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdEstablecimiento
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
