inherited frmPoblacion: TfrmPoblacion
  Caption = 'Poblaci'#243'n'
  ClientHeight = 210
  ClientWidth = 384
  ExplicitWidth = 390
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 384
    Height = 169
    ExplicitWidth = 384
    ExplicitHeight = 169
    ClientRectBottom = 163
    ClientRectRight = 378
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 375
      ExplicitHeight = 137
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
    Top = 169
    Width = 384
    ExplicitTop = 169
    ExplicitWidth = 384
    inherited btnOk: TButton
      Left = 221
      ExplicitLeft = 221
    end
    inherited btnCancel: TButton
      Left = 302
      ExplicitLeft = 302
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
