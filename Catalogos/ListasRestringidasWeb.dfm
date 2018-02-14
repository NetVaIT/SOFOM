inherited frmListasRestringidasWeb: TfrmListasRestringidasWeb
  BorderStyle = bsSizeToolWin
  Caption = 'frmListasRestringidasWeb'
  ClientHeight = 761
  ClientWidth = 884
  ExplicitWidth = 900
  ExplicitHeight = 800
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 884
    Height = 720
    ExplicitWidth = 1044
    ExplicitHeight = 880
    ClientRectBottom = 718
    ClientRectRight = 882
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 1040
      ExplicitHeight = 852
      object WebBrowser: TWebBrowser
        Left = 0
        Top = 0
        Width = 880
        Height = 692
        Align = alClient
        TabOrder = 0
        OnDocumentComplete = WebBrowserDocumentComplete
        ExplicitLeft = 48
        ExplicitTop = 51
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C000000F35A0000854700000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 720
    Width = 884
    ExplicitTop = 880
    ExplicitWidth = 1044
    inherited btnCancel: TButton
      Left = 802
      ExplicitLeft = 962
    end
    inherited btnOk: TButton
      Left = 721
      ExplicitLeft = 881
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
