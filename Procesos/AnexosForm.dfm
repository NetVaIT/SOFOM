inherited frmAnexos: TfrmAnexos
  BorderStyle = bsToolWindow
  Caption = 'Anexos'
  ClientHeight = 428
  ClientWidth = 992
  ExplicitWidth = 998
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 992
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 992
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 992
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 992
    Height = 229
    ExplicitTop = 26
    ExplicitWidth = 678
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 992
      Height = 229
      ExplicitWidth = 678
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdCotizacionDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionDetalle'
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
        object tvMasterIdPersonaEmpleado: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaEmpleado'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 60
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 400
        end
        object tvMasterCartaCompensacion: TcxGridDBColumn
          DataBinding.FieldName = 'CartaCompensacion'
        end
        object tvMasterEmpleado: TcxGridDBColumn
          DataBinding.FieldName = 'Empleado'
          Width = 200
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
        object tvMasterOpcionCompraPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'OpcionCompraPorcentaje'
        end
        object tvMasterOpcionCompra: TcxGridDBColumn
          DataBinding.FieldName = 'OpcionCompra'
        end
        object tvMasterValorResidualPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidualPorcentaje'
        end
        object tvMasterValorResidual: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidual'
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
        object tvMasterImpactoISR: TcxGridDBColumn
          DataBinding.FieldName = 'ImpactoISR'
        end
        object tvMasterFechaCorte: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCorte'
        end
        object tvMasterFechaVencimiento: TcxGridDBColumn
          DataBinding.FieldName = 'FechaVencimiento'
        end
        object tvMasterTasaMoratoriaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaMoratoriaAnual'
        end
        object tvMasterPagoInicialCreado: TcxGridDBColumn
          DataBinding.FieldName = 'PagoInicialCreado'
        end
        object tvMasterValorResidualCreado: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidualCreado'
        end
        object tvMasterOpcionCompraCreado: TcxGridDBColumn
          DataBinding.FieldName = 'OpcionCompraCreado'
        end
        object tvMasterCapitalCobrado: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalCobrado'
        end
        object tvMasterSaldoInsoluto: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoInsoluto'
        end
        object tvMasterMontoVencido: TcxGridDBColumn
          DataBinding.FieldName = 'MontoVencido'
        end
        object tvMasterFechaTermino: TcxGridDBColumn
          DataBinding.FieldName = 'FechaTermino'
        end
        object tvMasterMontoTermino: TcxGridDBColumn
          DataBinding.FieldName = 'MontoTermino'
        end
        object tvMasterContratadoTotal: TcxGridDBColumn
          DataBinding.FieldName = 'ContratadoTotal'
        end
        object tvMasterPagadoTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PagadoTotal'
        end
        object tvMasterSaldoTotal: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoTotal'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 992
    ExplicitTop = 346
    ExplicitWidth = 678
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 992
    ExplicitTop = 302
    ExplicitWidth = 678
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 992
    ExplicitTop = 258
    ExplicitWidth = 678
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 992
    ExplicitTop = 387
    ExplicitWidth = 678
    inherited btnClose: TButton
      Left = 907
      ExplicitLeft = 593
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 104
    end
    inherited dxbTools: TdxBar
      DockedLeft = 231
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
          ItemName = 'dxbbGenerar'
        end
        item
          Visible = True
          ItemName = 'dxbbGenMoratorios'
        end
        item
          Visible = True
          ItemName = 'dxbbOpcionCompra'
        end
        item
          Visible = True
          ItemName = 'dxbbRestructurar'
        end
        item
          Visible = True
          ItemName = 'dxbbAbonar'
        end
        item
          Visible = True
          ItemName = 'dxbbReducirCuota'
        end
        item
          Visible = True
          ItemName = 'dxbbReducirPlazo'
        end>
    end
    object dxbbGenerar: TdxBarButton
      Caption = 'Generar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
    end
    object dxbbAbonar: TdxBarButton
      Caption = 'Abonar al capital'
      Category = 0
      Visible = ivNever
    end
    object dxbbRestructurar: TdxBarButton
      Caption = 'Restructurar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
    end
    object dxbbOpcionCompra: TdxBarButton
      Caption = 'Opci'#243'n de compra'
      Category = 0
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
    end
    object dxbbGenMoratorios: TdxBarButton
      Action = dmContratos.actGenMoratorios
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxbbReducirCuota: TdxBarButton
      Caption = 'Reducir cuota'
      Category = 0
      Visible = ivAlways
    end
    object dxbbReducirPlazo: TdxBarButton
      Caption = 'Reducir plazo'
      Category = 0
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
      ReportDocument.CreationDate = 42683.688746423620000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
