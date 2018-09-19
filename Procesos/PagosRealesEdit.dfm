inherited FrmEdPagosReales: TFrmEdPagosReales
  Caption = 'Edici'#243'n de  Pagos reales'
  ClientHeight = 558
  ClientWidth = 590
  Position = poOwnerFormCenter
  ExplicitWidth = 596
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 590
    Height = 517
    Properties.ActivePage = cxTbShtDatosComplemento
    ExplicitWidth = 590
    ExplicitHeight = 517
    ClientRectBottom = 513
    ClientRectRight = 586
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 582
      ExplicitHeight = 489
      object Label1: TLabel
        Left = 31
        Top = 75
        Width = 71
        Height = 13
        Caption = 'Fecha de pago'
        FocusControl = cxDBDateEdit1
      end
      object Label5: TLabel
        Left = 31
        Top = 259
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTxtEdtImporte
      end
      object Label6: TLabel
        Left = 294
        Top = 259
        Width = 26
        Height = 13
        Caption = 'Saldo'
      end
      object Label8: TLabel
        Left = 31
        Top = 160
        Width = 29
        Height = 13
        Caption = 'Banco'
        FocusControl = DBLkpCmbBxBanco
      end
      object Label9: TLabel
        Left = 31
        Top = 25
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLkpCmbBxCliente
      end
      object Label13: TLabel
        Left = 158
        Top = 259
        Width = 41
        Height = 13
        Caption = 'Moneda '
      end
      object Label10: TLabel
        Left = 31
        Top = 117
        Width = 72
        Height = 13
        Caption = 'Forma de pago'
        FocusControl = DBLkpCmbBxMetodoPago
      end
      object Label2: TLabel
        Left = 31
        Top = 208
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = cxDBTxtEdtRefe
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 31
        Top = 91
        DataBinding.DataField = 'FechaPago'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 171
      end
      object cxDBTxtEdtImporte: TcxDBTextEdit
        Left = 31
        Top = 275
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        OnExit = cxDBTxtEdtImporteExit
        Width = 121
      end
      object DBLkpCmbBxBanco: TDBLookupComboBox
        Left = 31
        Top = 176
        Width = 250
        Height = 21
        DataField = 'Banco'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLkpCmbBxCliente: TDBLookupComboBox
        Left = 31
        Top = 41
        Width = 540
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBLabel1: TcxDBLabel
        Left = 293
        Top = 276
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
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 158
        Top = 275
        Width = 121
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 7
      end
      object DBLkpCmbBxMetodoPago: TDBLookupComboBox
        Left = 31
        Top = 133
        Width = 250
        Height = 21
        DataField = 'FormaPago'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBTxtEdtRefe: TcxDBTextEdit
        Left = 31
        Top = 224
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 521
      end
      object cxDBChckBxNC: TcxDBCheckBox
        Left = 351
        Top = 133
        Caption = 'Nota de cr'#233'dito'
        DataBinding.DataField = 'EsNotaCredito'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        OnClick = cxDBChckBxNCClick
        Width = 121
      end
      object cxBtnUsaNotaCredito: TcxButton
        Left = 528
        Top = 127
        Width = 32
        Height = 25
        Hint = 'Usar Nota Cr'#233'dito'
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = cxImageList
        TabOrder = 9
        OnClick = cxBtnUsaNotaCreditoClick
      end
    end
    object cxTbShtDatosComplemento: TcxTabSheet
      Caption = 'Complemento'
      ImageIndex = 1
      object gbBancarizado: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Pago bancarizado'
        TabOrder = 0
        ExplicitTop = -6
        Height = 169
        Width = 582
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
        end
        object Label14: TLabel
          Left = 17
          Top = 20
          Width = 72
          Height = 13
          Caption = 'Forma de pago'
          FocusControl = DBLkpCmbBxformaPAgo33
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
          DataBinding.DataSource = DataSource
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
          TabOrder = 2
          Width = 530
        end
        object DBLookupComboBox5: TcxDBLookupComboBox
          Left = 17
          Top = 123
          DataBinding.DataField = 'CuentaBeneficiario'
          DataBinding.DataSource = DataSource
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
          TabOrder = 3
          Width = 530
        end
        object DBLkpCmbBxformaPAgo33: TcxDBLookupComboBox
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
          TabOrder = 0
          Width = 300
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 322
          Top = 36
          DataBinding.DataField = 'Referencia'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 224
        end
      end
      object gbCadena: TcxGroupBox
        Left = 0
        Top = 169
        Align = alClient
        Caption = 'Informaci'#243'n del tipo de cadena'
        TabOrder = 1
        Height = 320
        Width = 582
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
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 46
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 209
        end
        object cxDBMemo2: TcxDBMemo
          Left = 16
          Top = 71
          DataBinding.DataField = 'Certificado'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Height = 59
          Width = 530
        end
        object cxDBMemo3: TcxDBMemo
          Left = 16
          Top = 152
          DataBinding.DataField = 'Cadena'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Height = 59
          Width = 530
        end
        object cxDBMemo4: TcxDBMemo
          Left = 16
          Top = 236
          DataBinding.DataField = 'Sello'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Height = 59
          Width = 530
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 517
    Width = 590
    ExplicitTop = 517
    ExplicitWidth = 590
    inherited btnCancel: TButton
      Left = 508
      ExplicitLeft = 508
    end
    inherited btnOk: TButton
      Left = 427
      ExplicitLeft = 427
    end
  end
  inherited DataSource: TDataSource
    DataSet = DMPagosReales.adodsMaster
    OnDataChange = DataSourceDataChange
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
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
end
