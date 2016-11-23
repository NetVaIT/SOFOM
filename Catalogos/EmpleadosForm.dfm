inherited frmEmpleados: TfrmEmpleados
  Caption = 'frmEmpleados'
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
        object tvMasterIdPerfilPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPerfilPago'
          Visible = False
        end
        object tvMasterNSS: TcxGridDBColumn
          DataBinding.FieldName = 'NSS'
        end
        object tvMasterFechaIngresoIMSS: TcxGridDBColumn
          Caption = 'Fecha de Ingreso al IMSS'
          DataBinding.FieldName = 'FechaIngresoIMSS'
        end
        object tvMasterFechaIngreso: TcxGridDBColumn
          Caption = 'Fecha de Ingreso'
          DataBinding.FieldName = 'FechaIngreso'
        end
        object tvMasterFechaBaja: TcxGridDBColumn
          Caption = 'Fecha de Baja'
          DataBinding.FieldName = 'FechaBaja'
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
