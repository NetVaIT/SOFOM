object FrmClaveAutorizacion: TFrmClaveAutorizacion
  Left = 0
  Top = 0
  Caption = 'Solicitid Clave Autorizaci'#243'n'
  ClientHeight = 150
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 381
    Height = 106
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 484
    ExplicitHeight = 121
    ClientRectBottom = 104
    ClientRectLeft = 2
    ClientRectRight = 379
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitWidth = 480
      ExplicitHeight = 93
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 225
        Height = 13
        Caption = 'Escriba la contrase'#241'a para autorizar el proceso'
      end
      object cxTxtEdtCLave: TcxTextEdit
        Left = 16
        Top = 40
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 0
        Width = 161
      end
    end
  end
  object pmlMain: TPanel
    Left = 0
    Top = 106
    Width = 381
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 101
    DesignSize = (
      381
      44)
    object BtnCancela: TButton
      Tag = 2
      Left = 201
      Top = 11
      Width = 120
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 0
      OnClick = BtnAceptarClick
    end
    object BtnAceptar: TButton
      Tag = 1
      Left = 59
      Top = 10
      Width = 120
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = BtnAceptarClick
    end
  end
  object ADOQryUsuario: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdUsuario'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Clave'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from Usuarios where IdUsuario=:IdUsuario and Password=:' +
        'Clave')
    Left = 308
    Top = 10
  end
end
