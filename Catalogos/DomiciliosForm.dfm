inherited frmDomicilios: TfrmDomicilios
  Caption = 'Domicilios'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilio'
          Visible = False
        end
        object tvMasterCalle: TcxGridDBColumn
          DataBinding.FieldName = 'Calle'
          Width = 185
        end
        object tvMasterNoExterior: TcxGridDBColumn
          DataBinding.FieldName = 'NoExterior'
        end
        object tvMasterNoInterior: TcxGridDBColumn
          DataBinding.FieldName = 'NoInterior'
        end
        object tvMasterColonia: TcxGridDBColumn
          DataBinding.FieldName = 'Colonia'
          Width = 185
        end
        object tvMasterReferencia: TcxGridDBColumn
          DataBinding.FieldName = 'Referencia'
          Width = 185
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdEstado: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstado'
          Visible = False
        end
        object tvMasterIdMunicipio: TcxGridDBColumn
          DataBinding.FieldName = 'IdMunicipio'
          Visible = False
        end
        object tvMasterIdPoblacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPoblacion'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 185
        end
        object tvMasterEstado: TcxGridDBColumn
          DataBinding.FieldName = 'Estado'
          Width = 185
        end
        object tvMasterMunicipio: TcxGridDBColumn
          DataBinding.FieldName = 'Municipio'
          Width = 185
        end
        object tvMasterPoblacion: TcxGridDBColumn
          DataBinding.FieldName = 'Poblacion'
          Width = 185
        end
        object tvMasterCodigoPostal: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoPostal'
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
end
