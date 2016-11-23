inherited frmClientes: TfrmClientes
  Caption = 'frmClientes'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      ExplicitWidth = 651
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdCuentaContable: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContable'
          Visible = False
        end
        object tvMasterIdCuentaContableNCA: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContableNCA'
          Visible = False
        end
        object tvMasterIdCuentaContableNCR: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContableNCR'
          Visible = False
        end
        object tvMasterIdCuentaContableAnticipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContableAnticipo'
          Visible = False
        end
        object tvMasterCuentaContable: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
        end
        object tvMasterCuentaContableNCA: TcxGridDBColumn
          Caption = 'Cuenta Contable NCA'
          DataBinding.FieldName = 'CuentaContableNCA'
        end
        object tvMasterCuentaContableNCR: TcxGridDBColumn
          Caption = 'Cuenta Contable NCR'
          DataBinding.FieldName = 'CuentaContableNCR'
        end
        object tvMasterCuentaContableAnticipo: TcxGridDBColumn
          Caption = 'Cuenta Contable Anticipo'
          DataBinding.FieldName = 'CuentaContableAnticipo'
        end
        object tvMasterTotalFacturado: TcxGridDBColumn
          Caption = 'Total Facturado'
          DataBinding.FieldName = 'TotalFacturado'
        end
        object tvMasterSaldoPendiente: TcxGridDBColumn
          Caption = 'Saldo Pendiente'
          DataBinding.FieldName = 'SaldoPendiente'
        end
        object tvMasterCalificacion: TcxGridDBColumn
          DataBinding.FieldName = 'Calificacion'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmClientes.adodsMaster
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
      BuiltInReportLink = True
    end
  end
end
