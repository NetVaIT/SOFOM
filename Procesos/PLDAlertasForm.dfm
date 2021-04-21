inherited frmPLDAlertas: TfrmPLDAlertas
  Caption = 'frmPLDAlertas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPLDAlerta: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlerta'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPago'
          Visible = False
        end
        object tvMasterIdPLDOperacionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDOperacionTipo'
          Visible = False
        end
        object tvMasterIdPLDAlertaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlertaTipo'
          Visible = False
        end
        object tvMasterIdPLDAlertaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlertaEstatus'
          Visible = False
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 300
        end
        object tvMasterContrato: TcxGridDBColumn
          DataBinding.FieldName = 'Contrato'
        end
        object tvMasterPeriodoMes: TcxGridDBColumn
          DataBinding.FieldName = 'PeriodoMes'
        end
        object tvMasterPeriodoAnio: TcxGridDBColumn
          DataBinding.FieldName = 'PeriodoAnio'
        end
        object tvMasterSoloEfectivo: TcxGridDBColumn
          DataBinding.FieldName = 'SoloEfectivo'
          Width = 67
        end
        object tvMasterMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPago'
          Width = 200
        end
        object tvMasterFechaDeteccion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaDeteccion'
        end
        object tvMasterFechaOperacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaOperacion'
        end
        object tvMasterOperacionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'OperacionTipo'
          Width = 200
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 200
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 200
        end
        object tvMasterTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
        end
        object tvMasterTotalUSD: TcxGridDBColumn
          DataBinding.FieldName = 'TotalUSD'
        end
        object tvMasterTotalPagos: TcxGridDBColumn
          DataBinding.FieldName = 'TotalPagos'
          Width = 84
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 500
        end
        object tvMasterRazon: TcxGridDBColumn
          DataBinding.FieldName = 'Razon'
          Width = 500
        end
        object tvMasterCapturaManual: TcxGridDBColumn
          DataBinding.FieldName = 'CapturaManual'
          Visible = False
        end
        object tvMasterR24: TcxGridDBColumn
          DataBinding.FieldName = 'R24'
          Visible = False
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPLDAlertas.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbTools: TdxBar
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
          ItemName = 'dxbbGenerar'
        end
        item
          Visible = True
          ItemName = 'dxbbArchivo'
        end>
    end
    object dxbbGenerar: TdxBarButton
      Caption = 'Generar'
      Category = 0
      Hint = 'Generar las alertas del periodo'
      Visible = ivAlways
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
    end
    object dxbbArchivo: TdxBarButton
      Caption = 'Archivo'
      Category = 0
      Hint = 'Generar el archivo'
      Visible = ivAlways
      ImageIndex = 14
      PaintStyle = psCaptionGlyph
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
      ReportDocument.CreationDate = 42899.653800057880000000
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
        Component = tvMasterFechaDeteccion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPago
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
        Component = tvMasterIdPLDAlerta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPLDAlertaEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPLDAlertaTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPLDOperacionTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMetodoPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterOperacionTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPeriodoAnio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPeriodoMes
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterR24
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRazon
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSoloEfectivo
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
      end
      item
        Component = tvMasterTotal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTotalPagos
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTotalUSD
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
