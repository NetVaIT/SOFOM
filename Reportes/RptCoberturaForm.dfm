inherited frmRptCobertura: TfrmRptCobertura
  Caption = 'Cobertura'
  ClientHeight = 208
  ClientWidth = 333
  ExplicitWidth = 339
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 333
    Height = 167
    ClientRectBottom = 165
    ClientRectRight = 331
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 434
      ExplicitHeight = 297
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 16
        Top = 16
        Caption = 'Selecci'#243'n'
        DataBinding.DataField = 'Vencidos'
        DataBinding.DataSource = dsParams
        Properties.Items = <
          item
            Caption = 'Todos'
            Value = '0'
          end
          item
            Caption = 'Vencidos mayor a 30 d'#237'as'
            Value = '1'
          end>
        TabOrder = 0
        Height = 105
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 167
    Width = 333
    inherited btnOk: TButton
      Left = 170
    end
    inherited btnCancel: TButton
      Left = 251
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
