inherited frmListasRestringidas: TfrmListasRestringidas
  Caption = 'frmListasRestringidas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdListaRestringida: TcxGridDBColumn
          DataBinding.FieldName = 'IdListaRestringida'
          Visible = False
        end
        object tvMasterIdOrganismo: TcxGridDBColumn
          DataBinding.FieldName = 'IdOrganismo'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstatus'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 100
        end
        object tvMasterOrganismo: TcxGridDBColumn
          DataBinding.FieldName = 'Organismo'
          Width = 200
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 200
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 300
        end
        object tvMasterAlias: TcxGridDBColumn
          DataBinding.FieldName = 'Alias'
          Width = 300
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
      ReportDocument.CreationDate = 42776.465400173610000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
