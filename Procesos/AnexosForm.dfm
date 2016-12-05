inherited frmAnexos: TfrmAnexos
  Caption = 'frmAnexos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterIdAnexoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoEstatus'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 400
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterPrecioMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioMoneda'
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 110
        end
        object tvMasterTipoCambio: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCambio'
        end
        object tvMasterPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
        end
        object tvMasterImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Impuesto'
        end
        object tvMasterPrecioTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioTotal'
        end
        object tvMasterEnganchePorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'EnganchePorcentaje'
        end
        object tvMasterEnganche: TcxGridDBColumn
          DataBinding.FieldName = 'Enganche'
        end
        object tvMasterComisionPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'ComisionPorcentaje'
        end
        object tvMasterComision: TcxGridDBColumn
          DataBinding.FieldName = 'Comision'
        end
        object tvMasterComisionImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'ComisionImpuesto'
        end
        object tvMasterGastos: TcxGridDBColumn
          DataBinding.FieldName = 'Gastos'
        end
        object tvMasterGastosImpuestos: TcxGridDBColumn
          DataBinding.FieldName = 'GastosImpuestos'
        end
        object tvMasterDespositosNumero: TcxGridDBColumn
          DataBinding.FieldName = 'DespositosNumero'
        end
        object tvMasterDepositos: TcxGridDBColumn
          DataBinding.FieldName = 'Depositos'
        end
        object tvMasterPagoIncial: TcxGridDBColumn
          DataBinding.FieldName = 'PagoIncial'
        end
        object tvMasterMontoFinanciar: TcxGridDBColumn
          DataBinding.FieldName = 'MontoFinanciar'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
        end
        object tvMasterPlazo: TcxGridDBColumn
          DataBinding.FieldName = 'Plazo'
        end
        object tvMasterPagoMensual: TcxGridDBColumn
          DataBinding.FieldName = 'PagoMensual'
        end
        object tvMasterFechaInicial: TcxGridDBColumn
          DataBinding.FieldName = 'FechaInicial'
        end
        object tvMasterFechaCorte: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCorte'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 60
        end
      end
    end
  end
  inherited DataSource: TDataSource
    OnDataChange = DataSourceDataChange
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbbProductos'
        end>
    end
    object dxbbProductos: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
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
      ReportDocument.CreationDate = 42683.688746423610000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
