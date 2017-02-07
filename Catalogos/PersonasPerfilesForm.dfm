inherited frmPersonasPerfiles: TfrmPersonasPerfiles
  Caption = 'frmPersonasPerfiles'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      ExplicitTop = -3
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaPerfil: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaPerfil'
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
        object tvMasterDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'Documento'
          Visible = False
          Width = 300
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterClasificacion: TcxGridDBColumn
          DataBinding.FieldName = 'Clasificacion'
          Width = 200
        end
        object tvMasterCargo: TcxGridDBColumn
          DataBinding.FieldName = 'Cargo'
          Width = 200
        end
        object tvMasterInstitucion: TcxGridDBColumn
          DataBinding.FieldName = 'Institucion'
          Width = 200
        end
        object tvMasterObservaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
          Width = 300
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasPerfiles.adodsMaster
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
      ReportDocument.CreationDate = 42769.674432685180000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
