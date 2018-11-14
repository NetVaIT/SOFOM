inherited FrmCuentasBancariasMovimientos: TFrmCuentasBancariasMovimientos
  Caption = 'FrmCuentasBancariasMovimientos'
  ClientWidth = 1018
  ExplicitWidth = 1018
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited splDetail1: TSplitter
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited splDetail2: TSplitter
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited pnlMaster: TPanel
    Width = 1018
    ExplicitWidth = 1018
    inherited cxGrid: TcxGrid
      Width = 1018
      ExplicitWidth = 1018
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaBancaria: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancaria'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdCuentaBancariaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaTipo'
          Visible = False
        end
        object tvMasterIdBanco: TcxGridDBColumn
          DataBinding.FieldName = 'IdBanco'
          Visible = False
        end
        object tvMasterBanco: TcxGridDBColumn
          DataBinding.FieldName = 'Banco'
        end
        object tvMasterCuentaBancaria: TcxGridDBColumn
          Caption = 'Cuenta Bancaria'
          DataBinding.FieldName = 'CuentaBancaria'
        end
        object tvMasterClabeInterbancaria: TcxGridDBColumn
          Caption = 'Clabe Interbancaria'
          DataBinding.FieldName = 'ClabeInterbancaria'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterSaldoCuenta: TcxGridDBColumn
          Caption = 'Saldo Cuenta'
          DataBinding.FieldName = 'SaldoCuenta'
        end
        object tvMasterIdCuentaBancariaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaEstatus'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited pnlDetail2: TPanel
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited pnlDetail1: TPanel
    Width = 1018
    ExplicitWidth = 1018
  end
  inherited pnlClose: TPanel
    Width = 1018
    ExplicitWidth = 1018
    inherited btnClose: TButton
      Left = 933
      ExplicitLeft = 933
    end
  end
  inherited DataSource: TDataSource
    DataSet = DMCuentasBancariasMovimientos.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 2
    end
    inherited dxbEdit: TdxBar
      Row = 1
      Visible = False
    end
    inherited dxbTools: TdxBar
      DockedLeft = 132
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
      ReportDocument.CreationDate = 42898.598771296300000000
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
        Component = tvMasterBanco
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterClabeInterbancaria
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCuentaBancaria
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBanco
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
        Component = tvMasterIdCuentaBancariaEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancariaTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdDocumento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMoneda
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
        Component = tvMasterSaldoCuenta
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
