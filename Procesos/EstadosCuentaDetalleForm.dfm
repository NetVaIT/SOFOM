inherited FrmConEstadoCtaDetalle: TFrmConEstadoCtaDetalle
  Caption = 'FrmConEstadoCtaDetalle'
  ClientWidth = 782
  ExplicitWidth = 782
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 782
  end
  inherited splDetail1: TSplitter
    Width = 782
  end
  inherited splDetail2: TSplitter
    Width = 782
  end
  inherited pnlMaster: TPanel
    Width = 782
    inherited cxGrid: TcxGrid
      Width = 782
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdEstadoCuentaDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstadoCuentaDetalle'
          Visible = False
        end
        object tvMasterIdEstadoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstadoCuenta'
          Visible = False
        end
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
        end
        object tvMasterIdPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPago'
          Visible = False
        end
        object tvMasterIdAplicacionIntena: TcxGridDBColumn
          DataBinding.FieldName = 'IdAplicacionIntena'
          Visible = False
        end
        object tvMasterTipoContrato: TcxGridDBColumn
          DataBinding.FieldName = 'TipoContrato'
          Width = 72
        end
        object tvMasterFechaMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'FechaMovimiento'
        end
        object tvMasterTipoMovimiento: TcxGridDBColumn
          DataBinding.FieldName = 'TipoMovimiento'
          Width = 80
        end
        object tvMasterConcepto: TcxGridDBColumn
          DataBinding.FieldName = 'Concepto'
          Width = 400
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterIdCuentaXCobrarDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrarDetalle'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 782
  end
  inherited pnlDetail2: TPanel
    Width = 782
  end
  inherited pnlDetail1: TPanel
    Width = 782
  end
  inherited pnlClose: TPanel
    Width = 782
    inherited btnClose: TButton
      Left = 697
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmEstadosCuenta.AdoDtStEstadoCtaDetalle
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
      ReportDocument.CreationDate = 42744.402549120370000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
