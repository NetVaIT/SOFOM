inherited frmMoneda: TfrmMoneda
  Caption = 'Moneda'
  ClientHeight = 225
  ClientWidth = 362
  ExplicitWidth = 368
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 362
    Height = 184
    ExplicitWidth = 362
    ExplicitHeight = 163
    ClientRectBottom = 182
    ClientRectRight = 360
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 358
      ExplicitHeight = 133
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
      object Label3: TLabel
        Left = 16
        Top = 94
        Width = 19
        Height = 13
        Caption = 'Pais'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 61
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 313
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 109
        DataBinding.DataField = 'Pais'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 241
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 184
    Width = 362
    ExplicitTop = 163
    ExplicitWidth = 362
    inherited btnOk: TButton
      Left = 199
      ExplicitLeft = 199
    end
    inherited btnCancel: TButton
      Left = 280
      ExplicitLeft = 280
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
