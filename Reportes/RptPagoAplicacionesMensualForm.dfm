inherited frmRptPagoAplicacionesMensual: TfrmRptPagoAplicacionesMensual
  Caption = 'Aplicaciones mensuales'
  ClientHeight = 164
  ClientWidth = 300
  ExplicitWidth = 306
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 300
    Height = 123
    ExplicitWidth = 300
    ExplicitHeight = 123
    ClientRectBottom = 121
    ClientRectRight = 298
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 296
      ExplicitHeight = 95
      object Label1: TLabel
        Left = 27
        Top = 17
        Width = 19
        Height = 13
        Caption = 'A'#241'o'
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 27
        Top = 36
        DataBinding.DataField = 'Year'
        DataBinding.DataSource = dsParams
        TabOrder = 0
        Width = 80
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 123
    Width = 300
    ExplicitTop = 123
    ExplicitWidth = 300
    inherited btnOk: TButton
      Left = 137
      ExplicitLeft = 137
    end
    inherited btnCancel: TButton
      Left = 218
      ExplicitLeft = 218
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
