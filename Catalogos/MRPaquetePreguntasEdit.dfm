inherited frmPaquetePreguntasEdit: TfrmPaquetePreguntasEdit
  Caption = 'Edici'#243'n Paquetes de Preguntas'
  ClientHeight = 405
  ClientWidth = 808
  ExplicitWidth = 814
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 808
    Height = 364
    ExplicitWidth = 808
    ExplicitHeight = 364
    ClientRectBottom = 360
    ClientRectRight = 804
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 800
      ExplicitHeight = 336
      object Label1: TLabel
        Left = 43
        Top = 38
        Width = 97
        Height = 13
        Caption = 'Descripci'#243'n Paquete'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 43
        Top = 102
        Width = 91
        Height = 13
        Caption = 'Ponderacion_Extra'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 43
        Top = 57
        DataBinding.DataField = 'DescripcionPaquete'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 529
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 43
        Top = 121
        DataBinding.DataField = 'Ponderacion_Extra'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 364
    Width = 808
    ExplicitTop = 364
    ExplicitWidth = 808
    inherited btnCancel: TButton
      Left = 726
      ExplicitLeft = 726
    end
    inherited btnOk: TButton
      Left = 645
      ExplicitLeft = 645
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
