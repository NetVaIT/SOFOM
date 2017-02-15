inherited FrmCXCDetalle: TFrmCXCDetalle
  Caption = 'FrmCXCDetalle'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaXCobrarDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarDetalle'
        end
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarTipo'
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 300
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterSaldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
        end
        object tvMasterSaldoFactoraje: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFactoraje'
          Visible = False
        end
        object tvMasterPagosAplicados: TcxGridDBColumn
          DataBinding.FieldName = 'PagosAplicados'
        end
        object tvMasterPagosAplicadosFactoraje: TcxGridDBColumn
          DataBinding.FieldName = 'PagosAplicadosFactoraje'
          Visible = False
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXCobrar.ADOdsCXCDetalle
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
      ReportDocument.CreationDate = 42709.682872592600000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
