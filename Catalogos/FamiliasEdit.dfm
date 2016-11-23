inherited frmFamiliasEdit: TfrmFamiliasEdit
  Caption = 'frmFamiliasEdit'
  ClientHeight = 210
  ExplicitWidth = 444
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 169
    ClientRectBottom = 167
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 72
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 48
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 88
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 405
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 169
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
