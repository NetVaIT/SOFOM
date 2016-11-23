inherited frmDocumentos: TfrmDocumentos
  Caption = 'Documentos adjuntos'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterNombreArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'NombreArchivo'
          Width = 200
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterIdDocumentoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoTipo'
          Visible = False
        end
        object tvMasterDocumentoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'DocumentoTipo'
        end
        object tvMasterIdDocumentoClase: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoClase'
          Visible = False
        end
        object tvMasterDocumentoClase: TcxGridDBColumn
          DataBinding.FieldName = 'DocumentoClase'
        end
        object tvMasterArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
          Visible = False
        end
        object tvMasterIdArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'IdArchivo'
          Visible = False
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
      BuiltInReportLink = True
    end
  end
end
