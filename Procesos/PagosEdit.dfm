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
      ExplicitTop = 28
      ExplicitWidth = 591
      ExplicitHeight = 431
      object Label7: TLabel
        Left = 27
        Top = 325
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object cxDBMemo1: TcxDBMemo
        Left = 27
        Top = 344
        DataBinding.DataField = 'Observaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Height = 65
        Width = 516
      end
      object PnlDatosBase: TPanel
        Left = 0
        Top = 0
        Width = 591
        Height = 319
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 27
          Top = 119
          Width = 56
          Height = 13
          Caption = 'Fecha Pago'
          FocusControl = cxDBDateEdit1
        end
        object Label2: TLabel
          Left = 340
          Top = 122
          Width = 46
          Height = 13
          Caption = 'FolioPago'
        end
        object Label3: TLabel
          Left = 208
          Top = 122
          Width = 48
          Height = 13
          Caption = 'SeriePago'
          FocusControl = cxDBTextEdit1
        end
        object Label4: TLabel
          Left = 340
          Top = 212
          Width = 52
          Height = 13
          Caption = 'Referencia'
          FocusControl = cxDBTextEdit2
        end
        object Label5: TLabel
          Left = 27
          Top = 272
          Width = 38
          Height = 13
          Caption = 'Importe'
          FocusControl = cxDBTextEdit3
        end
        object Label6: TLabel
          Left = 211
          Top = 272
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object Label8: TLabel
          Left = 27
          Top = 212
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
          Left = 27
          Top = 166
          Width = 78
          Height = 13
          Caption = 'M'#233'todo de Pago'
          FocusControl = DBLookupComboBox3
        end
        object Label11: TLabel
          Left = 340
          Top = 166
          Width = 59
          Height = 13
          Caption = 'CuentaPago'
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
          Width = 516
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 27
          Top = 138
          DataBinding.DataField = 'FechaPago'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 171
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 208
          Top = 138
          DataBinding.DataField = 'SeriePago'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 338
          Top = 231
          DataBinding.DataField = 'Referencia'
          DataBinding.DataSource = DataSource
          TabOrder = 8
          Width = 205
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 27
          Top = 288
          DataBinding.DataField = 'Importe'
          DataBinding.DataSource = DataSource
          TabOrder = 9
          OnExit = cxDBTextEdit3Exit
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 27
          Top = 231
          Width = 302
          Height = 21
          DataField = 'Banco'
          DataSource = DataSource
          TabOrder = 7
        end
        object DBLkpCmbBxCliente: TDBLookupComboBox
          Left = 27
          Top = 41
          Width = 516
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
          TabOrder = 4
          Width = 121
        end
        object cxDBLabel1: TcxDBLabel
          Left = 210
          Top = 287
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
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 27
          Top = 182
          Width = 302
          Height = 21
          DataField = 'MetodoPago'
          DataSource = DataSource
          TabOrder = 5
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 338
          Top = 182
          DataBinding.DataField = 'CuentaPago'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBRdGrpOrigenPago: TcxDBRadioGroup
          Left = 338
          Top = 272
          Caption = 'Origen Pago'
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
          Height = 42
          Width = 205
        end
        object DBLkpCmbBxAnexos: TDBLookupComboBox
          Left = 27
          Top = 83
          Width = 516
          Height = 21
          DataField = 'IdAnexo'
          DataSource = DataSource
          KeyField = 'IdAnexo'
          ListField = 'Descripcion'
          ListSource = DSAnexos
          TabOrder = 1
          Visible = False
          OnClick = DBLkpCmbBxAnexosClick
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
  end
  object DSPersonas: TDataSource
    AutoEdit = False
    DataSet = dmPagos.ADOSPersonas
    Left = 528
    Top = 152
  end
  object DSAnexos: TDataSource
    AutoEdit = False
    DataSet = dmPagos.ADODtStAnexoSeleccion
    Left = 528
    Top = 208
  end
end
