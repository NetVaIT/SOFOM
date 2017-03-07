inherited frmAnexos: TfrmAnexos
  BorderStyle = bsToolWindow
  Caption = 'Anexos'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 224
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdCotizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacion'
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
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 60
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
        object tvMasterPagoInicialCreado: TcxGridDBColumn
          DataBinding.FieldName = 'PagoInicialCreado'
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
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
    end
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
          ItemName = 'dxbbGenerar'
        end
        item
          Visible = True
          ItemName = 'dxbbAbonar'
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
      Caption = 'Abono a capital'
      Category = 0
      Visible = ivNever
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
