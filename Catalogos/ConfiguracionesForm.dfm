inherited frmConfiguraciones: TfrmConfiguraciones
  Caption = 'frmConfiguraciones'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 200
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 200
        end
        object tvMasterPorcentajeImpuestoIVA: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeImpuestoIVA'
        end
        object tvMasterRutaBaseFacturas: TcxGridDBColumn
          DataBinding.FieldName = 'RutaBaseFacturas'
          Width = 200
        end
        object tvMasterRutaBasePagos: TcxGridDBColumn
          DataBinding.FieldName = 'RutaBasePagos'
          Width = 200
        end
        object tvMasterUltimoFolioPago: TcxGridDBColumn
          DataBinding.FieldName = 'UltimoFolioPago'
          Width = 124
        end
        object tvMasterUltimaSeriePago: TcxGridDBColumn
          DataBinding.FieldName = 'UltimaSeriePago'
        end
        object tvMasterBCClaveInstitucion: TcxGridDBColumn
          DataBinding.FieldName = 'BCClaveInstitucion'
        end
        object tvMasterBCInstitucion: TcxGridDBColumn
          DataBinding.FieldName = 'BCInstitucion'
          Width = 200
        end
        object tvMasterBCTipo: TcxGridDBColumn
          DataBinding.FieldName = 'BCTipo'
          Width = 53
        end
        object tvMasterPLDPerfilTransaccional: TcxGridDBColumn
          DataBinding.FieldName = 'PLDPerfilTransaccional'
          Visible = False
        end
        object tvMasterPLDInicioOperaciones: TcxGridDBColumn
          DataBinding.FieldName = 'PLDInicioOperaciones'
          Width = 124
        end
        object tvMasterPLDCodigoCASFIM: TcxGridDBColumn
          DataBinding.FieldName = 'PLDCodigoCASFIM'
          Width = 112
        end
        object tvMasterPLDSupervisorCNBV: TcxGridDBColumn
          DataBinding.FieldName = 'PLDSupervisorCNBV'
        end
        object tvMasterPLDArchivoRuta: TcxGridDBColumn
          DataBinding.FieldName = 'PLDArchivoRuta'
          Width = 200
        end
        object tvMasterPLDArchivoExtension: TcxGridDBColumn
          DataBinding.FieldName = 'PLDArchivoExtension'
          Width = 111
        end
        object tvMasterPLDMontoRelevante: TcxGridDBColumn
          DataBinding.FieldName = 'PLDMontoRelevante'
        end
        object tvMasterPLDLocalidad: TcxGridDBColumn
          DataBinding.FieldName = 'PLDLocalidad'
        end
        object tvMasterPLDCodigoPostal: TcxGridDBColumn
          DataBinding.FieldName = 'PLDCodigoPostal'
          Width = 103
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DatasetInsert: TDataSetInsert
      Visible = False
    end
    inherited DatasetDelete: TDataSetDelete
      Visible = False
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
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
      ReportDocument.CreationDate = 42790.505809502310000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
