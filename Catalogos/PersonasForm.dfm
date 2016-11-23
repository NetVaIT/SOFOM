inherited frmPersonas: TfrmPersonas
  BorderStyle = bsToolWindow
  Caption = 'frmPersonas'
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 645
    ExplicitTop = 389
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 281
    Width = 645
    ExplicitTop = 132
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 325
    Width = 645
    ExplicitLeft = -4
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 250
    ExplicitWidth = 645
    ExplicitHeight = 36
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 250
      ExplicitWidth = 645
      ExplicitHeight = 36
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdRolTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolTipo'
          Visible = False
        end
        object tvMasterIdPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaTipo'
          Visible = False
        end
        object tvMasterIdRazonSocialTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdRazonSocialTipo'
          Visible = False
        end
        object tvMasterIdSexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdSexo'
          Visible = False
        end
        object tvMasterIdEstadoCivil: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstadoCivil'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdPoblacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPoblacion'
          Visible = False
        end
        object tvMasterIdPersonaTitular: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaTitular'
          Visible = False
        end
        object tvMasterRFC: TcxGridDBColumn
          DataBinding.FieldName = 'RFC'
        end
        object tvMasterCURP: TcxGridDBColumn
          DataBinding.FieldName = 'CURP'
          Visible = False
        end
        object tvMasterRazonSocial: TcxGridDBColumn
          DataBinding.FieldName = 'RazonSocial'
          Width = 800
        end
        object tvMasterPersonaTipo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'PersonaTipo'
        end
        object tvMasterRolTipo: TcxGridDBColumn
          DataBinding.FieldName = 'RolTipo'
        end
        object tvMasterRazonSocialTipo: TcxGridDBColumn
          DataBinding.FieldName = 'RazonSocialTipo'
          Visible = False
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Visible = False
        end
        object tvMasterApellidoPaterno: TcxGridDBColumn
          DataBinding.FieldName = 'ApellidoPaterno'
          Visible = False
        end
        object tvMasterApellidoMaterno: TcxGridDBColumn
          DataBinding.FieldName = 'ApellidoMaterno'
          Visible = False
        end
        object tvMasterFechaNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'FechaNacimiento'
          Visible = False
        end
        object tvMasterSexo: TcxGridDBColumn
          DataBinding.FieldName = 'Sexo'
          Visible = False
        end
        object tvMasterEstadoCivil: TcxGridDBColumn
          DataBinding.FieldName = 'EstadoCivil'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Visible = False
        end
        object tvMasterLugarNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'LugarNacimiento'
          Visible = False
        end
        object tvMasterTitular: TcxGridDBColumn
          DataBinding.FieldName = 'Titular'
          Visible = False
        end
        object tvMasterVigenciaFM34: TcxGridDBColumn
          DataBinding.FieldName = 'VigenciaFM34'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 645
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 328
    Width = 645
    Height = 44
    TabOrder = 1
    ExplicitTop = 304
    ExplicitWidth = 645
    ExplicitHeight = 44
  end
  inherited pnlDetail1: TPanel
    Top = 284
    Width = 645
    TabOrder = 7
    ExplicitTop = 329
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
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
      ReportDocument.CreationDate = 42664.566576585650000000
      BuiltInReportLink = True
    end
  end
end
