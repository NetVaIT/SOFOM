inherited frmEmailsEdit: TfrmEmailsEdit
  Caption = 'e-Mail'
  ClientHeight = 213
  ClientWidth = 573
  ExplicitWidth = 579
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 573
    Height = 172
    ExplicitWidth = 573
    ExplicitHeight = 172
    ClientRectBottom = 170
    ClientRectRight = 571
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 569
      ExplicitHeight = 142
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 28
        Height = 13
        Caption = 'e-Mail'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 66
        Height = 13
        Caption = 'Tipo de e-Mail'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Email'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 537
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 71
        DataBinding.DataField = 'EmailTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 298
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 15
        Top = 104
        Caption = 'Predeterminado'
        DataBinding.DataField = 'Predeterminado'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 172
    Width = 573
    ExplicitTop = 172
    ExplicitWidth = 573
    inherited btnOk: TButton
      Left = 410
      ExplicitLeft = 410
    end
    inherited btnCancel: TButton
      Left = 491
      ExplicitLeft = 491
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
