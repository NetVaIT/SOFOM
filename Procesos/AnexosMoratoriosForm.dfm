inherited frmAnexosMoratorios: TfrmAnexosMoratorios
  Caption = 'Moratorios'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterMoratorio
          end
          item
            Kind = skSum
            Column = tvMasterImpuesto
          end
          item
            Kind = skSum
            Column = tvMasterMoratorioTotal
          end
          item
            Kind = skSum
            Column = tvMasterImporteAplicado
          end>
        OptionsView.Footer = True
        object tvMasterIdAnexoMoratorio: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoMoratorio'
          Visible = False
        end
        object tvMasterIdAnexoAmortizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoAmortizacion'
          Visible = False
        end
        object tvMasterIdAnexoMoratorioEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoMoratorioEstatus'
          Visible = False
        end
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 100
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterImporteBase: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteBase'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterDescuento: TcxGridDBColumn
          DataBinding.FieldName = 'Descuento'
        end
        object tvMasterMoratorio: TcxGridDBColumn
          DataBinding.FieldName = 'Moratorio'
        end
        object tvMasterImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
        end
        object tvMasterMoratorioTotal: TcxGridDBColumn
          DataBinding.FieldName = 'MoratorioTotal'
        end
        object tvMasterImporteAplicado: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteAplicado'
        end
        object tvMasterCancelacion: TcxGridDBColumn
          DataBinding.FieldName = 'Cancelacion'
          Visible = False
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DatasetInsert: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited DatasetDelete: TDataSetDelete
      Enabled = False
      Visible = False
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmAnexosMoratorios.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 190
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
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
    end
    inherited dxbTools: TdxBar
      DockedLeft = 317
    end
    object dxbbAgregarDescuento: TdxBarButton
      Action = dmAnexosMoratorios.actAgregarDescuento
      Category = 0
    end
    object dxbbEliminarDescuento: TdxBarButton
      Action = dmAnexosMoratorios.actEliminarDescuento
      Category = 0
    end
    object dxbbDescuentoParcial: TdxBarButton
      Action = dmAnexosMoratorios.actDescuentoParcial
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Descuento'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbbAgregarDescuento'
        end
        item
          Visible = True
          ItemName = 'dxbbEliminarDescuento'
        end
        item
          Visible = True
          ItemName = 'dxbbDescuentoParcial'
        end>
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited PopupMenu: TdxBarPopupMenu
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
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarSeparator1'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSeparator1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end>
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42804.494392372680000000
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
        Component = tvMasterCancelacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDescuento
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
        Component = tvMasterIdAnexoAmortizacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdAnexoMoratorio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdAnexoMoratorioEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaXCobrar
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImporte
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImporteAplicado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImporteBase
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImpuesto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMoratorio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMoratorioTotal
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
