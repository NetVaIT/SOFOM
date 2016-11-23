inherited frmPersonasCSD: TfrmPersonasCSD
  Caption = 'frmPersonasCSD'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaCSD: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaCSD'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterIdDocumentoCER: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoCER'
          Visible = False
        end
        object tvMasterIdDocumentoKEY: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoKEY'
          Visible = False
        end
        object tvMasterArchivoKEY: TcxGridDBColumn
          DataBinding.FieldName = 'ArchivoKEY'
          Width = 304
        end
        object tvMasterArchivoCER: TcxGridDBColumn
          DataBinding.FieldName = 'ArchivoCER'
          Width = 304
        end
        object tvMasterClave: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
          Width = 100
        end
        object tvMasterVencimiento: TcxGridDBColumn
          DataBinding.FieldName = 'Vencimiento'
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
