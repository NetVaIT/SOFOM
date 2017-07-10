inherited frmProductos: TfrmProductos
  BorderStyle = bsToolWindow
  Caption = 'Productos'
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
    Height = 229
    ExplicitTop = 26
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdProductoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoTipo'
          Visible = False
        end
        object tvMasterIdProductoDestino: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoDestino'
          Visible = False
        end
        object tvMasterIdMarca: TcxGridDBColumn
          DataBinding.FieldName = 'IdMarca'
          Visible = False
        end
        object tvMasterIdFamilia: TcxGridDBColumn
          DataBinding.FieldName = 'IdFamilia'
          Visible = False
        end
        object tvMasterIdProductoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoEstatus'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterContrato: TcxGridDBColumn
          DataBinding.FieldName = 'Contrato'
        end
        object tvMasterAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'Anexo'
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Visible = False
          Width = 304
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterDestino: TcxGridDBColumn
          DataBinding.FieldName = 'Destino'
          Width = 150
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 150
        end
        object tvMasterFamilia: TcxGridDBColumn
          DataBinding.FieldName = 'Familia'
          Width = 150
        end
        object tvMasterMarca: TcxGridDBColumn
          DataBinding.FieldName = 'Marca'
          Width = 150
        end
        object tvMasterModelo: TcxGridDBColumn
          DataBinding.FieldName = 'Modelo'
          Width = 150
        end
        object tvMasterAnio: TcxGridDBColumn
          DataBinding.FieldName = 'Anio'
        end
        object tvMasterNumeroSerie: TcxGridDBColumn
          DataBinding.FieldName = 'NumeroSerie'
        end
        object tvMasterNumeroEconomico: TcxGridDBColumn
          DataBinding.FieldName = 'NumeroEconomico'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 100
        end
        object tvMasterFechaImportacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaImportacion'
        end
        object tvMasterPedimento: TcxGridDBColumn
          DataBinding.FieldName = 'Pedimento'
          Width = 200
        end
        object tvMasterAduana: TcxGridDBColumn
          DataBinding.FieldName = 'Aduana'
          Width = 200
        end
        object tvMasterFechaCompra: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCompra'
        end
        object tvMasterPrecioMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioMoneda'
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 121
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
        object tvMasterPorcentajeContable: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeContable'
        end
        object tvMasterDepreciacionContable: TcxGridDBColumn
          DataBinding.FieldName = 'DepreciacionContable'
        end
        object tvMasterValorContable: TcxGridDBColumn
          DataBinding.FieldName = 'ValorContable'
        end
        object tvMasterPorcentajeComercial: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeComercial'
        end
        object tvMasterDepreciacionComercial: TcxGridDBColumn
          DataBinding.FieldName = 'DepreciacionComercial'
        end
        object tvMasterValorComercial: TcxGridDBColumn
          DataBinding.FieldName = 'ValorComercial'
        end
        object tvMasterPorcentajeAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeAnexo'
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
      26
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
          ItemName = 'dxbbActualizarDeprecicion'
        end>
    end
    object dxbbActualizarDeprecicion: TdxBarButton
      Caption = 'Actualizar depreciaci'#243'n'
      Category = 0
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
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
      ReportDocument.CreationDate = 42681.569967037040000000
      BuiltInReportLink = True
    end
  end
end
