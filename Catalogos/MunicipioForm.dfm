inherited frmMunicipio: TfrmMunicipio
  Caption = 'Municipio'
  ClientHeight = 234
  ClientWidth = 362
  ExplicitWidth = 368
  ExplicitHeight = 263
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 362
    Height = 193
    ExplicitWidth = 362
    ExplicitHeight = 162
    ClientRectBottom = 191
    ClientRectRight = 360
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 358
      ExplicitHeight = 165
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 24
        Top = 112
        Width = 62
        Height = 13
        Caption = 'C'#243'digo CNBV'
        FocusControl = cxDBTextEdit2
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 300
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 128
        DataBinding.DataField = 'CNBVCodigo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 193
    Width = 362
    ExplicitTop = 162
    ExplicitWidth = 362
    inherited btnCancel: TButton
      Left = 280
      ExplicitLeft = 280
    end
    inherited btnOk: TButton
      Left = 199
      ExplicitLeft = 199
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
