inherited frmPersonasAccionistasEdit: TfrmPersonasAccionistasEdit
  Caption = 'Accionista'
  ClientHeight = 214
  ExplicitWidth = 444
  ExplicitHeight = 243
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 173
    ExplicitHeight = 173
    ClientRectBottom = 171
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 143
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 48
        Height = 13
        Caption = 'Accionista'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBCurrencyEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 40
        Width = 400
        Height = 21
        DataField = 'Accionista'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 24
        Top = 80
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 173
    ExplicitTop = 173
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
