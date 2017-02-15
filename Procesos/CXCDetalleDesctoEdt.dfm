object FrmAplicaDescuentosCXC: TFrmAplicaDescuentosCXC
  Left = 0
  Top = 0
  Caption = 'Confirmaci'#243'n'
  ClientHeight = 292
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 666
    Height = 145
    Align = alTop
    TabOrder = 0
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 143
    ClientRectLeft = 2
    ClientRectRight = 664
    ClientRectTop = 28
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitLeft = 1
      ExplicitTop = 30
      object ImgBien: TImage
        Left = 25
        Top = 24
        Width = 66
        Height = 65
        Center = True
        Picture.Data = {
          0A544A504547496D616765D7020000FFD8FFE000104A46494600010100000100
          010000FFDB008400090607080106090807080A0A090B0D160F0D0C0C0D1B1415
          1016201D2222201D1F1F2428342C242631271F1F2D3D2D3135373A3A3A232B3F
          443F384334393A37010A0A0A0D0C0D1A0F0F1A37251F25373737373737372C2B
          3737373737373737373737373737373737373737343737373737372C37373737
          3737372C3437373737FFC00011080020002003012200021101031101FFC40019
          0000030003000000000000000000000000030607010405FFC400331000010301
          0505060505010000000000000201030405000611122107082231413251526171
          81131491A1B1152343C1E109FFC4001701000301000000000000000000000000
          0002030504FFC4001E1100020104030100000000000000000000010302000431
          4111132112FFDA000C03010002110311003F00A65E3AF3F75257E9949CBF3782
          13CF12622C0AF2D3A92D971CA4B1B402CF51272738BCCA496745F65D13DAC3A2
          C90DA230F4D37055E926AFB8B8EA885C49F654FA58932695CE2CA60E36BDC60A
          2BF7B4E637EBD38A98C6FD7A71581843B09FDDA6CA729E69CBE19E00BE4A3D95
          FA59A6ECDE02DBB9B902A002D54591CCA83D9743C63FDA74B6296DB7BB853167
          5470475C4E102E688BC87D57AFF9653AB4F1D94D4E9F5368841D6A48A98A2FF1
          9920127A717E2CC892B23939D536122A23939D52ECF6A56E6955506895B76239
          F0D30EA83D85F3451CB6A2512AB4BFFA391997E6B6D84B86486604B8222F7A2F
          51D31C3CB5E9635EDBAE1BDC82488AA0DCE01CBC7D8747C25872F25E969EBD4A
          7777F7086A312546C3A9324E07B1822A2D912836DD84C47313AACF25B6DD84C4
          7313AA3DEDBCEFEF25532F9535088CE22CE9AAF797BFE30B722047776FB3E1C3
          C48DD992411715D72092112FA6896DB6A096D99C41A6C29534D7965649B04F52
          2C304B502E65D25DD40CE7D44C1DA8BA3978138590F08D82DD0D637B19416F6E
          D637B195FFD9}
      end
      object LblMensaje: TLabel
        Left = 97
        Top = 40
        Width = 369
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Intereses moratorios de :   $2000  al : 01/02/2017. Facturar?'
        WordWrap = True
      end
      object BtnGeneraDescto: TButton
        Left = 133
        Top = 79
        Width = 132
        Height = 25
        Caption = 'Generar Descuento'
        TabOrder = 0
        OnClick = BtnGeneraDesctoClick
      end
    end
  end
  object PnlBotones: TPanel
    Left = 0
    Top = 235
    Width = 666
    Height = 57
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 345
    object BtnSi: TButton
      Left = 187
      Top = 21
      Width = 80
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 6
      TabOrder = 0
    end
    object BtnCancelar: TButton
      Left = 365
      Top = 21
      Width = 80
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PnlDescto: TPanel
    Left = 0
    Top = 145
    Width = 666
    Height = 90
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    Visible = False
    ExplicitHeight = 96
    object Label1: TLabel
      Left = 25
      Top = 6
      Width = 99
      Height = 13
      Caption = 'Monto de Descuento'
    end
    object Label2: TLabel
      Left = 142
      Top = 7
      Width = 71
      Height = 13
      Caption = 'Observaciones'
      FocusControl = cxDBTextEdit2
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 25
      DataBinding.DataField = 'Identificador'
      TabOrder = 0
      Width = 113
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 143
      Top = 26
      AutoSize = False
      DataBinding.DataField = 'Descripcion'
      DataBinding.DataSource = DSAplicaDescuento
      TabOrder = 1
      Height = 49
      Width = 370
    end
    object BtnNo: TButton
      Left = 533
      Top = 14
      Width = 80
      Height = 25
      Caption = 'Aplicar Descto'
      ModalResult = 7
      TabOrder = 2
      OnClick = BtnNoClick
    end
    object BtnCancelaDescto: TButton
      Left = 533
      Top = 45
      Width = 80
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BtnCancelaDesctoClick
    end
  end
  object DSAplicaDescuento: TDataSource
    Left = 616
    Top = 153
  end
end
