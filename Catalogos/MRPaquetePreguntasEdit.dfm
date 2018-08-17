inherited frmPaquetePreguntasEdit: TfrmPaquetePreguntasEdit
  Caption = 'Edici'#243'n Paquetes de preguntas'
  ClientHeight = 224
  ClientWidth = 615
  ExplicitWidth = 621
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 615
    Height = 183
    ExplicitWidth = 808
    ExplicitHeight = 364
    ClientRectBottom = 179
    ClientRectRight = 611
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 607
      ExplicitHeight = 169
      object Label1: TLabel
        Left = 37
        Top = 29
        Width = 97
        Height = 13
        Caption = 'Descripci'#243'n paquete'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 37
        Top = 93
        Width = 88
        Height = 13
        Caption = 'Ponderaci'#243'n extra'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 37
        Top = 48
        DataBinding.DataField = 'DescripcionPaquete'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 529
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 37
        Top = 112
        DataBinding.DataField = 'Ponderacion_Extra'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 183
    Width = 615
    ExplicitTop = 364
    ExplicitWidth = 808
    inherited btnCancel: TButton
      Left = 533
      ExplicitLeft = 726
    end
    inherited btnOk: TButton
      Left = 452
      ExplicitLeft = 645
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
