inherited frmCuentasContablesNaturalezaEdit: TfrmCuentasContablesNaturalezaEdit
  Caption = 'Naturaleza Cuenta Contable'
  ClientHeight = 192
  ClientWidth = 481
  ExplicitWidth = 487
  ExplicitHeight = 220
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 481
    Height = 151
    ClientRectBottom = 149
    ClientRectRight = 479
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 161
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 441
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 151
    Width = 481
    inherited btnOk: TButton
      Left = 318
    end
    inherited btnCancel: TButton
      Left = 399
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
