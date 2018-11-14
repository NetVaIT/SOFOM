inherited FrmMovimientosXCtaBan: TFrmMovimientosXCtaBan
  Caption = 'FrmMovimientosXCtaBan'
  ClientWidth = 890
  ExplicitWidth = 890
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 890
    ExplicitWidth = 890
  end
  inherited splDetail1: TSplitter
    Width = 890
    ExplicitWidth = 890
  end
  inherited splDetail2: TSplitter
    Width = 890
    ExplicitWidth = 890
  end
  inherited pnlMaster: TPanel
    Width = 890
    ExplicitWidth = 890
    inherited cxGrid: TcxGrid
      Width = 890
      ExplicitWidth = 890
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaBancariaEstadoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaEstadoCuenta'
          Visible = False
        end
        object tvMasterIdCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancaria'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 117
        end
        object tvMasterConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
          Width = 314
        end
        object tvMasterTipoMovimiento: TcxGridDBColumn
          Caption = 'TipoMov'
          DataBinding.FieldName = 'TipoMovimiento'
          Width = 45
        end
        object tvMasterMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'Movimiento'
        end
        object tvMasterSaldoRegistro: TcxGridDBColumn
          Caption = 'Saldo Registro'
          DataBinding.FieldName = 'SaldoRegistro'
        end
        object tvMasterHash: TcxGridDBColumn
          DataBinding.FieldName = 'Hash'
          Visible = False
        end
        object tvMasterIdCuentaBancariaRegistroEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaRegistroEstatus'
          Visible = False
        end
        object tvMasterObservaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
          Visible = False
        end
        object tvMasterSaldoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoCuenta'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 890
    ExplicitWidth = 890
  end
  inherited pnlDetail2: TPanel
    Width = 890
    ExplicitWidth = 890
  end
  inherited pnlDetail1: TPanel
    Width = 890
    ExplicitWidth = 890
  end
  inherited pnlClose: TPanel
    Width = 890
    ExplicitWidth = 890
    inherited btnClose: TButton
      Left = 805
      ExplicitLeft = 805
    end
  end
  inherited DataSource: TDataSource
    DataSet = DMCuentasBancariasMovimientos.ADODtStMovimientosXCtaBan
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
      ReportDocument.CreationDate = 42898.602222835650000000
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
        Component = tvMasterConcepto
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
        Component = tvMasterHash
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancaria
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancariaEstadoCuenta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancariaRegistroEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMovimiento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterObservaciones
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSaldoCuenta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSaldoRegistro
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTipoMovimiento
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
