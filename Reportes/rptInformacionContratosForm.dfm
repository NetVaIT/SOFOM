inherited FrmInformacionContratosGrid: TFrmInformacionContratosGrid
  Caption = 'Informaci'#243'n Contratos'
  ClientWidth = 1181
  ExplicitWidth = 1181
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 1181
    ExplicitWidth = 1181
  end
  inherited splDetail1: TSplitter
    Width = 1181
    ExplicitWidth = 1181
  end
  inherited splDetail2: TSplitter
    Width = 1181
    ExplicitWidth = 1181
  end
  inherited pnlMaster: TPanel
    Width = 1181
    ExplicitWidth = 1181
    inherited cxGrid: TcxGrid
      Width = 1181
      ExplicitWidth = 1181
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = tvMasterTotalPagadoProd
          end
          item
            Kind = skSum
            Position = spFooter
            Column = tvMasterAfinanciarXprod
          end
          item
            Kind = skSum
            Position = spFooter
            Column = tvMasterVencidoXProd
          end
          item
            Kind = skSum
            Position = spFooter
            FieldName = 'SaldoInsolutoXProd'
            Column = tvMasterSaldoInsolutoXProd
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TotalPagadoProducto'
          end
          item
            Kind = skSum
            Column = tvMasterTotalPagadoProd
          end
          item
            Kind = skSum
            Column = tvMasterSaldoInsolutoXProd
          end
          item
            Kind = skSum
            Column = tvMasterAfinanciarXprod
          end
          item
            Kind = skSum
            Column = tvMasterVencidoXProd
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <>
            SummaryItems = <>
          end>
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = True
        OptionsView.GroupFooters = gfAlwaysVisible
        object tvMasterIdContratoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdContratoEstatus'
          Visible = False
        end
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterRazonSocial: TcxGridDBColumn
          DataBinding.FieldName = 'RazonSocial'
          Visible = False
          GroupIndex = 0
          Width = 267
        end
        object tvMasterContrato: TcxGridDBColumn
          DataBinding.FieldName = 'Contrato'
          Visible = False
          GroupIndex = 1
        end
        object tvMasterAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'Anexo'
          Visible = False
          GroupIndex = 2
          Width = 86
        end
        object tvMasteridAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'idAnexo'
          Visible = False
        end
        object tvMasterMontoFinanciar: TcxGridDBColumn
          DataBinding.FieldName = 'MontoFinanciar'
          Visible = False
          Width = 107
        end
        object tvMasterMontoVencido: TcxGridDBColumn
          DataBinding.FieldName = 'MontoVencido'
          Visible = False
        end
        object tvMasterCapitalCobrado: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalCobrado'
          Visible = False
        end
        object tvMasterSaldoInsoluto: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoInsoluto'
          Visible = False
        end
        object tvMasterEnganche: TcxGridDBColumn
          DataBinding.FieldName = 'Enganche'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterProducto: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          GroupIndex = 3
          Width = 163
        end
        object tvMasterPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Visible = False
        end
        object tvMasterPorcentajeAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeAnexo'
          Width = 94
        end
        object tvMasterDepreciacionComercial: TcxGridDBColumn
          DataBinding.FieldName = 'DepreciacionComercial'
          Visible = False
        end
        object tvMasterDepreciacionContable: TcxGridDBColumn
          DataBinding.FieldName = 'DepreciacionContable'
          Visible = False
        end
        object tvMasterPrecioTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioTotal'
          Visible = False
        end
        object tvMasterAfinanciarXprod: TcxGridDBColumn
          Caption = 'Monto a Financiar'
          DataBinding.FieldName = 'AfinanciarXprod'
          Width = 217
        end
        object tvMasterVencidoXProd: TcxGridDBColumn
          Caption = 'Monto Vencido'
          DataBinding.FieldName = 'VencidoXProd'
          Width = 178
        end
        object tvMasterTotalPagadoProd: TcxGridDBColumn
          Caption = 'Total Pagado'
          DataBinding.FieldName = 'TotalPagadoProd'
          Width = 216
        end
        object tvMastersumaAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'sumaAnexo'
          Visible = False
        end
        object tvMasterSaldoInsolutoXProd: TcxGridDBColumn
          Caption = 'Saldo Insoluto'
          DataBinding.FieldName = 'SaldoInsolutoXProd'
          Width = 186
        end
        object tvMasterEnganchePorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'EnganchePorcentaje'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 1181
    ExplicitWidth = 1181
  end
  inherited pnlDetail2: TPanel
    Width = 1181
    ExplicitWidth = 1181
  end
  inherited pnlDetail1: TPanel
    Width = 1181
    ExplicitWidth = 1181
  end
  inherited pnlClose: TPanel
    Width = 1181
    ExplicitWidth = 1181
    inherited btnClose: TButton
      Left = 1096
      ExplicitLeft = 1096
    end
  end
  inherited ActionList: TActionList
    Left = 696
    Top = 48
  end
  inherited DataSource: TDataSource
    DataSet = DMRptInformacionContratos.adodsMaster
    Left = 784
    Top = 48
  end
  inherited dxBarManager: TdxBarManager
    Left = 952
    Top = 40
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
    Left = 552
    Top = 48
    PixelsPerInch = 96
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 856
    Top = 48
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 2556520
  end
  inherited PopupMenu: TdxBarPopupMenu
    Left = 1016
    Top = 40
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 1064
    Top = 47
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42845.604105219900000000
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
        Component = tvMasterAfinanciarXprod
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAnexo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCapitalCobrado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterContrato
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDepreciacionComercial
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDepreciacionContable
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEnganche
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEnganchePorcentaje
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasteridAnexo
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
        Component = tvMasterIdProducto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMontoFinanciar
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMontoVencido
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPorcentajeAnexo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPrecio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPrecioTotal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterProducto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRazonSocial
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSaldoInsoluto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSaldoInsolutoXProd
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMastersumaAnexo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTotalPagadoProd
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterVencidoXProd
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
