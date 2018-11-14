inherited frmContratos: TfrmContratos
  BorderStyle = bsToolWindow
  Caption = 'Contratos'
  ClientHeight = 676
  ClientWidth = 1103
  ExplicitWidth = 1109
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 432
    Width = 1103
    Align = alTop
    ExplicitTop = 571
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 126
    Width = 1103
    Align = alTop
    ExplicitTop = 293
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 279
    Width = 1103
    Align = alTop
    ExplicitTop = 487
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 1103
    Height = 100
    Align = alTop
    ExplicitWidth = 1103
    ExplicitHeight = 100
    inherited cxGrid: TcxGrid
      Width = 1103
      Height = 100
      ExplicitWidth = 1103
      ExplicitHeight = 100
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdContratoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdContratoTipo'
          Visible = False
        end
        object tvMasterIdContratoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdContratoEstatus'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 300
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 150
        end
        object tvMasterMontoAutorizado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoAutorizado'
        end
        object tvMasterDiaCorte: TcxGridDBColumn
          DataBinding.FieldName = 'DiaCorte'
          Width = 65
        end
        object tvMasterDiaVencimiento: TcxGridDBColumn
          DataBinding.FieldName = 'DiaVencimiento'
          Width = 106
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 150
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 435
    Width = 1103
    Height = 200
    Align = alClient
    ExplicitTop = 435
    ExplicitWidth = 1103
    ExplicitHeight = 200
  end
  inherited pnlDetail2: TPanel
    Top = 282
    Width = 1103
    Height = 150
    Align = alTop
    ExplicitTop = 282
    ExplicitWidth = 1103
    ExplicitHeight = 150
  end
  inherited pnlDetail1: TPanel
    Top = 129
    Width = 1103
    Height = 150
    Align = alTop
    ExplicitTop = 129
    ExplicitWidth = 1103
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Top = 635
    Width = 1103
    ExplicitTop = 635
    ExplicitWidth = 1103
    inherited btnClose: TButton
      Left = 1018
      ExplicitLeft = 1018
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 104
    end
    inherited dxbTools: TdxBar
      DockedLeft = 231
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbbCrearAnexo'
        end>
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 378
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtCliente'
        end
        item
          Visible = True
          ItemName = 'edtDesde'
        end
        item
          Visible = True
          ItemName = 'edtHasta'
        end
        item
          Visible = True
          ItemName = 'edtUsarFecha'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object dxbbCrearAnexo: TdxBarButton
      Caption = 'Crear anexo'
      Category = 0
      Hint = 'Crea anexo de una cotizacion'
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
    end
    object edtCliente: TcxBarEditItem
      Caption = 'Cliente'
      Category = 0
      Hint = 'Cliente'
      Visible = ivAlways
      ShowCaption = True
      Width = 200
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object edtDesde: TcxBarEditItem
      Caption = 'Desde'
      Category = 0
      Hint = 'Desde'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtHasta: TcxBarEditItem
      Caption = 'Hasta'
      Category = 0
      Hint = 'Hasta'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtUsarFecha: TcxBarEditItem
      Caption = 'Usar fecha'
      Category = 0
      Hint = 'Usar fecha'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
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
      ReportDocument.CreationDate = 42683.590026041670000000
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
        Component = tvMasterCliente
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDiaCorte
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDiaVencimiento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
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
        Component = tvMasterFecha
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdContrato
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdContratoEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdContratoTipo
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
        Component = tvMasterIdPersona
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMontoAutorizado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTipo
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
