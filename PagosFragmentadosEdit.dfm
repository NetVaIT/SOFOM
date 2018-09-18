object FrmEdtPagosFragmentados: TFrmEdtPagosFragmentados
  Left = 0
  Top = 0
  Caption = 'Edici'#243'n de Pagos fragmentados'
  ClientHeight = 556
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 603
    Height = 515
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 513
    ClientRectLeft = 2
    ClientRectRight = 601
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      object Label7: TLabel
        Left = 27
        Top = 301
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object cxDBMemo1: TcxDBMemo
        Left = 27
        Top = 320
        DataBinding.DataField = 'Observaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Height = 153
        Width = 540
      end
      object PnlDatosBase: TPanel
        Left = 0
        Top = 0
        Width = 599
        Height = 300
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 27
          Top = 122
          Width = 29
          Height = 13
          Caption = 'Fecha'
        end
        object Label2: TLabel
          Left = 340
          Top = 122
          Width = 22
          Height = 13
          Caption = 'Folio'
        end
        object Label3: TLabel
          Left = 208
          Top = 122
          Width = 24
          Height = 13
          Caption = 'Serie'
          FocusControl = cxDBTextEdit1
        end
        object Label5: TLabel
          Left = 27
          Top = 250
          Width = 38
          Height = 13
          Caption = 'Importe'
          FocusControl = cxDBTxtEdtImporte
        end
        object Label6: TLabel
          Left = 282
          Top = 250
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object Label8: TLabel
          Left = 27
          Top = 207
          Width = 29
          Height = 13
          Caption = 'Banco'
        end
        object Label9: TLabel
          Left = 27
          Top = 25
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object Label10: TLabel
          Left = 27
          Top = 164
          Width = 72
          Height = 13
          Caption = 'Forma de pago'
          FocusControl = DBLkpCmbBxMetodoPago
        end
        object Label11: TLabel
          Left = 285
          Top = 207
          Width = 77
          Height = 13
          Caption = 'Cuenta de pago'
          FocusControl = cxDBTextEdit4
          Visible = False
        end
        object Label12: TLabel
          Left = 27
          Top = 68
          Width = 31
          Height = 13
          Caption = 'Anexo'
          FocusControl = DBLkpCmbBxAnexos
        end
        object Label13: TLabel
          Left = 154
          Top = 250
          Width = 71
          Height = 13
          Caption = 'Moneda origen'
        end
        object cxDBLblAnexo: TcxDBLabel
          Left = 27
          Top = 81
          DataBinding.DataField = 'Anexo'
          ParentFont = False
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 39
          Width = 540
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 208
          Top = 138
          DataBinding.DataField = 'SeriePago'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBTxtEdtImporte: TcxDBTextEdit
          Left = 27
          Top = 266
          DataBinding.DataField = 'Importe'
          DataBinding.DataSource = DataSource
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 338
          Top = 138
          DataBinding.DataField = 'FolioPago'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 143
        end
        object cxDBLabel1: TcxDBLabel
          Left = 281
          Top = 269
          DataBinding.DataField = 'Saldo'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 21
          Width = 121
        end
        object DBLkpCmbBxMetodoPago: TDBLookupComboBox
          Left = 27
          Top = 180
          Width = 250
          Height = 21
          DataField = 'MetodoPago'
          DataSource = DataSource
          ReadOnly = True
          TabOrder = 5
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 283
          Top = 223
          DataBinding.DataField = 'CuentaPago'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Visible = False
          Width = 284
        end
        object cxDBRdGrpOrigenPago: TcxDBRadioGroup
          Left = 408
          Top = 250
          Caption = 'Or'#237'gen de pago'
          DataBinding.DataField = 'OrigenPago'
          DataBinding.DataSource = DataSource
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Cliente'
              Value = '0'
            end
            item
              Caption = 'Factoraje'
              Value = '1'
            end>
          TabOrder = 10
          Height = 37
          Width = 159
        end
        object DBLkpCmbBxAnexos: TDBLookupComboBox
          Left = 27
          Top = 83
          Width = 540
          Height = 21
          DataField = 'IdAnexo'
          DataSource = DataSource
          KeyField = 'IdAnexo'
          ListField = 'identificadorCompleto'
          ListSource = DSAnexos
          TabOrder = 0
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 487
          Top = 138
          Caption = 'Es dep'#243'sito'
          DataBinding.DataField = 'EsDeposito'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 80
        end
        object cxBtnUsaNotaCredito: TcxButton
          Left = 535
          Top = 176
          Width = 32
          Height = 25
          Hint = 'Usar Nota Cr'#233'dito'
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = cxImageList
          TabOrder = 6
          Visible = False
          OnClick = cxBtnUsaNotaCreditoClick
        end
        object cxDBLabel2: TcxDBLabel
          Left = 27
          Top = 41
          AutoSize = True
          DataBinding.DataField = 'Cliente'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxDBLabel3: TcxDBLabel
          Left = 27
          Top = 139
          DataBinding.DataField = 'FechaPago'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 21
          Width = 166
        end
        object cxDBLabel4: TcxDBLabel
          Left = 27
          Top = 223
          DataBinding.DataField = 'Banco'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 21
          Width = 249
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 154
          Top = 266
          Width = 121
          Height = 21
          DataField = 'MonedaOrigen'
          DataSource = DataSource
          ReadOnly = True
          TabOrder = 14
        end
      end
    end
    object tsCFDI: TcxTabSheet
      Caption = 'Complemento de pago'
      ImageIndex = 1
      TabVisible = False
      object gbBancarizado: TcxGroupBox
        Left = 3
        Top = 3
        Caption = 'Pago bancarizado'
        TabOrder = 0
        Height = 158
        Width = 585
        object Label15: TLabel
          Left = 17
          Top = 64
          Width = 88
          Height = 13
          Caption = 'Cuenta ordenante'
          FocusControl = DBLookupComboBox4
        end
        object Label16: TLabel
          Left = 17
          Top = 104
          Width = 93
          Height = 13
          Caption = 'Cuenta beneficiario'
          FocusControl = DBLookupComboBox5
        end
        object btnAddCuentaOrdenante: TSpeedButton
          Left = 553
          Top = 79
          Width = 23
          Height = 22
          Hint = 'Agrega una cuenta bancaria'
          Caption = '...'
          Enabled = False
        end
        object Label14: TLabel
          Left = 17
          Top = 20
          Width = 72
          Height = 13
          Caption = 'Forma de pago'
          FocusControl = DBLookupComboBox3
        end
        object Label4: TLabel
          Left = 322
          Top = 20
          Width = 52
          Height = 13
          Caption = 'Referencia'
          FocusControl = cxDBTextEdit2
        end
        object DBLookupComboBox4: TcxDBLookupComboBox
          Left = 17
          Top = 80
          DataBinding.DataField = 'CuentaOrdenante'
          Properties.ClearKey = 46
          Properties.ListColumns = <
            item
              Width = 300
              FieldName = 'Cuenta'
            end
            item
              Caption = 'Clabe interbancaria'
              FieldName = 'ClabeInterbancaria'
            end>
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 530
        end
        object DBLookupComboBox5: TcxDBLookupComboBox
          Left = 17
          Top = 123
          DataBinding.DataField = 'CuentaBeneficiario'
          Properties.ClearKey = 46
          Properties.ListColumns = <
            item
              Width = 300
              FieldName = 'Cuenta'
            end
            item
              Caption = 'Clabe interbancaria'
              FieldName = 'ClabeInterbancaria'
            end>
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 530
        end
        object DBLookupComboBox3: TcxDBLookupComboBox
          Left = 16
          Top = 36
          DataBinding.DataField = 'FormaPago'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 46
          Properties.ListColumns = <
            item
              Width = 150
              FieldName = 'Descripcion'
            end
            item
              FieldName = 'Bancarizado'
            end>
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 300
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 322
          Top = 36
          DataBinding.DataField = 'Referencia'
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 224
        end
      end
      object gbCadena: TcxGroupBox
        Left = 3
        Top = 167
        Caption = 'Informaci'#243'n del tipo de cadena'
        TabOrder = 1
        Height = 310
        Width = 585
        object Label17: TLabel
          Left = 16
          Top = 16
          Width = 73
          Height = 13
          Caption = 'Tipo de cadena'
          FocusControl = DBLookupComboBox6
        end
        object Label18: TLabel
          Left = 16
          Top = 56
          Width = 52
          Height = 13
          Caption = 'Certificado'
        end
        object Label19: TLabel
          Left = 16
          Top = 136
          Width = 37
          Height = 13
          Caption = 'Cadena'
        end
        object Label20: TLabel
          Left = 16
          Top = 217
          Width = 22
          Height = 13
          Caption = 'Sello'
        end
        object DBLookupComboBox6: TcxDBLookupComboBox
          Left = 16
          Top = 32
          DataBinding.DataField = 'TipoCadena'
          Properties.ClearKey = 46
          Properties.ListColumns = <>
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 209
        end
        object cxDBMemo2: TcxDBMemo
          Left = 16
          Top = 71
          DataBinding.DataField = 'Certificado'
          Properties.ReadOnly = True
          TabOrder = 1
          Height = 59
          Width = 530
        end
        object cxDBMemo3: TcxDBMemo
          Left = 16
          Top = 152
          DataBinding.DataField = 'Cadena'
          Properties.ReadOnly = True
          TabOrder = 2
          Height = 59
          Width = 530
        end
        object cxDBMemo4: TcxDBMemo
          Left = 16
          Top = 236
          DataBinding.DataField = 'Sello'
          Properties.ReadOnly = True
          TabOrder = 3
          Height = 59
          Width = 530
        end
      end
    end
  end
  object pmlMain: TPanel
    Left = 0
    Top = 515
    Width = 603
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      603
      41)
    object btnCancel: TButton
      Left = 521
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOk: TButton
      Left = 440
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Aceptar'
      Default = True
      TabOrder = 0
      OnClick = btnOkClick
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DMPagosReales.ADOdsPagosFragmentos
    Left = 256
  end
  object cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65864
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000FBFF0000F1FF0000E0FF0000C47F
          0000CE3F0000FF1F0000FF8F0000FFC70000FFE70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000F3E70000F1C70000F88F0000FC1F
          0000FE3F0000FC1F0000F88F0000F1C70000F3E70000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFAFA
          FAFFECECECFFE5E5E5FFE4E4E4FFE3E3E3FFE2E2E2FFE1E1E1FFE0E0E0FFDEDE
          DEFFDDDDDDFFDCDCDCFFDBDBDBFFE2E2E2FFF7F7F7FFFFFFFFFFFFFFFFFFEEEE
          EEFFBC7E4CFFBB7D4BFFBA7B48FFB87A48FFB87846FFB77745FFB67643FFB575
          42FFB47340FFB3723FFFB3713EFFB1703DFFE3E3E3FFFFFFFFFFFFFFFFFFEBEB
          EBFFBE8350FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47340FFDCDCDCFFFFFFFFFFFFFFFFFFEDED
          EDFFC18755FFFCF1E6FFFBF1E5FFFBEFE4FFFBEFE2FFBE9270FFBE9270FFFAED
          E0FFBE9270FFF9EBDDFFBE9270FFB67643FFDEDEDEFFFFFFFFFFFFFFFFFFEFEF
          EFFFC48A59FFFEF4EBFFFDF4EBFFFDF3E9FFBE9270FFFDF2E7FFFCF1E6FFFCF0
          E5FFBE9270FFBE9270FFFBEEE1FFB87A47FFE0E0E0FFFFFFFFFFFFFFFFFFF0F0
          F0FFC78F5DFFFFF9F2FFFFF7F0FFFFF7EFFFBE9270FFFEF6ECFFFEF5ECFFFEF5
          EAFFBE9270FFFDF3E8FFBE9270FFBB7D4AFFE2E2E2FFFFFFFFFFFFFFFFFFF2F2
          F2FFCA9361FFFFFAF4FFFFF9F3FFFFF9F2FFFFF9F1FFBE9270FFBE9270FFFFF7
          EFFFBE9270FFBE9270FFFBEFE3FFBE814EFFE4E4E4FFFFFFFFFFFFFFFFFFF4F4
          F4FFCD9666FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18553FFE5E5E5FFFFFFFFFFFFFFFFFFF5F5
          F5FFCF9B6BFFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF4FFFFFAF5FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38957FFE7E7E7FFFFFFFFFFFFFFFFFFF7F7
          F7FFD29F6FFFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFEF7F1FFFCF3
          EBFFFAEFE3FFF7E8DBFFF5E2D1FFC78D5BFFE9E9E9FFFFFFFFFFFFFFFFFFF8F8
          F8FFD5A374FFFFFDFAFFFFFCF9FFFFFCF9FFFFFCF8FFFEF9F4FFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99160FFEBEBEBFFFFFFFFFFFFFFFFFFF9F9
          F9FFD9A779FFFFFDFBFFFFFDFBFFFFFDFAFFFEF9F5FFFCF5EEFFFAF0E7FFF7EB
          DFFFD09A6AFFCF9868FFCE9767FFCC9564FFF2F2F2FFFFFFFFFFFFFFFFFFFAFA
          FAFFDBAB7EFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6EFFFFFCF9FFDAD7D5FFD8D8D8FFFBFBFBFFFFFFFFFFFFFFFFFFFCFC
          FCFFDDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A273FFDBD7D6FFDCDCDCFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
          FDFFE0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7EFFDAAA7CFFD8A8
          7AFFD8A678FFDEDEDEFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFFFCFCFCFFFCFCFCFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8
          F8FFF9F9F9FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end>
  end
  object DSAnexos: TDataSource
    AutoEdit = False
    DataSet = dmPagos.ADODtStAnexoSeleccion
    Left = 408
  end
end
