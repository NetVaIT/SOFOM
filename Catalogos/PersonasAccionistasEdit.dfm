inherited frmPersonasAccionistasEdit: TfrmPersonasAccionistasEdit
  Caption = 'Accionista'
  ClientHeight = 314
  ExplicitWidth = 444
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 273
    ExplicitHeight = 173
    ClientRectBottom = 271
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 245
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 48
        Height = 13
        Caption = 'Accionista'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 303
        Top = 64
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label3: TLabel
        Left = 24
        Top = 64
        Width = 29
        Height = 13
        Caption = 'Cargo'
        FocusControl = cxDBTextEdit1
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
        Left = 303
        Top = 80
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 80
        DataBinding.DataField = 'Cargo'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 273
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 112
        Caption = 'NC1'
        DataBinding.DataField = 'NivelControl1'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 136
        Caption = 'NC2'
        DataBinding.DataField = 'NivelControl2'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 24
        Top = 160
        Caption = 'NC3'
        DataBinding.DataField = 'NivelControl3'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 24
        Top = 184
        Caption = 'NC4'
        DataBinding.DataField = 'NivelControl4'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 24
        Top = 208
        Caption = 'NC5'
        DataBinding.DataField = 'NivelControl5'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 273
    ExplicitTop = 173
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
