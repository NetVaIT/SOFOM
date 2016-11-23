inherited frmCuentasContablesEdit: TfrmCuentasContablesEdit
  Caption = 'Cuenta Contable'
  ClientHeight = 302
  ClientWidth = 556
  ExplicitWidth = 562
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 556
    Height = 261
    ExplicitWidth = 556
    ExplicitHeight = 261
    ClientRectBottom = 259
    ClientRectRight = 554
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 552
      ExplicitHeight = 231
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 81
        Height = 13
        Caption = 'Cuenta Contable'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label6: TLabel
        Left = 16
        Top = 169
        Width = 66
        Height = 13
        Caption = 'Cuenta Padre'
      end
      object Label5: TLabel
        Left = 16
        Top = 128
        Width = 136
        Height = 13
        Caption = 'Naturaleza Cuenta Contable'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'CuentaContable'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 177
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 521
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 23
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 522
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 15
        Top = 184
        DataBinding.DataField = 'CuentaPadre'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 522
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 15
        Top = 143
        DataBinding.DataField = 'CuentaContableNaturaleza'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 522
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 261
    Width = 556
    ExplicitTop = 261
    ExplicitWidth = 556
    inherited btnOk: TButton
      Left = 393
      ExplicitLeft = 393
    end
    inherited btnCancel: TButton
      Left = 474
      ExplicitLeft = 474
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
