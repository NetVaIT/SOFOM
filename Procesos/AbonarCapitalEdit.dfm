inherited frmAbonarCapitalEdit: TfrmAbonarCapitalEdit
  Caption = 'Abonar al capital'
  ClientHeight = 676
  ClientWidth = 1059
  ExplicitWidth = 1065
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 1059
    Height = 635
    ExplicitWidth = 253
    ExplicitHeight = 212
    ClientRectBottom = 633
    ClientRectRight = 1057
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 249
      ExplicitHeight = 182
      object cxLabel1: TcxLabel
        Left = 16
        Top = 16
        Caption = 'Saldo insoluto'
      end
      object cxLabel2: TcxLabel
        Left = 16
        Top = 42
        Caption = 'Monto vencido'
        FocusControl = edtMontoVencido
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 90
        Caption = 'Fecha'
        FocusControl = edtFecha
      end
      object edtSaldoInsoluto: TcxCalcEdit
        Left = 92
        Top = 15
        EditValue = 0.000000000000000000
        Enabled = False
        Properties.DisplayFormat = '$ ,0.00'
        TabOrder = 3
        Width = 121
      end
      object edtMontoVencido: TcxCalcEdit
        Left = 92
        Top = 42
        EditValue = 0.000000000000000000
        Enabled = False
        Properties.DisplayFormat = '$ ,0.00'
        TabOrder = 4
        Width = 121
      end
      object edtFecha: TcxDateEdit
        Left = 92
        Top = 89
        TabOrder = 5
        Width = 121
      end
      object cxLabel4: TcxLabel
        Left = 16
        Top = 117
        Caption = 'Importe'
      end
      object edtImporte: TcxCalcEdit
        Left = 92
        Top = 116
        EditValue = 0.000000000000000000
        Properties.DisplayFormat = '$ ,0.00'
        TabOrder = 7
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 16
        Top = 144
        Caption = 'Tipo'
      end
      object cbxTipo: TcxComboBox
        Left = 92
        Top = 143
        Properties.Items.Strings = (
          'Reducir cuota'
          'Reducir plazo')
        TabOrder = 9
        Text = 'Reducir cuota'
        Width = 121
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 192
        Width = 1014
        Height = 361
        DataSource = DataSource
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 336
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 11
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 635
    Width = 1059
    ExplicitTop = 212
    ExplicitWidth = 253
    inherited btnCancel: TButton
      Left = 977
      ExplicitLeft = 171
    end
    inherited btnOk: TButton
      Left = 896
      ExplicitLeft = 90
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmAmortizaciones.dxmAnexosAmortizaciones
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
