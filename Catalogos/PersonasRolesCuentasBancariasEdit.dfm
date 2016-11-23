inherited frmPersonasRolesCuentasBancariasEdit: TfrmPersonasRolesCuentasBancariasEdit
  Caption = 'Cuentas bancarias para este rol'
  ClientHeight = 261
  ClientWidth = 552
  ExplicitWidth = 558
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 552
    Height = 220
    ExplicitWidth = 552
    ExplicitHeight = 220
    ClientRectBottom = 218
    ClientRectRight = 550
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 548
      ExplicitHeight = 190
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 121
        Height = 13
        Caption = 'Perfil de Cuenta Bancaria'
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 136
        Width = 66
        Height = 13
        Caption = 'Limite Inferior'
        FocusControl = cxDBCurrencyEdit2
        Visible = False
      end
      object Label5: TLabel
        Left = 24
        Top = 176
        Width = 70
        Height = 13
        Caption = 'Limite Superior'
        FocusControl = cxDBCurrencyEdit3
        Visible = False
      end
      object Label6: TLabel
        Left = 23
        Top = 135
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label7: TLabel
        Left = 408
        Top = 55
        Width = 52
        Height = 13
        Caption = 'Banorte ID'
        FocusControl = cxDBTextEdit1
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 24
        Top = 152
        DataBinding.DataField = 'LimiteInferior'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Visible = False
        Width = 121
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 24
        Top = 192
        DataBinding.DataField = 'LimiteSuperior'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Visible = False
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 31
        DataBinding.DataField = 'CuentaBancaria'
        DataBinding.DataSource = DataSource
        Properties.HideSelection = False
        Properties.KeyFieldNames = 'CuentaBancaria'
        Properties.ListColumns = <
          item
            Caption = 'Banco'
            FieldName = 'Nombre'
          end
          item
            Caption = 'Moneda'
            FieldName = 'Identificador'
          end
          item
            Caption = 'No. Cuenta'
            FieldName = 'CuentaBancaria'
          end>
        Properties.ListSource = dsCuentaBancaria
        TabOrder = 0
        Width = 506
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 23
        Top = 71
        DataBinding.DataField = 'CuentaBancariaPerfil'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 362
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 23
        Top = 151
        Width = 258
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 6
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 408
        Top = 71
        DataBinding.DataField = 'BanorteID'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 220
    Width = 552
    ExplicitTop = 220
    ExplicitWidth = 552
    inherited btnCancel: TButton
      Left = 470
      ExplicitLeft = 470
    end
    inherited btnOk: TButton
      Left = 389
      ExplicitLeft = 389
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasRolesCuentasBancarias.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsCuentaBancaria: TDataSource
    Left = 490
    Top = 4
  end
end
