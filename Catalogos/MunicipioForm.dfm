inherited frmMunicipio: TfrmMunicipio
  Caption = 'Municipio'
  ClientHeight = 203
  ClientWidth = 362
  ExplicitWidth = 368
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 362
    Height = 162
    ExplicitWidth = 362
    ExplicitHeight = 162
    ClientRectBottom = 160
    ClientRectRight = 360
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 358
      ExplicitHeight = 132
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
    end
  end
  inherited pmlMain: TPanel
    Top = 162
    Width = 362
    ExplicitTop = 162
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
