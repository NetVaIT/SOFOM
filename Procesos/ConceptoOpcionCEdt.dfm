object FrmConcFacturaOpcCompra: TFrmConcFacturaOpcCompra
  Left = 0
  Top = 0
  Caption = 'Concepto Opci'#243'n de Compra'
  ClientHeight = 228
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pmlMain: TPanel
    Left = 0
    Top = 187
    Width = 509
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 600
    DesignSize = (
      509
      41)
    object btnCancel: TButton
      Left = 427
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 518
    end
    object btnOk: TButton
      Left = 346
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 437
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 509
    Height = 187
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 600
    ClientRectBottom = 185
    ClientRectLeft = 2
    ClientRectRight = 507
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitWidth = 596
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 217
        Height = 13
        Caption = 'Concepto de Factura para Opci'#243'n de Compra'
      end
      object cxMmConceptoFactura: TcxMemo
        Left = 16
        Top = 35
        Lines.Strings = (
          'cxMmConceptoFactura')
        TabOrder = 0
        Height = 94
        Width = 481
      end
    end
  end
end
