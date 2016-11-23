inherited frmFormula: TfrmFormula
  Caption = 'Formula'
  ClientHeight = 233
  ClientWidth = 574
  ExplicitWidth = 580
  ExplicitHeight = 261
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 574
    Height = 192
    ClientRectBottom = 190
    ClientRectRight = 572
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
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 38
        Height = 13
        Caption = 'Formula'
        FocusControl = cxDBTextEdit3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 81
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 537
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Formula'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 537
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 192
    Width = 574
    inherited btnOk: TButton
      Left = 411
    end
    inherited btnCancel: TButton
      Left = 492
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
