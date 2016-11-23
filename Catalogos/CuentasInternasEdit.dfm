inherited frmCuentasInternasEdit: TfrmCuentasInternasEdit
  Caption = 'Cuenta Interna'
  ClientHeight = 268
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 296
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 524
    Height = 227
    ExplicitWidth = 524
    ExplicitHeight = 227
    ClientRectBottom = 225
    ClientRectRight = 522
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 520
      ExplicitHeight = 197
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 74
        Height = 13
        Caption = 'Cuenta Interna'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 105
        Height = 13
        Caption = 'Cuenta Interna Padre'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'CuentaInterna'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 193
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 489
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 31
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 490
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 151
        DataBinding.DataField = 'CuentaInternaPadre'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 489
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 227
    Width = 524
    ExplicitTop = 227
    ExplicitWidth = 524
    inherited btnOk: TButton
      Left = 361
      ExplicitLeft = 361
    end
    inherited btnCancel: TButton
      Left = 442
      ExplicitLeft = 442
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
