object FrmAplicacionPago: TFrmAplicacionPago
  Left = 0
  Top = 0
  Caption = 'Aplicaci'#243'n Pago'
  ClientHeight = 683
  ClientWidth = 1082
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlDatosPago: TPanel
    Left = 0
    Top = 57
    Width = 1082
    Height = 201
    Align = alTop
    TabOrder = 0
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
    object SpdBtnActMoraFechaPago: TSpeedButton
      Left = 672
      Top = 170
      Width = 220
      Height = 25
      Caption = 'Actualiza moratorios a Fecha Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4E31314E3131766D6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D55556D5555766D6AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFF4E31
        3199C64E99C64E4E3131FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCAC9C8CAC9C8FFFFFF6D5555FFFFFFFFFFFF6D5555FFFFFFCAC9C8
        CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8776C6C4E3131A2A0A04E313199C6
        4ECCF6A899C64E4E3131FFFFFFCAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CA
        C9C8776C6C6D5555A2A0A06D5555FFFFFFFFFFFFFFFFFF6D5555735C5C473030
        4730304730304730304730304730304730304E313199C64E4E313199C64ECCF6
        A899C64E4E3131FFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7FFFFFFF6D5555FFFFFFFFFFFFFFFFFF6D5555FFFFFF473030EED4BA
        EED4BAEED4BAEED4BAEED4BAEED4BAECD2B95C4141CFF6AC9CC854CCF6A899C6
        4E4E3131FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF6D5555FFFFFFFFFFFF473030FFFFFF
        FFEFE0FFEFE0FFEFE0FFEFE0FFEFE0FDEDDE755E5ED8F8BCD7F8BBA8CE684E31
        31CAC9C8CAC9C8FFFFFF7F7F7FFFFFFFFFFFFFFFEFE0FFEFE0FFEFE0FFFFFFFF
        FFFF7F7F7FFFFFFFFFFFFFFFFFFF6D5555CAC9C8CAC9C8FFFFFF513B3BFFFFFF
        FFEFE0F9E1C9F9E1C9F9E1C9F9E1C995662F897676DEF9C7DDF9C5D8F8BCA1CA
        5C4E3131CAC9C8FFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D
        5555897676FFFFFFFFFFFFFFFFFFFFFFFF6D5555CAC9C8FFFFFF5F4B4BFFFFFF
        9D723E986B3595662E95662EFFEFE095662F948383978686917F7F836E6E6D55
        557E7373FFFFFFFFFFFF7F7F7FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFEFE06D
        5555948383978686917F7F836E6E6D55557E7373FFFFFFFFFFFF655151FFFFFF
        FFF1E4FFF1E3FFF0E1FFEFE0FFEFE095662F95662E95662EEED4BA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE06D
        55556D55556D5555FFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF655151FFFFFF
        FFF1E4FFF1E3FFF0E1FFEFE0FFEFE0FFEFE0F9E1C9F9E1C9EED4BA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF6A5858FFFFFF
        FFF2E6FAE6D2FAE4CFF9E3CDF9E3CD986A3495662E95662ED9C2AA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F
        7F7F7F7F7F7F7F7FFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF766565FFFFFF
        B4936BB39168AE895EAA8457FFF2E6A57D4EFFFFFF95662ED9C2AA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFF2E67F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF817171FFFFFF
        FFF5EBFFF5EBFFF4EAFFF4E9FFF4E9AF8C62A57D4E9A6D37EED4BA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFF5EBFFF5EBFFF4EAFFF4E9FFF4E97F
        7F7F7F7F7F7F7F7FFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF8A7B7BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD6BC473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFFAC9E9E968989
        9689899487878F81818C7E7E8C7E7E8879797F6F6F726161624F4F786262FFFF
        FFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpdBtnActMoraFechaPagoClick
    end
    object SpdBtnSaldoAFavor: TSpeedButton
      Left = 837
      Top = 98
      Width = 127
      Height = 25
      Caption = 'Saldo A Favor'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpdBtnSaldoAFavorClick
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
    Width = 1082
    Height = 155
    Hint = 'Dobleclic sobre el registro para pasar el saldo a pagar'
    ParentCustomHint = False
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    object tvMaster: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvMasterCellDblClick
      DataController.DataSource = dsConCXCPendientes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
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
      object tvMasterIdAnexoAmortizacion: TcxGridDBColumn
        DataBinding.FieldName = 'IdAnexoAmortizacion'
        Visible = False
      end
      object tvMasterIdAnexo: TcxGridDBColumn
        DataBinding.FieldName = 'IdAnexo'
        Visible = False
      end
      object tvMasterFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Visible = False
        Width = 125
      end
      object tvMasterFechaVencimiento: TcxGridDBColumn
        DataBinding.FieldName = 'FechaVencimiento'
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
      object tvMasterDescripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        Width = 202
      end
      object tvMasterTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
      end
      object tvMasterDescuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
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
        Visible = False
      end
      object tvMasterSaldoFactorajeCFDI: TcxGridDBColumn
        DataBinding.FieldName = 'SaldoFactorajeCFDI'
        Visible = False
        Width = 146
      end
      object tvMasterIdCuentaXCobrarBase: TcxGridDBColumn
        DataBinding.FieldName = 'IdCuentaXCobrarBase'
        Visible = False
      end
      object tvMasterIdCFDI: TcxGridDBColumn
        DataBinding.FieldName = 'IdCFDI'
        Visible = False
      end
      object tvMasterEsMoratorio: TcxGridDBColumn
        DataBinding.FieldName = 'EsMoratorio'
        Visible = False
      end
      object tvMasterserie: TcxGridDBColumn
        Caption = 'Serie Factura'
        DataBinding.FieldName = 'serie'
      end
      object tvMasterfolio: TcxGridDBColumn
        Caption = 'Folio Factura'
        DataBinding.FieldName = 'folio'
      end
      object tvMasterSaldoDocumento: TcxGridDBColumn
        Caption = 'Saldo Factura'
        DataBinding.FieldName = 'SaldoDocumento'
        Width = 147
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = tvMaster
    end
  end
  object PnlDisponible: TPanel
    Left = 0
    Top = 0
    Width = 1082
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 266
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
      Left = 802
      Top = 15
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
    object Label8: TLabel
      Left = 24
      Top = 20
      Width = 67
      Height = 13
      Caption = 'Fecha Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBLblDisponible: TcxDBLabel
      Left = 376
      Top = 18
      DataBinding.DataField = 'Saldo'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object BtBtnAgregar: TBitBtn
      Left = 569
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
      Left = 680
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
    object cxDBLabel8: TcxDBLabel
      Left = 108
      Top = 18
      DataBinding.DataField = 'FechaPago'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 1082
    Height = 39
    Hint = 
      'Con doble clic sobre el regitro puede copiar el saldo para aplic' +
      'ar, siempre y cuando sea menor que el valor del pago'
    Align = alTop
    Caption = 'Cuentas X Cobrar pendientes del  Anexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object SpdBtnMostrarDetalleMora: TSpeedButton
      Left = 899
      Top = 6
      Width = 158
      Height = 25
      Caption = 'Moratorios Detallados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF4E31314E3131766D6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D55556D5555766D6AFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFF4E31
        3199C64E99C64E4E3131FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCAC9C8CAC9C8FFFFFF6D5555FFFFFFFFFFFF6D5555FFFFFFCAC9C8
        CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8776C6C4E3131A2A0A04E313199C6
        4ECCF6A899C64E4E3131FFFFFFCAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CA
        C9C8776C6C6D5555A2A0A06D5555FFFFFFFFFFFFFFFFFF6D5555735C5C473030
        4730304730304730304730304730304730304E313199C64E4E313199C64ECCF6
        A899C64E4E3131FFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7FFFFFFF6D5555FFFFFFFFFFFFFFFFFF6D5555FFFFFF473030EED4BA
        EED4BAEED4BAEED4BAEED4BAEED4BAECD2B95C4141CFF6AC9CC854CCF6A899C6
        4E4E3131FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF6D5555FFFFFFFFFFFF473030FFFFFF
        FFEFE0FFEFE0FFEFE0FFEFE0FFEFE0FDEDDE755E5ED8F8BCD7F8BBA8CE684E31
        31CAC9C8CAC9C8FFFFFF7F7F7FFFFFFFFFFFFFFFEFE0FFEFE0FFEFE0FFFFFFFF
        FFFF7F7F7FFFFFFFFFFFFFFFFFFF6D5555CAC9C8CAC9C8FFFFFF513B3BFFFFFF
        FFEFE0F9E1C9F9E1C9F9E1C9F9E1C995662F897676DEF9C7DDF9C5D8F8BCA1CA
        5C4E3131CAC9C8FFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D
        5555897676FFFFFFFFFFFFFFFFFFFFFFFF6D5555CAC9C8FFFFFF5F4B4BFFFFFF
        9D723E986B3595662E95662EFFEFE095662F948383978686917F7F836E6E6D55
        557E7373FFFFFFFFFFFF7F7F7FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFEFE06D
        5555948383978686917F7F836E6E6D55557E7373FFFFFFFFFFFF655151FFFFFF
        FFF1E4FFF1E3FFF0E1FFEFE0FFEFE095662F95662E95662EEED4BA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE06D
        55556D55556D5555FFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF655151FFFFFF
        FFF1E4FFF1E3FFF0E1FFEFE0FFEFE0FFEFE0F9E1C9F9E1C9EED4BA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF6A5858FFFFFF
        FFF2E6FAE6D2FAE4CFF9E3CDF9E3CD986A3495662E95662ED9C2AA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F
        7F7F7F7F7F7F7F7FFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF766565FFFFFF
        B4936BB39168AE895EAA8457FFF2E6A57D4EFFFFFF95662ED9C2AA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7FFFF2E67F
        7F7FFFFFFF7F7F7FFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF817171FFFFFF
        FFF5EBFFF5EBFFF4EAFFF4E9FFF4E9AF8C62A57D4E9A6D37EED4BA473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFF5EBFFF5EBFFF4EAFFF4E9FFF4E97F
        7F7F7F7F7F7F7F7FFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFF8A7B7BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD6BC473030CAC9
        C8FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7F7F7FCAC9C8FFFFFFFFFFFFFFFFFFAC9E9E968989
        9689899487878F81818C7E7E8C7E7E8879797F6F6F726161624F4F786262FFFF
        FFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpdBtnMostrarDetalleMoraClick
    end
    object cxChckBxCambioconsulta: TcxCheckBox
      Left = 24
      Top = 11
      Hint = 
        'Proceso '#250'nicamente en versi'#243'n de pruebas. '#13#10'Desglosa unicamente ' +
        'las CXC asociadas a anexos . '#13#10'Seleccione la cuenta por cobrar p' +
        'ara colocar el valor a pagar.'
      Caption = 'S'#243'lo cuentas por cobrar asociadas al anexo'
      TabOrder = 0
      OnClick = cxChckBxCambioconsultaClick
      Width = 305
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 452
    Width = 1082
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
    Width = 1082
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
        Width = 77
      end
      object cxGridDBTableView1Descuento: TcxGridDBColumn
        DataBinding.FieldName = 'Descuento'
      end
      object cxGridDBTableView1PagosAplicados: TcxGridDBColumn
        DataBinding.FieldName = 'PagosAplicados'
        Width = 90
      end
      object cxGridDBTableView1Saldo: TcxGridDBColumn
        DataBinding.FieldName = 'Saldo'
        Width = 113
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
    OnDataChange = dsConCXCPendientesDataChange
    OnUpdateData = dsConCXCPendientesUpdateData
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
    Left = 988
    Top = 120
  end
  object DSP_CalcMoratorioNueva: TDataSource
    Left = 940
    Top = 200
  end
  object DSDetalleMostrar: TDataSource
    DataSet = dmPagos.ADODtStDetalleCXCMostrar
    Left = 772
    Top = 528
  end
  object DSP_ActTotalCXC: TDataSource
    Left = 796
    Top = 352
  end
  object adospUpdPagosAplicacionesCFDI: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdPagosAplicacionesCFDI;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCFDI'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 976
    Top = 64
  end
  object DSAnexoMoraAcumula: TDataSource
    DataSet = dmPagos.AdoQryAnexoMoraAcumula
    OnDataChange = dsConCXCPendientesDataChange
    OnUpdateData = dsConCXCPendientesUpdateData
    Left = 836
    Top = 8
  end
  object ADOStrdPrcSeparaAnexoMora: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SeparaAnexosMoratorios;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdCXCMoraBase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdAnexoMoraBase'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ValImporte1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@ValImporte2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@valDescto1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@valDescto2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@valIVA1'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@valIVA2'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end
      item
        Name = '@ListaAneMoraAparte'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1073741823
        Value = Null
      end
      item
        Name = '@IdAnexoMoratorio'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 592
    Top = 64
  end
  object DSCXCPendienteReestructura: TDataSource
    DataSet = dmPagos.ADODtStCxCPendReest
    OnDataChange = dsConCXCPendientesDataChange
    OnUpdateData = dsConCXCPendientesUpdateData
    Left = 76
    Top = 352
  end
  object DSAplicacionReestructura: TDataSource
    DataSet = dmPagos.ADODtStAplicaPagoReest
    OnStateChange = DSAplicacionStateChange
    Left = 60
    Top = 504
  end
  object dsDetalleCXCPendReest: TDataSource
    DataSet = dmPagos.ADODtStCXCDetallePendReest
    Left = 244
    Top = 360
  end
  object DSCXCNuevasPendientes: TDataSource
    DataSet = dmPagos.ADOQryConCXCNuevas
    Left = 1004
    Top = 16
  end
end
