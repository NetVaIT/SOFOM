object FrmAplicacionPago: TFrmAplicacionPago
  Left = 0
  Top = 0
  Caption = 'Aplicaci'#243'n Pago'
  ClientHeight = 683
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PnlDatosPago: TPanel
    Left = 0
    Top = 57
    Width = 1034
    Height = 201
    Align = alTop
    TabOrder = 0
    ExplicitTop = 51
    object Label3: TLabel
      Left = 174
      Top = 98
      Width = 63
      Height = 14
      Caption = 'Folio Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 98
      Width = 65
      Height = 14
      Caption = 'Serie Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblImpAplicaNormal: TLabel
      Left = 376
      Top = 98
      Width = 104
      Height = 14
      Caption = 'Importe a aplicar'
      FocusControl = cxDBTxtEdtImporteAplicar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 174
      Top = 4
      Width = 93
      Height = 14
      Caption = 'Nombre Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 21
      Top = 152
      Width = 125
      Height = 14
      Caption = 'No. Cuenta X Cobrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 512
      Top = 148
      Width = 77
      Height = 14
      Caption = 'Folio Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 21
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblEtiquetaFacto: TLabel
      Left = 512
      Top = 98
      Width = 164
      Height = 14
      Caption = 'Importe a aplicar Factoraje'
      FocusControl = cxDBTxtEdtImporteAplicaFactoraje
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 21
      Top = 50
      Width = 39
      Height = 14
      Caption = 'Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBTxtEdtImporteAplicar: TcxDBTextEdit
      Left = 376
      Top = 114
      DataBinding.DataField = 'Importe'
      DataBinding.DataSource = DSAplicacion
      TabOrder = 0
      Width = 121
    end
    object cxDBLabel1: TcxDBLabel
      Left = 174
      Top = 24
      DataBinding.DataField = 'Cliente'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 550
    end
    object cxDBLabel2: TcxDBLabel
      Left = 174
      Top = 117
      DataBinding.DataField = 'FolioPago'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object cxDBLabel3: TcxDBLabel
      Left = 24
      Top = 118
      DataBinding.DataField = 'SeriePago'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object cxDBLabel5: TcxDBLabel
      Left = 21
      Top = 171
      DataBinding.DataField = 'IdCuentaXCobrar'
      DataBinding.DataSource = DSAplicacion
      Height = 21
      Width = 129
    end
    object cxDBLabel6: TcxDBLabel
      Left = 512
      Top = 163
      DataBinding.DataSource = DSAplicacion
      Visible = False
      Height = 21
      Width = 129
    end
    object cxDBLabel7: TcxDBLabel
      Left = 377
      Top = 163
      DataBinding.DataField = 'IdCFDI'
      DataBinding.DataSource = DSAplicacion
      Visible = False
      Height = 21
      Width = 129
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 21
      Top = 25
      DataBinding.DataField = 'FechaAplicacion'
      DataBinding.DataSource = DSAplicacion
      TabOrder = 7
      Width = 121
    end
    object cxDBTxtEdtImporteAplicaFactoraje: TcxDBTextEdit
      Left = 512
      Top = 114
      DataBinding.DataField = 'ImporteFactoraje'
      DataBinding.DataSource = DSAplicacion
      TabOrder = 8
      Width = 164
    end
    object cxDBLabel4: TcxDBLabel
      Left = 21
      Top = 65
      DataBinding.DataField = 'Anexo'
      DataBinding.DataSource = DSPago
      Height = 27
      Width = 655
    end
  end
  object cxGrid: TcxGrid
    Left = 0
    Top = 297
    Width = 1034
    Height = 155
    Hint = 'Dobleclic sobre el registro para pasar el saldo a pagar'
    ParentCustomHint = False
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    ExplicitTop = 242
    ExplicitHeight = 210
    object tvMaster: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvMasterCellDblClick
      DataController.DataSource = dsConCXCPendientes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.GroupByBox = False
      object tvMasterIdCuentaXCobrar: TcxGridDBColumn
        DataBinding.FieldName = 'IdCuentaXCobrar'
        Width = 97
      end
      object tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn
        DataBinding.FieldName = 'IdCuentaXCobrarEstatus'
        Visible = False
      end
      object tvMasterIdPersona: TcxGridDBColumn
        DataBinding.FieldName = 'IdPersona'
        Visible = False
      end
      object tvMasterIdAnexosAmortizaciones: TcxGridDBColumn
        DataBinding.FieldName = 'IdAnexosAmortizaciones'
        Visible = False
      end
      object tvMasterIdAnexo: TcxGridDBColumn
        DataBinding.FieldName = 'IdAnexo'
        Visible = False
      end
      object tvMasterFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 125
      end
      object tvMasterImporte: TcxGridDBColumn
        DataBinding.FieldName = 'Importe'
        Visible = False
      end
      object tvMasterImpuesto: TcxGridDBColumn
        DataBinding.FieldName = 'Impuesto'
        Visible = False
      end
      object tvMasterInteres: TcxGridDBColumn
        DataBinding.FieldName = 'Interes'
        Visible = False
      end
      object tvMasterTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
      end
      object tvMasterSaldo: TcxGridDBColumn
        DataBinding.FieldName = 'Saldo'
      end
      object tvMasterIdEstadoCuenta: TcxGridDBColumn
        DataBinding.FieldName = 'IdEstadoCuenta'
        Visible = False
      end
      object tvMasterSaldoFactoraje: TcxGridDBColumn
        Caption = 'Saldo Factoraje'
        DataBinding.FieldName = 'SaldoFactoraje'
      end
      object tvMasterIdCFDINormal: TcxGridDBColumn
        DataBinding.FieldName = 'IdCFDINormal'
        Width = 115
      end
      object tvMasterSaldoDocumento: TcxGridDBColumn
        DataBinding.FieldName = 'SaldoDocumento'
        Width = 147
      end
      object tvMasterSaldoFactorajeCFDI: TcxGridDBColumn
        DataBinding.FieldName = 'SaldoFactorajeCFDI'
        Width = 146
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = tvMaster
    end
  end
  object PnlDisponible: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 50
      Top = 20
      Width = 92
      Height = 13
      Caption = 'Saldo Disponible'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblAplicandoFActoraje: TLabel
      Left = 730
      Top = 16
      Width = 162
      Height = 19
      Caption = 'Aplicando Factoraje'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBLblDisponible: TcxDBLabel
      Left = 160
      Top = 18
      DataBinding.DataField = 'Saldo'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object BtBtnAgregar: TBitBtn
      Left = 465
      Top = 15
      Width = 89
      Height = 25
      Caption = 'Agregar '
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BtBtnAgregarClick
    end
    object BtBtnAplicar: TBitBtn
      Left = 576
      Top = 15
      Width = 89
      Height = 25
      Caption = 'Aplicar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FF7FFFFF07333337F3FF33337F333330F767FFFF
        07333337FF77F3337F33333076667FFF07333337F7737F337F33333066F667FF
        07333FF7F33337F37FFFBBB06FFF667F0BB37777F333333F777F3BB0FFFFF667
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BtBtnAplicarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 1034
    Height = 39
    Hint = 
      'Con doble clic sobre el regitro puede copiar el saldo para aplic' +
      'ar, siempre y cuando sea menor que el valor del pago'
    Align = alTop
    Caption = 'Cuentas X Cobrar pendientes del cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    ExplicitTop = 203
  end
  object Panel1: TPanel
    Left = 0
    Top = 452
    Width = 1034
    Height = 39
    Align = alBottom
    Caption = 'Conceptos Asociados a CXC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 491
    Width = 1034
    Height = 192
    Align = alBottom
    TabOrder = 5
    LookAndFeel.Kind = lfStandard
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSDetalleMostrar
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.GroupByBox = False
      object cxGridDBTableView1IdCuentaXCobrarDetalle: TcxGridDBColumn
        DataBinding.FieldName = 'IdCuentaXCobrarDetalle'
        Visible = False
      end
      object cxGridDBTableView1IdCuentaXCobrar: TcxGridDBColumn
        DataBinding.FieldName = 'IdCuentaXCobrar'
        Visible = False
      end
      object cxGridDBTableView1IdCuentaXCobrarTipo: TcxGridDBColumn
        DataBinding.FieldName = 'IdCuentaXCobrarTipo'
        Visible = False
      end
      object cxGridDBTableView1Identificador: TcxGridDBColumn
        DataBinding.FieldName = 'Identificador'
        Width = 75
      end
      object cxGridDBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Width = 321
      end
      object cxGridDBTableView1Importe: TcxGridDBColumn
        DataBinding.FieldName = 'Importe'
      end
      object cxGridDBTableView1PagosAplicados: TcxGridDBColumn
        DataBinding.FieldName = 'PagosAplicados'
      end
      object cxGridDBTableView1Saldo: TcxGridDBColumn
        DataBinding.FieldName = 'Saldo'
      end
      object cxGridDBTableView1PagosAplicadosFactoraje: TcxGridDBColumn
        DataBinding.FieldName = 'PagosAplicadosFactoraje'
        Visible = False
      end
      object cxGridDBTableView1SaldoFactoraje: TcxGridDBColumn
        DataBinding.FieldName = 'SaldoFactoraje'
        Visible = False
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DSPago: TDataSource
    DataSet = dmPagos.adodsMaster
    Left = 20
    Top = 2
  end
  object dsConCXCPendientes: TDataSource
    DataSet = dmPagos.ADODtStCXCPendientes
    Left = 708
    Top = 144
  end
  object DSAplicacion: TDataSource
    DataSet = dmPagos.ADODtStAplicacionesPagos
    OnStateChange = DSAplicacionStateChange
    Left = 684
    Top = 296
  end
  object DSDetallesCXC: TDataSource
    DataSet = dmPagos.ADODtStCxCDetallePend
    Left = 796
    Top = 288
  end
  object DSAuxiliar: TDataSource
    DataSet = dmPagos.ADOQryAuxiliar
    Left = 940
    Top = 128
  end
  object DSP_CalcMoratorio: TDataSource
    DataSet = dmPagos.adopSetCXCMoratorio
    Left = 940
    Top = 200
  end
  object DSDetalleMostrar: TDataSource
    DataSet = dmPagos.ADODtStDetalleCXCMostrar
    Left = 772
    Top = 528
  end
end
