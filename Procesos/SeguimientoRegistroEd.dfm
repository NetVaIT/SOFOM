object FrmSeguimientoRegistro: TFrmSeguimientoRegistro
  Left = 0
  Top = 0
  Caption = 'Registro Seguimiento '
  ClientHeight = 699
  ClientWidth = 1277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 341
    Width = 1277
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -343
    ExplicitTop = 285
    ExplicitWidth = 1068
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1277
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object PnlNav: TPanel
    Left = 0
    Top = 33
    Width = 1277
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 9
      Top = 10
      Width = 42
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpdBtnLimpiar: TSpeedButton
      Left = 399
      Top = 10
      Width = 23
      Height = 22
      Hint = 'Limpiar filtro'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtnLimpiarClick
    end
    object SpdBtnConsultarx: TSpeedButton
      Left = 379
      Top = 38
      Width = 31
      Height = 31
      Glyph.Data = {
        46110000424D46110000000000003600000028000000380000001A0000000100
        1800000000001011000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF7E2D1EAD7C6DDCABADBC8B9E5D2C2F5E1CFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8D5C4B6A79A90847A8A7F75A5978BD4
        C2B3F4E0CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1A69D84827F796F
        71947572615952968A7FD3C1B2F4E0CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080807B7D80FFFFFF808080808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8B8A898000808040009F8E999977765D554F95897ED3C1B2F4E0CEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF747576FFFFFF808080
        FFFFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8080FF00808000808040009F8E999977765D554F95897E
        D3C1B2F4E0CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
        8080C0C0C0FFFFFF808080FFFFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF8080FF00808000808040009F
        8E999977765D554F95897ED3C1B2F4E0CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF808080808080C0C0C0FFFFFF808080FFFFFFC0C0C0808080FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF80
        80FF00808000808040009F8E999977765D554F968A7FD4C2B3F5E1CFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080C0C0C0FFFFFF8080
        80FFFFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00FFFF8080FF00808000808040009F8E99997776645C55AB9C
        90E8D5C4F5E1CFEBD8C7E5D2C2E3D0C0E5D2C2EBD8C7F5E1CFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
        808080C0C0C0FFFFFF808080FFFFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF8080FF0080800080804000
        9F8E999777758B8076C0B0A2C5B5A6AFA093A193889E9185A19388AE9F93C6B6
        A7E2CFBEF5E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF808080808080C0C0C0FFFFFF808080C0C0C0C0C0C0808080
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        8080FF00808000808040006E6B6B655D557A6D658369647E615E846864917571
        806865655B547369619C8F84CFBEAFF1DDCCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080C0C0C0808080FF
        FFFFFFFFFF808080808080808080808080808080808080808080808080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF00FFFF8080FF008077899892908FA89190AF837BDDBA9AEC
        D6ADFFF9C6F5EBC4E9D5BACCA59B8264625A534C8A7F75CAB9ABF2DECDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
        80808080C0C0C080808092908F808080808080FFFFFFFFFFFFFFFFFFFFFFFFC0
        C0C0C0C0C0808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CACCA2A1A0A18181DEB0
        93FFE3B2FFF7C9FFFDCEFFFFD6FFFFD8FFFFD9FFFFE0E7D7C49C75725C524C93
        877CDAC7B8F8E3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF808080FFFFFF808080808080808080FFFFFFFFFFFFC0C0
        C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0808080808080FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E0CE
        BEA5A4E2B093FFE5B6FFF9C9FFF7C4800000800000800000800000800000FFFF
        FFE9DCCE866260696059B6A79AEEDAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFF
        FFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFCC0C0C0FFFFFF808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE7D0C1D2A497FFDFB0FFF8C6FFEAB7FFFAC7800000FFFFE1FFFFED
        FFFFF5800000FFFFFFFFFFEBC4A49566544F968A7FE1CEBEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
        8080FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
        FFFFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD5B4ABEAC0A0FFF8CAFFE4B2FFE9B6FFFCC980
        0000FFFFE3FFFFEFFFFFFAFFFFFAFFFFF4FFFFDAF3EDC87B5A5880766DD6C4B5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFA6A1FBE1B6FFF7C5FFDD
        AAFFE9B6FFFAC7800000FFFFE0FFFFEAFFFFF1FFFFF0FFFFE8FFFFDAFFFFD397
        736C756B63D0BEB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFC0C0C0FFFFFFFFFFFFC0C0
        C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFA4A0
        FFEABAFFF3C0FFD6A3FFE5B2FFF3C0800000FFFFD9FFFFE1FFFFE6FFFFE5FFFF
        E0FFFFD5FFFDCEB38A7F786E65D1BFB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFC0C0C0
        FFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFF8080
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD1A5A1FFECBEFFF4C1FFDCACFFEFC1FFF4C1800000FFFFD0FFFFD6
        FFFFD8800000FFFFD5FFFFCFFFF5C7A87E758A7F75DBC8B9FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF
        FFFFFFFFFFC0C0C0FFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF
        FFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDDBAB1F1D5B0FFFACDFFF5D5FFDEABFFE0AD80
        0000800000800000800000800000FFFBC8FFFCCDFFE9B68D6563AA9B8FE9D6C5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF808080FFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D5C7DBB5A2FFF7D3FFFC
        EFFFFBEEFFE9C0FFDEABFFF4C2FFECB9FFEDBAFFEDBAFFF1BEFFF3C7DBB4948C
        726CCEBDAEF5E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CEA39EF3E0C0FFFFFFFFFFFFFFF3DAFFE5B6FFE7B8FFDDAAFFDFACFFE9B6FFFA
        CCFAD3A4A97C75B8A599EBD8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFF
        FFFFFFC0C0C0C0C0C0FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFC0C0C0808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF6E0CFCCA196F6EFE2FFFFFEFFFAE5FFF9D5FFE6B3FFE8B5
        FFF4C2FFF1C2FAD0A2B8877EB5A095E8D5C4F9E4D2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
        808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D9CAC39892DBBB9FF9E9BFFF
        F3C4FFF1C1FFEFC0FFE5B7E5BA9ABC8D85C5AEA2EBD8C7F9E4D2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDBBBB0B68B87B4897DC3978BD8AB9FCAA099CBAAA2E4CFBFF4E0CEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080808080808080
        80808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      OnClick = SpdBtnConsultarxClick
    end
    object SpdBtncontactoHoy: TSpeedButton
      Left = 464
      Top = 52
      Width = 121
      Height = 22
      Hint = 'Contactar Hoy'
      Caption = 'Proximo contacto'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
        F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
        F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
        F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
        F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
        F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpdBtncontactoHoyClick
    end
    object SpdBtnContacto: TSpeedButton
      Left = 591
      Top = 52
      Width = 89
      Height = 22
      Hint = 'Datos Contacto'
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Contactos'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003B3000000000
        003B37F77777777777F73BB09111111110BB3777F3F3F3F3F777311098080808
        10B33777F7373737377313309999999910337F373F3F3F3F3733133309808089
        03337F3373737373733313333099999033337FFFF7FFFFF7FFFFB011B0000000
        BBBB7777777777777777B01110BBBBB0BBBB77F37777777777773011108BB333
        333337F337377F3FFFF33099111BB3010033373F33777F77773F331999100101
        11033373FFF77773337F33300099991999033337773FFFF33373333BB7100199
        113333377377773FF7F333BB333BB7011B33337733377F7777FF3BB3333BB333
        3BB3377333377F33377FBB33333BB33333BB7733333773333377}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Spacing = 2
      Visible = False
    end
    object DBLkupCmbBxClientes: TDBLookupComboBox
      Left = 54
      Top = 10
      Width = 339
      Height = 21
      KeyField = 'IdPersona'
      ListField = 'RazonSocial'
      ListSource = DSClientes
      TabOrder = 0
    end
    object EdtTextoCliente: TEdit
      Left = 54
      Top = 37
      Width = 301
      Height = 21
      Hint = 'Coloque parte del nombre'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object PnlGrids: TPanel
    Left = 0
    Top = 113
    Width = 1277
    Height = 228
    Align = alClient
    TabOrder = 2
    object PnlSoloIncidencias: TPanel
      Left = 1
      Top = 126
      Width = 1275
      Height = 101
      Align = alBottom
      TabOrder = 0
      Visible = False
      object DBGrid1: TDBGrid
        Left = 1
        Top = 30
        Width = 1273
        Height = 70
        Align = alClient
        Color = clInfoBk
        DataSource = DSIncidencias
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDIncidenciaCobranza'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDUsuario'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDPersonaCliente'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IdIncidenciaEstado'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IdAnexo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FechaReg'
            Title.Caption = 'Fecha Registro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FoliosAsoc'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Proxcontacto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegContacto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Acuerdo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Condiciones'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PromesaPago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstadoIncidencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UsuarioReg'
            Visible = True
          end>
      end
      object PnlFechas: TPanel
        Left = 1
        Top = 1
        Width = 1273
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label26: TLabel
          Left = 13
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Desde:'
        end
        object Label27: TLabel
          Left = 188
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Hasta'
        end
        object SpdBtnRegreso: TSpeedButton
          Left = 494
          Top = 2
          Width = 91
          Height = 26
          Caption = 'Filtro Cliente'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpdBtnRegresoClick
        end
        object SpdBtnFiltroDias: TSpeedButton
          Left = 365
          Top = 2
          Width = 29
          Height = 26
          Hint = 'Buscar por Fecha contacto'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
            33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
            B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
            BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
            B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
            3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
            333333333337F33333333333333B333333333333333733333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpdBtnFiltroDiasClick
        end
        object DtTmDesde: TDateEdit
          Left = 49
          Top = 2
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object DtTmHasta: TDateEdit
          Left = 224
          Top = 2
          Width = 121
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    object GridDatos: TDBGrid
      Left = 1
      Top = 1
      Width = 528
      Height = 125
      Align = alLeft
      Color = 14084566
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IdPersona'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'RazonSocial'
          Width = 257
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'interes'
          Title.Caption = 'Interes'
          Width = 100
          Visible = True
        end>
    end
    object DBGrdFactPend: TDBGrid
      Left = 529
      Top = 1
      Width = 747
      Height = 125
      Align = alClient
      Color = clInfoBk
      DataSource = DSCXCPendientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrdFactPendDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IdPersona'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IdCuentaXCobrar'
          Title.Caption = 'No.CuentaXCobrar'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fecha'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IdCFDINormal'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Serie'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Folio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SaldoDocumento'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IdAnexo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Descripcion'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CapitalCobrado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SaldoInsoluto'
          Visible = True
        end>
    end
  end
  object Pnlinferior: TPanel
    Left = 0
    Top = 344
    Width = 1277
    Height = 355
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    object DBCtrlGrdDatos: TDBCtrlGrid
      Left = 524
      Top = 35
      Width = 752
      Height = 319
      Align = alClient
      Color = 16776176
      DataSource = DSIncidencias
      PanelHeight = 79
      PanelWidth = 735
      ParentColor = False
      TabOrder = 0
      RowCount = 4
      OnPaintPanel = DBCtrlGrdDatosPaintPanel
      object Label9: TLabel
        Left = 10
        Top = 3
        Width = 91
        Height = 13
        Caption = 'Fecha Registro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 112
        Top = 19
        Width = 353
        Height = 17
        DataField = 'FoliosAsoc'
        DataSource = DSIncidencias
      end
      object Label10: TLabel
        Left = 11
        Top = 19
        Width = 90
        Height = 13
        Caption = 'CXC asociados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 241
        Top = 3
        Width = 44
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 101
        Top = 3
        Width = 140
        Height = 15
        DataField = 'FechaReg'
        DataSource = DSIncidencias
      end
      object Label12: TLabel
        Left = 257
        Top = 35
        Width = 99
        Height = 13
        Caption = 'Se contact'#243' con:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 368
        Top = 3
        Width = 81
        Height = 13
        Caption = 'Pr'#243'x.Contacto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 358
        Top = 35
        Width = 112
        Height = 15
        DataField = 'RegContacto'
        DataSource = DSIncidencias
      end
      object DBText11: TDBText
        Left = 451
        Top = 3
        Width = 89
        Height = 17
        DataField = 'Proxcontacto'
        DataSource = DSIncidencias
      end
      object Label14: TLabel
        Left = 11
        Top = 35
        Width = 52
        Height = 13
        Caption = 'Registr'#243':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 65
        Top = 35
        Width = 192
        Height = 15
        DataField = 'UsuarioReg'
        DataSource = DSIncidencias
      end
      object DBTxtAcuerdo: TDBText
        Left = 65
        Top = 52
        Width = 344
        Height = 36
        DataField = 'Acuerdo'
        DataSource = DSIncidencias
        WordWrap = True
      end
      object Label15: TLabel
        Left = 11
        Top = 51
        Width = 52
        Height = 13
        Caption = 'Acuerdo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBTxtEstado: TDBText
        Left = 284
        Top = 3
        Width = 78
        Height = 15
        Alignment = taCenter
        Color = clYellow
        DataField = 'EstadoIncidencia'
        DataSource = DSIncidencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object PNLRegInci: TPanel
      Left = 1
      Top = 35
      Width = 523
      Height = 319
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label16: TLabel
        Left = 26
        Top = 11
        Width = 40
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 24
        Top = 36
        Width = 52
        Height = 13
        Caption = 'Registra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 80
        Top = 36
        Width = 57
        Height = 13
        AutoSize = True
        Color = 14585456
        DataField = 'UsuarioReg'
        DataSource = DSIncidencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 339
        Top = 113
        Width = 90
        Height = 13
        Caption = 'CXC asociadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 377
        Top = 240
        Width = 64
        Height = 75
        DataField = 'FoliosAsoc'
        Visible = False
        WordWrap = True
      end
      object Label19: TLabel
        Left = 261
        Top = 61
        Width = 85
        Height = 13
        Caption = 'Pr'#243'x.Contacto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 67
        Top = 12
        Width = 104
        Height = 15
        Color = 14585456
        DataField = 'FechaReg'
        DataSource = DSIncidencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label20: TLabel
        Left = 25
        Top = 113
        Width = 52
        Height = 13
        Caption = 'Acuerdo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 24
        Top = 61
        Width = 99
        Height = 13
        Caption = 'Se contact'#243' con:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 256
        Top = 11
        Width = 107
        Height = 13
        Caption = 'Estado Incidencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 27
        Top = 233
        Width = 74
        Height = 13
        Caption = 'Condiciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 33
        Top = 304
        Width = 88
        Height = 17
        DataField = 'Condiciones'
        Visible = False
      end
      object c5: TDBDateEdit
        Left = 258
        Top = 78
        Width = 104
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'Proxcontacto'
        DataSource = DSIncidencias
        DialogTitle = 'Seleccione una fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        WeekendColor = clBlue
        YearDigits = dyFour
      end
      object DBMemo1: TDBMemo
        Left = 26
        Top = 128
        Width = 287
        Height = 102
        DataField = 'Acuerdo'
        DataSource = DSIncidencias
        TabOrder = 2
      end
      object DBRdGrpEstado: TDBRadioGroup
        Left = 367
        Top = 1
        Width = 90
        Height = 56
        DataField = 'IdIncidenciaEstado'
        DataSource = DSIncidencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Abierta'
          'Cerrada')
        ParentFont = False
        TabOrder = 3
        Values.Strings = (
          '1'
          '2')
      end
      object DBEdit1: TDBEdit
        Left = 25
        Top = 79
        Width = 222
        Height = 21
        DataField = 'RegContacto'
        DataSource = DSIncidencias
        TabOrder = 4
      end
      object LstBxFolios: TListBox
        Left = 336
        Top = 128
        Width = 89
        Height = 102
        ItemHeight = 13
        PopupMenu = PpUpMnFolios
        TabOrder = 5
      end
      object LSTBxIDDocs: TListBox
        Left = 243
        Top = 128
        Width = 87
        Height = 102
        ItemHeight = 13
        TabOrder = 1
        Visible = False
      end
      object ChckLstBxCondiciones: TCheckListBox
        Left = 29
        Top = 247
        Width = 340
        Height = 49
        BevelInner = bvLowered
        BevelOuter = bvRaised
        Color = clNavy
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Cobro directo por Socio'
          'Condicionada'
          'En Aclaraci'#243'n'
          'Rechazada por el Cliente'
          'Falta Autorizaci'#243'n'
          'Cobro Dif'#237'cil')
        ParentFont = False
        TabOrder = 6
        OnClick = ChckLstBxCondicionesClick
      end
      object DBChckBxPtomPago: TDBCheckBox
        Left = 368
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Promesa Pago'
        DataField = 'PromesaPago'
        DataSource = DSIncidencias
        TabOrder = 7
        ValueChecked = 'Si'
        ValueUnchecked = 'No'
      end
    end
    object PnlNavIncid: TPanel
      Left = 1
      Top = 1
      Width = 1275
      Height = 34
      Align = alTop
      TabOrder = 2
      object SpdBtnMostrartodo: TSpeedButton
        Left = 523
        Top = 5
        Width = 23
        Height = 22
        Hint = 'MostrarTodo'
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
          00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
          00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
          F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
          F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
          FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
          0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
          00337777FFFF77FF7733EEEE0000000003337777777777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpdBtnMostrartodoClick
      end
      object DBNavIncidencia: TDBNavigator
        Left = 24
        Top = 3
        Width = 228
        Height = 25
        DataSource = DSIncidencias
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Hints.Strings = (
          'First record'
          'Prior record'
          'Next record'
          'Last record'
          'Agregar Incidencia'
          'Eliminar Incidencia'
          'Modificar Incidencia'
          'Guardar Cambios'
          'Cancelar Cambios '
          'Actualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.adodsMaster
    Left = 435
    Top = 21
  end
  object DSIncidencias: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtStIncidencias
    OnStateChange = DSIncidenciasStateChange
    OnDataChange = DSIncidenciasDataChange
    Left = 459
    Top = 357
  end
  object DSCXCPendientes: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtSTCXCPend
    OnDataChange = DSCXCPendientesDataChange
    Left = 932
    Top = 13
  end
  object DSClientes: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtStPersonas
    Left = 531
    Top = 21
  end
  object DSConIncidencias: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtStIncidenciaXFecha
    Left = 731
    Top = 269
  end
  object PpUpMnFolios: TPopupMenu
    Left = 456
    Top = 520
    object EliminarFolio1: TMenuItem
      Bitmap.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      Caption = 'Eliminar Folio'
      OnClick = EliminarFolio1Click
    end
  end
  object PpUpMnCopia: TPopupMenu
    Left = 584
    Top = 480
    object CrearCopia1: TMenuItem
      Caption = 'Crear &Copia'
      OnClick = CrearCopia1Click
    end
    object AgregaIncidencia1: TMenuItem
      Caption = '&Agrega Incidencia'
      OnClick = AgregaIncidencia1Click
    end
  end
end
