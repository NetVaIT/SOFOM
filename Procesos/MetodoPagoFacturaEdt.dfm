object FrmMetodoPagoFactura: TFrmMetodoPagoFactura
  Left = 0
  Top = 0
  Caption = 'Confirmar M'#233'todo Pago Factura'
  ClientHeight = 177
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 398
    Height = 136
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = -91
    ExplicitWidth = 509
    ExplicitHeight = 187
    ClientRectBottom = 134
    ClientRectLeft = 2
    ClientRectRight = 396
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 502
      ExplicitHeight = 212
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 242
        Height = 13
        Caption = 'M'#233'todo de Pago con el que se generar'#225' la Factura'
      end
      object PnlCuenta: TPanel
        Left = 16
        Top = 60
        Width = 321
        Height = 43
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 4
          Width = 35
          Height = 13
          Caption = 'Cuenta'
        end
        object cxTxtEdtCuenta: TcxTextEdit
          Left = 0
          Top = 20
          TabOrder = 0
          Width = 129
        end
      end
      object DBLkpCmbBxMetodoPago: TDBLookupComboBox
        Left = 16
        Top = 33
        Width = 242
        Height = 21
        KeyField = 'IdMetodoPago'
        ListField = 'Descripcion'
        ListSource = DSMetodoPago
        TabOrder = 1
        OnClick = DBLkpCmbBxMetodoPagoClick
      end
    end
  end
  object pmlMain: TPanel
    Left = 0
    Top = 136
    Width = 398
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -91
    ExplicitTop = 187
    ExplicitWidth = 509
    DesignSize = (
      398
      41)
    object btnCancel: TButton
      Left = 316
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 427
    end
    object btnOk: TButton
      Left = 235
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
      ExplicitLeft = 346
    end
  end
  object DSMetodoPago: TDataSource
    DataSet = dmCuentasXCobrar.ADODtStSelMetPago
    Left = 320
    Top = 8
  end
end
