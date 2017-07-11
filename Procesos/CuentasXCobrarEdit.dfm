inherited FrmEdCuentasXCobrar: TFrmEdCuentasXCobrar
  Caption = 'Edici'#243'n Cuentas X Cobrar'
  ClientHeight = 699
  ClientWidth = 724
  ExplicitWidth = 730
  ExplicitHeight = 728
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 724
    Height = 658
    ExplicitWidth = 724
    ExplicitHeight = 658
    ClientRectBottom = 656
    ClientRectRight = 722
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 720
      ExplicitHeight = 630
      object Label1: TLabel
        Left = 24
        Top = 23
        Width = 97
        Height = 13
        Caption = 'No.Cuenta X Cobrar'
      end
      object Label5: TLabel
        Left = 24
        Top = 64
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label6: TLabel
        Left = 24
        Top = 125
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit1
      end
      object Label7: TLabel
        Left = 192
        Top = 125
        Width = 45
        Height = 13
        Caption = 'Impuesto'
        FocusControl = cxDBTextEdit2
      end
      object Label8: TLabel
        Left = 352
        Top = 125
        Width = 35
        Height = 13
        Caption = 'Interes'
        FocusControl = cxDBTextEdit3
      end
      object Label9: TLabel
        Left = 192
        Top = 176
        Width = 24
        Height = 13
        Caption = 'Total'
        FocusControl = cxDBTextEdit4
      end
      object Label10: TLabel
        Left = 352
        Top = 176
        Width = 26
        Height = 13
        Caption = 'Saldo'
        FocusControl = cxDBTextEdit5
      end
      object Label11: TLabel
        Left = 483
        Top = 67
        Width = 56
        Height = 13
        Caption = 'EstatusCXC'
        FocusControl = DBLookupComboBox1
      end
      object Label12: TLabel
        Left = 192
        Top = 23
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLookupComboBox2
      end
      object Label2: TLabel
        Left = 192
        Top = 64
        Width = 89
        Height = 13
        Caption = 'Fecha Vencimiento'
        FocusControl = cxDBDateEdit2
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 80
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 141
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 192
        Top = 141
        DataBinding.DataField = 'Impuesto'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 352
        Top = 141
        DataBinding.DataField = 'Interes'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 192
        Top = 192
        DataBinding.DataField = 'Total'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 352
        Top = 192
        DataBinding.DataField = 'Saldo'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 483
        Top = 83
        Width = 209
        Height = 21
        DataField = 'EstatusCXC'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 192
        Top = 40
        Width = 500
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 7
      end
      object PnlDetalleFact: TPanel
        Left = 0
        Top = 234
        Width = 720
        Height = 204
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 8
      end
      object cxDBLabel1: TcxDBLabel
        Left = 24
        Top = 39
        DataBinding.DataField = 'IdCuentaXCobrar'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 121
      end
      object pnlMoratorios: TPanel
        Left = 0
        Top = 438
        Width = 720
        Height = 192
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 10
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 192
        Top = 80
        DataBinding.DataField = 'FechaVencimiento'
        DataBinding.DataSource = DataSource
        TabOrder = 11
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 658
    Width = 724
    ExplicitTop = 658
    ExplicitWidth = 724
    inherited btnCancel: TButton
      Left = 642
      ExplicitLeft = 642
    end
    inherited btnOk: TButton
      Left = 561
      ExplicitLeft = 561
    end
    object cxLabel1: TcxLabel
      Left = 26
      Top = 16
      Caption = 'Total con Moratorios '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLblTotalConMora: TcxLabel
      Left = 156
      Top = 16
      AutoSize = False
      Caption = '$25.00'
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 86
      AnchorX = 242
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXCobrar.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
