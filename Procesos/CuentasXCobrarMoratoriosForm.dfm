inherited frmConCXCMoratorios: TfrmConCXCMoratorios
  BorderStyle = bsToolWindow
  Caption = 'Cuentas X Cobrar de Moratorios'
  ClientHeight = 428
  ClientWidth = 771
  ExplicitWidth = 777
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 771
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 771
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 771
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 771
    Height = 224
    ExplicitWidth = 771
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 771
      Height = 224
      ExplicitWidth = 771
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarEstatus'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdAnexosAmortizaciones: TcxGridDBColumn
          Caption = 'No. Anexo Amortizaci'#243'n'
          DataBinding.FieldName = 'IdAnexosAmortizaciones'
          Width = 120
        end
        object tvMasterFecha: TcxGridDBColumn
          Caption = 'Fecha Registro'
          DataBinding.FieldName = 'Fecha'
          Visible = False
          Width = 90
        end
        object tvMasterFechaVencimiento: TcxGridDBColumn
          Caption = 'Fecha Vencimiento'
          DataBinding.FieldName = 'FechaVencimiento'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 129
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
          Width = 94
        end
        object tvMasterImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
          Width = 79
        end
        object tvMasterInteres: TcxGridDBColumn
          DataBinding.FieldName = 'Interes'
          Visible = False
        end
        object tvMasterTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 77
        end
        object tvMasterSaldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
          Width = 82
        end
        object tvMasterSaldoFactoraje: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFactoraje'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarBase: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarBase'
          Visible = False
        end
        object tvMasterIdCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 771
    ExplicitTop = 346
    ExplicitWidth = 771
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 771
    ExplicitTop = 302
    ExplicitWidth = 771
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 771
    ExplicitTop = 258
    ExplicitWidth = 771
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 771
    ExplicitTop = 387
    ExplicitWidth = 771
    inherited btnClose: TButton
      Left = 686
      ExplicitLeft = 686
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXCobrar.ADODTSTCXCMoratorios
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
      ReportDocument.CreationDate = 42821.676877581020000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
