inherited frmAnexosMoratorios: TfrmAnexosMoratorios
  Caption = 'Moratorios'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      ExplicitTop = -3
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexoMoratorio: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoMoratorio'
          Visible = False
        end
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
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 100
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterImporteBase: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteBase'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterDescuento: TcxGridDBColumn
          DataBinding.FieldName = 'Descuento'
        end
        object tvMasterImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
        end
        object tvMasterImporteAplicado: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteAplicado'
          Visible = False
        end
        object tvMasterCancelacion: TcxGridDBColumn
          DataBinding.FieldName = 'Cancelacion'
          Visible = False
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DatasetInsert: TDataSetInsert
      Enabled = False
      Visible = False
    end
    inherited DatasetDelete: TDataSetDelete
      Enabled = False
      Visible = False
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
      ReportDocument.CreationDate = 42804.494392372680000000
      BuiltInReportLink = True
    end
  end
end
