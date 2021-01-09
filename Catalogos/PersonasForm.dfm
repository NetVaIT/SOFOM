inherited frmPersonas: TfrmPersonas
  BorderStyle = bsToolWindow
  Caption = 'frmPersonas'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 389
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 252
    Width = 645
    ExplicitTop = 132
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 296
    Width = 645
    ExplicitLeft = -4
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 226
    ExplicitWidth = 645
    ExplicitHeight = 226
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 226
      ExplicitWidth = 645
      ExplicitHeight = 226
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaTipo'
          Visible = False
        end
        object tvMasterIdRolTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolTipo'
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
        object tvMasterIdPaisNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdPaisNacimiento'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdPaisResidencia: TcxGridDBColumn
          DataBinding.FieldName = 'IdPaisResidencia'
          Visible = False
        end
        object tvMasterIdPoblacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPoblacion'
          Visible = False
        end
        object tvMasterIdMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdMetodoPago'
          Visible = False
        end
        object tvMasterIdCFDIFormaPago33: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIFormaPago33'
          Visible = False
        end
        object tvMasterIdCFDIUsoCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIUsoCFDI'
          Visible = False
        end
        object tvMasterIdRegimenFiscal: TcxGridDBColumn
          DataBinding.FieldName = 'IdRegimenFiscal'
          Visible = False
        end
        object tvMasterIdPersonaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaEstatus'
          Visible = False
        end
        object tvMasterIdBCCalificacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdBCCalificacion'
          Visible = False
        end
        object tvMasterIdRiesgoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdRiesgoTipo'
          Visible = False
        end
        object tvMasterIdBCActividad1: TcxGridDBColumn
          DataBinding.FieldName = 'IdBCActividad1'
          Visible = False
        end
        object tvMasterIdBCActividad2: TcxGridDBColumn
          DataBinding.FieldName = 'IdBCActividad2'
          Visible = False
        end
        object tvMasterIdBCActividad3: TcxGridDBColumn
          DataBinding.FieldName = 'IdBCActividad3'
          Visible = False
        end
        object tvMasterIdDocumentoLogo: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoLogo'
          Visible = False
        end
        object tvMasterIdBancoDeposito: TcxGridDBColumn
          DataBinding.FieldName = 'IdBancoDeposito'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Visible = False
        end
        object tvMasterRFC: TcxGridDBColumn
          DataBinding.FieldName = 'RFC'
          Width = 200
        end
        object tvMasterCURP: TcxGridDBColumn
          DataBinding.FieldName = 'CURP'
          Visible = False
        end
        object tvMasterRazonSocial: TcxGridDBColumn
          DataBinding.FieldName = 'RazonSocial'
          Width = 400
        end
        object tvMasterPersonaTipo: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'PersonaTipo'
          Width = 100
        end
        object tvMasterRolTipo: TcxGridDBColumn
          DataBinding.FieldName = 'RolTipo'
          Width = 100
        end
        object tvMasterRazonSocialTipo: TcxGridDBColumn
          DataBinding.FieldName = 'RazonSocialTipo'
          Visible = False
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Visible = False
          Width = 200
        end
        object tvMasterSegundoNombre: TcxGridDBColumn
          DataBinding.FieldName = 'SegundoNombre'
          Visible = False
          Width = 200
        end
        object tvMasterApellidoPaterno: TcxGridDBColumn
          DataBinding.FieldName = 'ApellidoPaterno'
          Visible = False
          Width = 200
        end
        object tvMasterApellidoMaterno: TcxGridDBColumn
          DataBinding.FieldName = 'ApellidoMaterno'
          Visible = False
          Width = 200
        end
        object tvMasterFechaNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'FechaNacimiento'
          Visible = False
        end
        object tvMasterLugarNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'LugarNacimiento'
          Visible = False
          Width = 304
        end
        object tvMasterPaisNacimiento: TcxGridDBColumn
          DataBinding.FieldName = 'PaisNacimiento'
          Visible = False
          Width = 304
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
          Width = 200
        end
        object tvMasterRegimenFiscalPreferente: TcxGridDBColumn
          DataBinding.FieldName = 'RegimenFiscalPreferente'
          PropertiesClassName = 'TcxCheckBoxProperties'
        end
        object tvMasterListaGAFI: TcxGridDBColumn
          DataBinding.FieldName = 'ListaGAFI'
          PropertiesClassName = 'TcxCheckBoxProperties'
        end
        object tvMasterResidencia: TcxGridDBColumn
          DataBinding.FieldName = 'Residencia'
          Width = 200
        end
        object tvMasterResidenciaRFP: TcxGridDBColumn
          DataBinding.FieldName = 'ResidenciaRFP'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 42
        end
        object tvMasterResidenciaGAFI: TcxGridDBColumn
          DataBinding.FieldName = 'ResidenciaGAFI'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 47
        end
        object tvMasterTitular: TcxGridDBColumn
          DataBinding.FieldName = 'Titular'
          Visible = False
        end
        object tvMasterVigenciaFM34: TcxGridDBColumn
          DataBinding.FieldName = 'VigenciaFM34'
          Visible = False
        end
        object tvMasterNumCtaPagoCliente: TcxGridDBColumn
          DataBinding.FieldName = 'NumCtaPagoCliente'
          Visible = False
        end
        object tvMasterExigeCta: TcxGridDBColumn
          DataBinding.FieldName = 'ExigeCta'
          Visible = False
        end
        object tvMasterSaldoCliente: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoCliente'
          Visible = False
        end
        object tvMasterMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPago'
          Visible = False
        end
        object tvMasterRegimenFiscal: TcxGridDBColumn
          DataBinding.FieldName = 'RegimenFiscal'
          Visible = False
        end
        object tvMasterEstatusPersona: TcxGridDBColumn
          DataBinding.FieldName = 'EstatusPersona'
          Width = 100
        end
        object tvMasterCalificacion: TcxGridDBColumn
          DataBinding.FieldName = 'Calificacion'
          Visible = False
        end
        object tvMasterRiesgo: TcxGridDBColumn
          DataBinding.FieldName = 'Riesgo'
          Width = 100
        end
        object tvMasterActividad1: TcxGridDBColumn
          DataBinding.FieldName = 'Actividad1'
          Visible = False
        end
        object tvMasterActividad2: TcxGridDBColumn
          DataBinding.FieldName = 'Actividad2'
          Visible = False
        end
        object tvMasterActividad3: TcxGridDBColumn
          DataBinding.FieldName = 'Actividad3'
          Visible = False
        end
        object tvMasterPPE: TcxGridDBColumn
          DataBinding.FieldName = 'PPE'
        end
        object tvMasterBloqueada: TcxGridDBColumn
          DataBinding.FieldName = 'Bloqueada'
          Width = 67
        end
        object tvMasterFechaBloqueada: TcxGridDBColumn
          DataBinding.FieldName = 'FechaBloqueada'
        end
        object tvMasterCalificacionInicial: TcxGridDBColumn
          DataBinding.FieldName = 'CalificacionInicial'
          Visible = False
        end
        object tvMasterCalificacionActual: TcxGridDBColumn
          DataBinding.FieldName = 'CalificacionActual'
          Visible = False
        end
        object tvMasterPLDOrigenRecurso: TcxGridDBColumn
          DataBinding.FieldName = 'PLDOrigenRecurso'
          Visible = False
        end
        object tvMasterPLDDestinoRecurso: TcxGridDBColumn
          DataBinding.FieldName = 'PLDDestinoRecurso'
          Visible = False
        end
        object tvMasterPLDMontoMaximo: TcxGridDBColumn
          DataBinding.FieldName = 'PLDMontoMaximo'
          Visible = False
        end
        object tvMasterPLDPagarEfectivo: TcxGridDBColumn
          DataBinding.FieldName = 'PLDPagarEfectivo'
          Visible = False
        end
        object tvMasterPLDMontoMaximoEfectivo: TcxGridDBColumn
          DataBinding.FieldName = 'PLDMontoMaximoEfectivo'
          Visible = False
        end
        object tvMasterPLDNumeroPagos: TcxGridDBColumn
          DataBinding.FieldName = 'PLDNumeroPagos'
          Visible = False
        end
        object tvMasterBancoDeposito: TcxGridDBColumn
          DataBinding.FieldName = 'BancoDeposito'
          Visible = False
        end
        object tvMasterCuentaDeposito: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaDeposito'
          Visible = False
        end
        object tvMasterCLABEDeposito: TcxGridDBColumn
          DataBinding.FieldName = 'CLABEDeposito'
          Visible = False
        end
        object tvMasterCertificadoEFirma: TcxGridDBColumn
          DataBinding.FieldName = 'CertificadoEFirma'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    TabOrder = 2
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 299
    Width = 645
    Height = 44
    TabOrder = 1
    ExplicitTop = 299
    ExplicitWidth = 645
    ExplicitHeight = 44
  end
  inherited pnlDetail1: TPanel
    Top = 255
    Width = 645
    TabOrder = 7
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonas.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 107
    end
    inherited dxbTools: TdxBar
      DockedLeft = 238
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'btnAccionistas'
        end
        item
          Visible = True
          ItemName = 'btnAdministradores'
        end
        item
          Visible = True
          ItemName = 'btnWSPersonas'
        end
        item
          Visible = True
          ItemName = 'btnPersonasBloqueadas'
        end>
    end
    object btnAccionistas: TdxBarButton
      Caption = 'Accionistas'
      Category = 0
      Visible = ivAlways
    end
    object btnAdministradores: TdxBarButton
      Caption = 'Administradores'
      Category = 0
      Visible = ivAlways
    end
    object btnWSPersonas: TdxBarButton
      Caption = 'Buscar en WEB'
      Category = 0
      Visible = ivAlways
    end
    object btnPersonasBloqueadas: TdxBarButton
      Action = dmPersonas.actPersonasBloqueadas
      Category = 0
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42664.566576585640000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited cxpsGrid: TcxPropertiesStore
    Components = <
      item
        Component = tvMaster
        Properties.Strings = (
          'OptionsView.Footer'
          'OptionsView.GroupByBox'
          'OptionsView.GroupFooters')
      end
      item
        Component = tvMasterActividad1
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterActividad2
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterActividad3
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterApellidoMaterno
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterApellidoPaterno
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterBancoDeposito
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCalificacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCalificacionActual
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCalificacionInicial
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCLABEDeposito
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCuentaDeposito
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCURP
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEstadoCivil
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEstatusPersona
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterExigeCta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterFechaNacimiento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBancoDeposito
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBCActividad1
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBCActividad2
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBCActividad3
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBCCalificacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDIFormaPago33
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDIUsoCFDI
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdDocumentoLogo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdentificador
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdEstadoCivil
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdMetodoPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPais
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPaisNacimiento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPersona
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPersonaEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPersonaTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPoblacion
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdRazonSocialTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdRegimenFiscal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdRiesgoTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdRolTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdSexo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterListaGAFI
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterLugarNacimiento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMetodoPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterNombre
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterNumCtaPagoCliente
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPais
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPaisNacimiento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPersonaTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPLDDestinoRecurso
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPLDMontoMaximo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPLDMontoMaximoEfectivo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPLDNumeroPagos
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPLDOrigenRecurso
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPLDPagarEfectivo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterPPE
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRazonSocial
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRazonSocialTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRegimenFiscal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRegimenFiscalPreferente
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRFC
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRiesgo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterRolTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSaldoCliente
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSegundoNombre
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSexo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTitular
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterVigenciaFM34
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end>
  end
end
