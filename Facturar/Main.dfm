object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 635
    Height = 245
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 485
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ejemplo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 185
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Factura'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 463
      Top = 6
      Width = 75
      Height = 25
      Caption = 'PDF'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 245
    Width = 635
    Height = 120
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 365
    Width = 635
    Height = 120
    Align = alBottom
    DataSource = DataSource3
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=as47Pw3K;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=CobrosDBDesa_TMP;Data Source=NAS1\CO' +
      'MPAC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 112
    Top = 16
  end
  object DataSource1: TDataSource
    Left = 64
    Top = 120
  end
  object DataSource2: TDataSource
    Left = 40
    Top = 288
  end
  object DataSource3: TDataSource
    Left = 40
    Top = 384
  end
end
