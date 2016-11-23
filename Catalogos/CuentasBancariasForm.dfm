inherited frmCuentasBancarias: TfrmCuentasBancarias
  Caption = 'Cuentas Bancarias'
  ClientWidth = 856
  ExplicitWidth = 856
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited splDetail1: TSplitter
    Top = 195
    Width = 856
    ExplicitTop = 195
    ExplicitWidth = 856
  end
  inherited splDetail2: TSplitter
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlMaster: TPanel
    Width = 856
    Height = 164
    ExplicitWidth = 856
    ExplicitHeight = 164
    inherited cxGrid: TcxGrid
      Width = 856
      Height = 164
      ExplicitWidth = 856
      ExplicitHeight = 164
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
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterIdCuentaBancariaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaEstatus'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 64
        end
        object tvMasterCuentaBancariaTipo: TcxGridDBColumn
          Caption = 'Tipo Cuenta Bancaria'
          DataBinding.FieldName = 'CuentaBancariaTipo'
          Width = 107
        end
        object tvMasterBanco: TcxGridDBColumn
          DataBinding.FieldName = 'Banco'
          Width = 90
        end
        object tvMasterCuentaBancaria: TcxGridDBColumn
          Caption = 'Cuenta Bancaria'
          DataBinding.FieldName = 'CuentaBancaria'
          Width = 95
        end
        object tvMasterClabeInterbancaria: TcxGridDBColumn
          Caption = 'Clabe Interbancaria'
          DataBinding.FieldName = 'ClabeInterbancaria'
          Width = 114
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 71
        end
        object tvMasterEstructuraEstadoCuenta: TcxGridDBColumn
          Caption = 'Estructur aEstado Cuenta'
          DataBinding.FieldName = 'EstructuraEstadoCuenta'
          Width = 129
        end
        object tvMasterSaldoCuenta: TcxGridDBColumn
          Caption = 'Saldo de Cuenta'
          DataBinding.FieldName = 'SaldoCuenta'
          Width = 94
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlDetail2: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited pnlDetail1: TPanel
    Top = 198
    Width = 856
    Height = 130
    ExplicitTop = 198
    ExplicitWidth = 856
    ExplicitHeight = 130
  end
  inherited pnlClose: TPanel
    Width = 856
    ExplicitWidth = 856
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasBancarias.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
