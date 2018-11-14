inherited frmFragmentosPagos: TfrmFragmentosPagos
  BorderStyle = bsToolWindow
  Caption = 'Fragmentos de pagos'
  ClientHeight = 487
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 422
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 249
    Width = 645
    Align = alTop
    ExplicitLeft = -16
    ExplicitTop = 202
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 384
    Width = 645
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 223
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 223
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 223
      ExplicitWidth = 645
      ExplicitHeight = 223
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPago'
          Visible = False
        end
        object tvMasterIdPersonaCliente: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaCliente'
          Visible = False
        end
        object tvMasterIdBanco: TcxGridDBColumn
          DataBinding.FieldName = 'IdBanco'
          Visible = False
        end
        object tvMasterIdCuentaBancariaEstadoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaEstadoCuenta'
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
        object tvMasterIdCuentaBancariaOrdenante: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaOrdenante'
          Visible = False
        end
        object tvMasterIdCuentaBancariaBeneficiario: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaBancariaBeneficiario'
          Visible = False
        end
        object tvMasterIdCFDITipoCadenaPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDITipoCadenaPago'
          Visible = False
        end
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdCFDI_NCR: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI_NCR'
          Visible = False
        end
        object tvMasterIdMonedaOrigen: TcxGridDBColumn
          DataBinding.FieldName = 'IdMonedaOrigen'
          Visible = False
        end
        object tvMasterFechaPago: TcxGridDBColumn
          DataBinding.FieldName = 'FechaPago'
        end
        object tvMasterSeriePago: TcxGridDBColumn
          DataBinding.FieldName = 'SeriePago'
        end
        object tvMasterFolioPago: TcxGridDBColumn
          DataBinding.FieldName = 'FolioPago'
        end
        object tvMasterReferencia: TcxGridDBColumn
          DataBinding.FieldName = 'Referencia'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterSaldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
        end
        object tvMasterObservaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
        end
        object tvMasterCuentaPago: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaPago'
        end
        object tvMasterOrigenPago: TcxGridDBColumn
          DataBinding.FieldName = 'OrigenPago'
        end
        object tvMasterEsDeposito: TcxGridDBColumn
          DataBinding.FieldName = 'EsDeposito'
        end
        object tvMasterCertificado: TcxGridDBColumn
          DataBinding.FieldName = 'Certificado'
        end
        object tvMasterCadena: TcxGridDBColumn
          DataBinding.FieldName = 'Cadena'
        end
        object tvMasterIdPagoReal: TcxGridDBColumn
          DataBinding.FieldName = 'IdPagoReal'
          Visible = False
        end
        object tvMastersello: TcxGridDBColumn
          DataBinding.FieldName = 'sello'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 425
    Width = 645
    Height = 21
    ExplicitTop = 425
    ExplicitWidth = 645
    ExplicitHeight = 21
  end
  inherited pnlDetail2: TPanel
    Top = 387
    Width = 645
    Height = 35
    ExplicitTop = 387
    ExplicitWidth = 645
    ExplicitHeight = 35
  end
  inherited pnlDetail1: TPanel
    Top = 252
    Width = 645
    Height = 132
    Align = alClient
    ExplicitTop = 252
    ExplicitWidth = 645
    ExplicitHeight = 132
  end
  inherited pnlClose: TPanel
    Top = 446
    Width = 645
    ExplicitTop = 446
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = DMPagosReales.ADOdsPagosFragmentos
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
      ReportDocument.CreationDate = 43336.409974884260000000
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
        Component = tvMasterCadena
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCertificado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCuentaPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEsDeposito
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterFechaPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterFolioPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdAnexo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdBanco
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
        Component = tvMasterIdCFDITipoCadenaPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDI_NCR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdContrato
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancariaBeneficiario
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancariaEstadoCuenta
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCuentaBancariaOrdenante
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
        Component = tvMasterIdMonedaOrigen
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPagoReal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdPersonaCliente
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImporte
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterObservaciones
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterOrigenPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterReferencia
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSaldo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMastersello
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSeriePago
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
