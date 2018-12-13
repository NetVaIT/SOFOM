inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 436
  ClientWidth = 388
  ExplicitWidth = 394
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 388
    Height = 395
    Properties.ActivePage = cxTbShtCorreoSalida
    ExplicitWidth = 388
    ExplicitHeight = 395
    ClientRectBottom = 391
    ClientRectRight = 384
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 380
      ExplicitHeight = 367
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox2
      end
      object Label8: TLabel
        Left = 16
        Top = 131
        Width = 119
        Height = 13
        Caption = 'Ruta Base para Facturas'
        FocusControl = cxDBTextEdit1
      end
      object Label12: TLabel
        Left = 16
        Top = 171
        Width = 106
        Height = 13
        Caption = 'Ruta Base para pagos'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 216
        Width = 94
        Height = 13
        Caption = #218'ltimo folio de pago'
        FocusControl = cxDBSpinEdit1
      end
      object Label4: TLabel
        Left = 16
        Top = 256
        Width = 97
        Height = 13
        Caption = #218'ltima serie de pago'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 88
        Width = 118
        Height = 13
        Caption = 'Porcentaje impuesto IVA'
        FocusControl = cxDBCurrencyEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 24
        Width = 304
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 64
        Width = 304
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 147
        DataBinding.DataField = 'RutaBaseFacturas'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 304
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 187
        DataBinding.DataField = 'RutaBasePagos'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 304
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 232
        DataBinding.DataField = 'UltimoFolioPago'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 272
        DataBinding.DataField = 'UltimaSeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'PorcentajeImpuestoIVA'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object btnGetPlantillaAmortizacion: TcxButton
        Left = 16
        Top = 312
        Width = 304
        Height = 25
        Caption = 'Obtener plantilla amortizaciones'
        TabOrder = 7
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Buro de cr'#233'dito'
      ImageIndex = 1
      object Label6: TLabel
        Left = 16
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Clave instituci'#243'n'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 16
        Top = 48
        Width = 50
        Height = 13
        Caption = 'Instituci'#243'n'
        FocusControl = cxDBTextEdit5
      end
      object Label9: TLabel
        Left = 16
        Top = 96
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = cxDBTextEdit6
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'BCClaveInstitucion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'BCInstitucion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'BCTipo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'PLD'
      ImageIndex = 2
      object Label10: TLabel
        Left = 16
        Top = 8
        Width = 86
        Height = 13
        Caption = 'Inicio operaciones'
        FocusControl = cxDBTextEdit7
      end
      object Label11: TLabel
        Left = 16
        Top = 48
        Width = 74
        Height = 13
        Caption = 'C'#243'digo CASFIM'
        FocusControl = cxDBTextEdit8
      end
      object Label13: TLabel
        Left = 16
        Top = 88
        Width = 80
        Height = 13
        Caption = 'Supervisor CNBV'
        FocusControl = cxDBTextEdit9
      end
      object Label14: TLabel
        Left = 16
        Top = 128
        Width = 61
        Height = 13
        Caption = 'Ruta archivo'
        FocusControl = cxDBTextEdit10
      end
      object Label15: TLabel
        Left = 16
        Top = 168
        Width = 85
        Height = 13
        Caption = 'Extensi'#243'n archivo'
        FocusControl = cxDBTextEdit11
      end
      object Label16: TLabel
        Left = 16
        Top = 208
        Width = 125
        Height = 13
        Caption = 'Monto relevante (dolares)'
        FocusControl = cxDBCurrencyEdit2
      end
      object Label17: TLabel
        Left = 16
        Top = 248
        Width = 44
        Height = 13
        Caption = 'Localidad'
        FocusControl = cxDBTextEdit12
      end
      object Label18: TLabel
        Left = 16
        Top = 288
        Width = 65
        Height = 13
        Caption = 'C'#243'digo postal'
        FocusControl = cxDBTextEdit13
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'PLDInicioOperaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'PLDCodigoCASFIM'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'PLDSupervisorCNBV'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 16
        Top = 144
        DataBinding.DataField = 'PLDArchivoRuta'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 300
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 16
        Top = 184
        DataBinding.DataField = 'PLDArchivoExtension'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 16
        Top = 224
        DataBinding.DataField = 'PLDMontoRelevante'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 16
        Top = 264
        DataBinding.DataField = 'PLDLocalidad'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 16
        Top = 304
        DataBinding.DataField = 'PLDCodigoPostal'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
    end
    object cxTbShtCorreoSalida: TcxTabSheet
      Caption = 'Correo Env'#237'o'
      ImageIndex = 3
      object Label26: TLabel
        Left = 25
        Top = 20
        Width = 62
        Height = 13
        Caption = 'Correo Envio'
        FocusControl = cxDBTxtEdtCorreo
      end
      object Label27: TLabel
        Left = 25
        Top = 68
        Width = 51
        Height = 13
        Caption = 'Host Envio'
        FocusControl = cxDBTxtEdtHost
      end
      object Label28: TLabel
        Left = 207
        Top = 68
        Width = 61
        Height = 13
        Caption = 'Puerto Envio'
        FocusControl = cxDBTxtEdtPuerto
      end
      object Label29: TLabel
        Left = 25
        Top = 122
        Width = 72
        Height = 13
        Caption = 'Usuario Correo'
        FocusControl = cxDBTextEdit21
      end
      object Label30: TLabel
        Left = 25
        Top = 170
        Width = 82
        Height = 13
        Caption = 'Password Correo'
      end
      object Label31: TLabel
        Left = 25
        Top = 222
        Width = 71
        Height = 13
        Caption = 'Tipo Seguridad'
        FocusControl = cxDBTxtEdtTipoSeg
      end
      object Label32: TLabel
        Left = 25
        Top = 270
        Width = 104
        Height = 13
        Caption = 'Metodo Autenticacion'
        FocusControl = cxDBTextEdit23
      end
      object SpdBtnVerPass: TSpeedButton
        Left = 151
        Top = 186
        Width = 23
        Height = 21
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        OnClick = SpdBtnVerPassClick
      end
      object SpdBtnPruebaEnv: TSpeedButton
        Left = 234
        Top = 280
        Width = 97
        Height = 28
        Caption = 'Prueba Envio'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550B30555000
          0000557F57F557777777550B305508888880557F57F575555557550B30508888
          8805557F57F7FFFFFF75550B300000000055557F5777777777F5550300000000
          0055557F777F555F77F555007800000070555F77557F5F7757F5007888000077
          70557755557F775557F508888800777770557F555577555557F5088808077777
          70557FF5757F555557F5098988077777705577F7557F555557F5999888077777
          705577755575F55557550988888077770555775555575FFF7555088888888000
          55557F55555577775555088888880755555575F5555F77555555508888075555
          5555575FFF775555555555000755555555555577775555555555}
        NumGlyphs = 2
        OnClick = SpdBtnPruebaEnvClick
      end
      object cxDBTxtEdtCorreo: TcxDBTextEdit
        Left = 25
        Top = 39
        DataBinding.DataField = 'CECorreoSalida'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 304
      end
      object cxDBTxtEdtHost: TcxDBTextEdit
        Left = 25
        Top = 84
        DataBinding.DataField = 'CEHostSalida'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 155
      end
      object cxDBTxtEdtPuerto: TcxDBTextEdit
        Left = 208
        Top = 84
        DataBinding.DataField = 'CEPuetoSalida'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit21: TcxDBTextEdit
        Left = 25
        Top = 138
        DataBinding.DataField = 'CEUsuarioSalida'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 304
      end
      object cxDBTxtEdtTipoSeg: TcxDBTextEdit
        Left = 43
        Top = 239
        DataBinding.DataField = 'CETipoSeguridadSal'
        DataBinding.DataSource = DataSource
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 4
        Width = 131
      end
      object cxDBTextEdit23: TcxDBTextEdit
        Left = 25
        Top = 287
        DataBinding.DataField = 'CETipoAutenticaSal'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object DBTxtEdtPass: TDBEdit
        Left = 25
        Top = 186
        Width = 121
        Height = 21
        DataField = 'CEPasswordSalida'
        DataSource = DataSource
        PasswordChar = '*'
        TabOrder = 6
      end
      object PrgrsBrEnvioP: TProgressBar
        Left = 234
        Top = 257
        Width = 94
        Height = 17
        Max = 20
        MarqueeInterval = 5
        TabOrder = 7
        Visible = False
      end
      object CBXTipoSEg: TComboBox
        Left = 25
        Top = 239
        Width = 123
        Height = 21
        TabOrder = 8
        Text = 'sslvTLSV1'
        OnClick = CBXTipoSEgClick
        Items.Strings = (
          'sslvSSLv2'
          'sslvsssV23'
          'sslSSLV3'
          'sslvTLSV1'
          'sslvTLSV1_1')
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 395
    Width = 388
    ExplicitTop = 395
    ExplicitWidth = 388
    inherited btnCancel: TButton
      Left = 306
      ExplicitLeft = 306
    end
    inherited btnOk: TButton
      Left = 225
      ExplicitLeft = 225
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmConfiguracion.adodsMaster
    Left = 224
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 256
    Top = 8
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 590120
  end
end
