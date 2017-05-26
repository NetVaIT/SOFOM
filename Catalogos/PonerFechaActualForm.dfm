object FrmPoneFechaActual: TFrmPoneFechaActual
  Left = 0
  Top = 0
  Caption = 'Establecer Fecha Actual'
  ClientHeight = 163
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 59
    Height = 13
    Caption = 'FechaActual'
    FocusControl = cxDBDateEdit2
  end
  object Label1: TLabel
    Left = 184
    Top = 65
    Width = 160
    Height = 26
    Caption = 'Si  esta desmarcada usa la fecha actual del servidor'
    WordWrap = True
  end
  object cxDBDateEdit2: TcxDBDateEdit
    Left = 32
    Top = 40
    DataBinding.DataField = 'FechaActual'
    DataBinding.DataSource = _dmConection.DSFechaActual
    TabOrder = 0
    Width = 121
  end
  object cxDBCheckBox1: TcxDBCheckBox
    Left = 32
    Top = 80
    Caption = 'EsProduccion'
    DataBinding.DataField = 'EsProduccion'
    DataBinding.DataSource = _dmConection.DSFechaActual
    TabOrder = 1
    Visible = False
    Width = 121
  end
  object cxDBCheckBox2: TcxDBCheckBox
    Left = 176
    Top = 40
    Caption = 'Usar Fecha establecida'
    DataBinding.DataField = 'UsarFecha'
    DataBinding.DataSource = _dmConection.DSFechaActual
    TabOrder = 2
    Width = 145
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 115
    Width = 184
    Height = 25
    DataSource = _dmConection.DSFechaActual
    VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object BtBtnCerrar: TBitBtn
    Left = 256
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cerrar'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
