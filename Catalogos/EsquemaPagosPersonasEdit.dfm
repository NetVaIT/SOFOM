inherited frmEsquemaPagosPersonasEdit: TfrmEsquemaPagosPersonasEdit
  Caption = 'Esquemas de pago del Outsorcing'
  ClientHeight = 212
  ClientWidth = 551
  ExplicitWidth = 557
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 551
    Height = 171
    ExplicitWidth = 551
    ExplicitHeight = 213
    ClientRectBottom = 169
    ClientRectRight = 549
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 547
      ExplicitHeight = 183
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 59
        Height = 13
        Caption = 'OutSourcing'
        FocusControl = cxDBLookupComboBox1
      end
      object Label3: TLabel
        Left = 24
        Top = 72
        Width = 79
        Height = 13
        Caption = 'Cuenta bancaria'
        FocusControl = cxDBLookupComboBox3
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 48
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdPersona'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        TabOrder = 0
        Width = 500
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 24
        Top = 88
        DataBinding.DataField = 'IdCuentaBancaria'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdCuentaBancaria'
        Properties.ListColumns = <
          item
            Caption = 'Cuenta bancaria'
            FieldName = 'CuentaBancaria'
          end
          item
            FieldName = 'Banco'
          end
          item
            FieldName = 'Moneda'
          end>
        Properties.ListSource = dsCuentaBancarias
        TabOrder = 1
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 171
    Width = 551
    ExplicitTop = 213
    ExplicitWidth = 551
    inherited btnOk: TButton
      Left = 388
      ExplicitLeft = 388
    end
    inherited btnCancel: TButton
      Left = 469
      ExplicitLeft = 469
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsCuentaBancarias: TDataSource
    AutoEdit = False
    Left = 328
  end
end
