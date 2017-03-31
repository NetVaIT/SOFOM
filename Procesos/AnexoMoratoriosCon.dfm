inherited FrmAnexoMoratoriosDetalle: TFrmAnexoMoratoriosDetalle
  BorderStyle = bsSizeable
  Caption = 'Moratorios Desglose'
  ClientHeight = 418
  ClientWidth = 635
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 333
    Width = 635
  end
  inherited splDetail1: TSplitter
    Top = 245
    Width = 635
  end
  inherited splDetail2: TSplitter
    Top = 289
    Width = 635
  end
  inherited pnlMaster: TPanel
    Width = 635
    Height = 214
    inherited cxGrid: TcxGrid
      Width = 635
      Height = 214
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexoAmortizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoAmortizacion'
          Visible = False
        end
        object tvMasterIdAnexoMoratorioEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoMoratorioEstatus'
          Visible = False
        end
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterImporteBase: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteBase'
          Visible = False
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterDescuento: TcxGridDBColumn
          DataBinding.FieldName = 'Descuento'
          Visible = False
        end
        object tvMasterImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
        end
        object tvMasterImporteAplicado: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteAplicado'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 336
    Width = 635
  end
  inherited pnlDetail2: TPanel
    Top = 292
    Width = 635
  end
  inherited pnlDetail1: TPanel
    Top = 248
    Width = 635
  end
  inherited pnlClose: TPanel
    Top = 377
    Width = 635
    inherited btnClose: TButton
      Left = 550
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPagos.ADODtStAnexoMoratorios
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
      ReportDocument.CreationDate = 42825.530411736110000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
