inherited frmProductosDocumentos: TfrmProductosDocumentos
  Caption = 'frmProductosDocumentos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdProductoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoDocumento'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterIdProductoDocumentoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoDocumentoTipo'
          Visible = False
        end
        object tvMasterDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'Documento'
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 200
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterFechaEmision: TcxGridDBColumn
          DataBinding.FieldName = 'FechaEmision'
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
      ReportDocument.CreationDate = 42752.734946527780000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
