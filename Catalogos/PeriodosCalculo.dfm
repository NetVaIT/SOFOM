object frmPeriodosCalculo: TfrmPeriodosCalculo
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Calcular Periodos'
  ClientHeight = 213
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 304
    Height = 213
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 74
      Height = 13
      Caption = 'Tipo de Periodo'
    end
    object cbxPeriodos: TComboBox
      Left = 40
      Top = 33
      Width = 209
      Height = 21
      TabOrder = 0
      Items.Strings = (
        'Semanal')
    end
    object GroupBox1: TGroupBox
      Left = 39
      Top = 66
      Width = 210
      Height = 87
      Caption = 'Calcular Periodos para el a'#241'o'
      TabOrder = 1
      object cxSEdtAnio: TcxSpinEdit
        Left = 60
        Top = 33
        Properties.MaxValue = 2099.000000000000000000
        Properties.MinValue = 2015.000000000000000000
        TabOrder = 0
        Value = 2015
        Width = 91
      end
    end
    object Button1: TButton
      Left = 110
      Top = 168
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 206
      Top = 168
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end
