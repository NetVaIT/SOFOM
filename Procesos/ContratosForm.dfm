inherited frmContratos: TfrmContratos
  BorderStyle = bsToolWindow
  Caption = 'Contratos'
  ClientHeight = 676
  ClientWidth = 840
  ExplicitWidth = 846
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 432
    Width = 840
    Align = alTop
    ExplicitTop = 571
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 126
    Width = 840
    Align = alTop
    ExplicitTop = 293
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 279
    Width = 840
    Align = alTop
    ExplicitTop = 487
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 840
    Height = 100
    Align = alTop
    ExplicitWidth = 1272
    ExplicitHeight = 100
    inherited cxGrid: TcxGrid
      Width = 840
      Height = 100
      ExplicitWidth = 1272
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
    Width = 840
    Height = 200
    Align = alClient
    ExplicitTop = 435
    ExplicitWidth = 1272
    ExplicitHeight = 200
  end
  inherited pnlDetail2: TPanel
    Top = 282
    Width = 840
    Height = 150
    Align = alTop
    ExplicitTop = 282
    ExplicitWidth = 1272
    ExplicitHeight = 150
  end
  inherited pnlDetail1: TPanel
    Top = 129
    Width = 840
    Height = 150
    Align = alTop
    ExplicitTop = 129
    ExplicitWidth = 1272
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Top = 635
    Width = 840
    ExplicitTop = 635
    ExplicitWidth = 1272
    inherited btnClose: TButton
      Left = 755
      ExplicitLeft = 1187
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 81
    end
    inherited dxbEdit: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Insert1'
        end
        item
          Visible = True
          ItemName = 'Edit1'
        end
        item
          Visible = True
          ItemName = 'Delete1'
        end>
    end
    inherited dxbTools: TdxBar
      DockedLeft = 208
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
      DockedLeft = 541
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
    object dxbEstadoCuenta: TdxBar [4]
      Caption = 'Estado de cuenta'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 355
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1296
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtFecha'
        end
        item
          Visible = True
          ItemName = 'btnEstadoCuentaFuturo'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbbCrearAnexo: TdxBarButton
      Caption = 'Crear anexo'
      Category = 0
      Hint = 'Crea un anexo de una cotizaci'#243'n'
      Visible = ivAlways
      ImageIndex = 10
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
    object edtFecha: TcxBarEditItem
      Caption = 'Fecha'
      Category = 0
      Hint = 'Fecha hasta donde generara a futuro'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object btnEstadoCuentaFuturo: TdxBarButton
      Caption = 'Estado de cuenta futuro'
      Category = 0
      Visible = ivAlways
      ImageIndex = 11
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
