inherited frmPais: TfrmPais
  Caption = 'Pais'
  ClientHeight = 212
  ClientWidth = 358
  ExplicitWidth = 364
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 358
    Height = 171
    ExplicitWidth = 358
    ExplicitHeight = 171
    ClientRectBottom = 165
    ClientRectRight = 352
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 171
    Width = 358
    ExplicitTop = 171
    ExplicitWidth = 358
    inherited btnOk: TButton
      Left = 195
      ExplicitLeft = 195
    end
    inherited btnCancel: TButton
      Left = 276
      ExplicitLeft = 276
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
