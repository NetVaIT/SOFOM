inherited frmPuestosPerfiles: TfrmPuestosPerfiles
  Caption = 'Perfiles de Puestos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPuestoPerfil: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuestoPerfil'
          Visible = False
        end
        object tvMasterIdPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuesto'
          Visible = False
        end
        object tvMasterIdPuestoPerfilCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuestoPerfilCategoria'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 250
        end
        object tvMasterPerfilCategoria: TcxGridDBColumn
          DataBinding.FieldName = 'PerfilCategoria'
          Width = 250
        end
        object tvMasterValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
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
      ReportDocument.CreationDate = 42593.698906956020000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
