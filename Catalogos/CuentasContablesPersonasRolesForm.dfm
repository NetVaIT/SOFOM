inherited frmCuentasContablesPersonasRoles: TfrmCuentasContablesPersonasRoles
  Caption = 'frmCuentasContablesPersonasRoles'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaContablePersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContablePersonaRol'
          Visible = False
        end
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
