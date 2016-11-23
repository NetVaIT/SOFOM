inherited frmArchivosGenerarFacturas: TfrmArchivosGenerarFacturas
  Caption = 'frmArchivosGenerarFacturas'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdArchivoGeneraFactura: TcxGridDBColumn
          DataBinding.FieldName = 'IdArchivoGeneraFactura'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdCSD: TcxGridDBColumn
          DataBinding.FieldName = 'IdCSD'
          Visible = False
        end
        object tvMasterArchivoCSD: TcxGridDBColumn
          DataBinding.FieldName = 'ArchivoCSD'
        end
        object tvMasterIdKey: TcxGridDBColumn
          DataBinding.FieldName = 'IdKey'
          Visible = False
        end
        object tvMasterArchivoKEY: TcxGridDBColumn
          DataBinding.FieldName = 'ArchivoKEY'
        end
        object tvMasterClave: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
