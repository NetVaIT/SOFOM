inherited frmMarcasEdit: TfrmMarcasEdit
  Caption = 'frmMarcasEdit'
  ClientHeight = 206
  ExplicitWidth = 444
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 165
    ClientRectBottom = 163
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 397
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 165
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
