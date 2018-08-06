inherited FrmEdPagos: TFrmEdPagos
  Caption = 'Edici'#243'n Pagos'
  ClientHeight = 502
  ClientWidth = 595
  ExplicitWidth = 601
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 595
    Height = 461
    ExplicitWidth = 595
    ExplicitHeight = 461
    ClientRectBottom = 459
    ClientRectRight = 593
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 591
      ExplicitHeight = 433
      object Label7: TLabel
        Left = 27
        Top = 317
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object cxDBMemo1: TcxDBMemo
        Left = 27
        Top = 336
        DataBinding.DataField = 'Observaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Height = 84
        Width = 540
      end
      object PnlDatosBase: TPanel
        Left = 0
        Top = 0
        Width = 591
        Height = 310
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -2
        ExplicitTop = 1
        object Label1: TLabel
          Left = 27
          Top = 122
          Width = 29
          Height = 13
          Caption = 'Fecha'
          FocusControl = cxDBDateEdit1
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
        object Label4: TLabel
          Left = 369
          Top = 215
          Width = 52
          Height = 13
          Caption = 'Referencia'
          FocusControl = cxDBTextEdit2
        end
        object Label5: TLabel
          Left = 27
          Top = 266
          Width = 38
          Height = 13
          Caption = 'Importe'
          FocusControl = cxDBTxtEdtImporte
        end
        object Label6: TLabel
          Left = 282
          Top = 266
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object Label8: TLabel
          Left = 27
          Top = 215
          Width = 29
          Height = 13
          Caption = 'Banco'
          FocusControl = DBLookupComboBox1
        end
        object Label9: TLabel
          Left = 27
          Top = 25
          Width = 33
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBLkpCmbBxCliente
        end
        object Label10: TLabel
          Left = 283
          Top = 164
          Width = 78
          Height = 13
          Caption = 'M'#233'todo de pago'
          FocusControl = DBLkpCmbBxMetodoPago
        end
        object Label11: TLabel
          Left = 235
          Top = 215
          Width = 77
          Height = 13
          Caption = 'Cuenta de pago'
          FocusControl = cxDBTextEdit4
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
          Top = 266
          Width = 71
          Height = 13
          Caption = 'Moneda origen'
        end
        object Label14: TLabel
          Left = 27
          Top = 164
          Width = 72
          Height = 13
          Caption = 'Forma de pago'
          FocusControl = DBLookupComboBox3
        end
        object cxDBLblAnexo: TcxDBLabel
          Left = 27
          Top = 81
          DataBinding.DataField = 'Anexo'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          OnClick = cxDBLblAnexoClick
          Height = 39
          Width = 540
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 27
          Top = 138
          DataBinding.DataField = 'FechaPago'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 171
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 208
          Top = 138
          DataBinding.DataField = 'SeriePago'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 369
          Top = 231
          DataBinding.DataField = 'Referencia'
          DataBinding.DataSource = DataSource
          TabOrder = 12
          Width = 198
        end
        object cxDBTxtEdtImporte: TcxDBTextEdit
          Left = 27
          Top = 282
          DataBinding.DataField = 'Importe'
          DataBinding.DataSource = DataSource
          TabOrder = 13
          OnExit = cxDBTxtEdtImporteExit
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 27
          Top = 231
          Width = 200
          Height = 21
          DataField = 'Banco'
          DataSource = DataSource
          TabOrder = 10
        end
        object DBLkpCmbBxCliente: TDBLookupComboBox
          Left = 27
          Top = 41
          Width = 540
          Height = 21
          DataField = 'Cliente'
          DataSource = DataSource
          TabOrder = 0
          OnClick = DBLkpCmbBxClienteClick
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 338
          Top = 138
          DataBinding.DataField = 'FolioPago'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 143
        end
        object cxDBLabel1: TcxDBLabel
          Left = 281
          Top = 283
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
          Left = 283
          Top = 180
          Width = 250
          Height = 21
          DataField = 'MetodoPago'
          DataSource = DataSource
          TabOrder = 8
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 233
          Top = 231
          DataBinding.DataField = 'CuentaPago'
          DataBinding.DataSource = DataSource
          TabOrder = 11
          Width = 130
        end
        object cxDBRdGrpOrigenPago: TcxDBRadioGroup
          Left = 408
          Top = 266
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
          TabOrder = 16
          Height = 42
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
          TabOrder = 1
          Visible = False
          OnClick = DBLkpCmbBxAnexosClick
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 487
          Top = 138
          Caption = 'Es dep'#243'sito'
          DataBinding.DataField = 'EsDeposito'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 6
          Width = 80
        end
        object cxBtnUsaNotaCredito: TcxButton
          Left = 539
          Top = 176
          Width = 32
          Height = 25
          Hint = 'Usar Nota Cr'#233'dito'
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = cxImageList
          TabOrder = 9
          OnClick = cxBtnUsaNotaCreditoClick
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 154
          Top = 282
          Width = 121
          Height = 21
          DataField = 'MonedaOrigen'
          DataSource = DataSource
          TabOrder = 14
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 27
          Top = 180
          Width = 250
          Height = 21
          DataField = 'FormaPago'
          DataSource = DataSource
          TabOrder = 7
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 461
    Width = 595
    ExplicitTop = 461
    ExplicitWidth = 595
    inherited btnCancel: TButton
      Left = 513
      ExplicitLeft = 513
    end
    inherited btnOk: TButton
      Left = 432
      ExplicitLeft = 432
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPagos.adodsMaster
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
  object DSPersonas: TDataSource
    AutoEdit = False
    Left = 344
  end
  object DSAnexos: TDataSource
    AutoEdit = False
    DataSet = dmPagos.ADODtStAnexoSeleccion
    Left = 408
  end
  object DSNotasCredito: TDataSource
    AutoEdit = False
    DataSet = dmPagos.ADODtStCFDINotaCredito
    Left = 480
  end
end
