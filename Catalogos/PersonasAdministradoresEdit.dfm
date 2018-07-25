inherited frmPersonasAdministradoresEdit: TfrmPersonasAdministradoresEdit
  Caption = 'frmPersonasAdministradoresEdit'
  ClientHeight = 220
  ExplicitWidth = 444
  ExplicitHeight = 249
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 179
    ClientRectBottom = 177
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 434
      ExplicitHeight = 297
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 66
        Height = 13
        Caption = 'Administrador'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 20
        Height = 13
        Caption = 'RFC'
        FocusControl = DBLookupComboBox2
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 29
        Height = 13
        Caption = 'Cargo'
        FocusControl = cxDBTextEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 32
        Width = 400
        Height = 21
        DataField = 'Administrador'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 72
        Width = 183
        Height = 21
        DataField = 'RFC'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'Cargo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 179
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
