inherited frmProductos: TfrmProductos
  Caption = 'frmProductos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterIdProductoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoTipo'
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
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 150
        end
        object tvMasterMarca: TcxGridDBColumn
          DataBinding.FieldName = 'Marca'
          Width = 150
        end
        object tvMasterFamilia: TcxGridDBColumn
          DataBinding.FieldName = 'Familia'
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
      end
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
      ReportDocument.CreationDate = 42681.569967037040000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
