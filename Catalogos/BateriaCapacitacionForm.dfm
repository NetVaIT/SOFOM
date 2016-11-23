inherited frmBateriaCapacitacion: TfrmBateriaCapacitacion
  Caption = 'Bateria de Capacitacion'
  ClientHeight = 228
  ClientWidth = 469
  ExplicitWidth = 475
  ExplicitHeight = 256
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 469
    Height = 187
    ExplicitWidth = 469
    ExplicitHeight = 224
    ClientRectBottom = 185
    ClientRectRight = 467
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 465
      ExplicitHeight = 194
      object Label2: TLabel
        Left = 16
        Top = 18
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 58
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 98
        Width = 59
        Height = 13
        Caption = 'Ponderacion'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 34
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 74
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 433
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 114
        DataBinding.DataField = 'Ponderacion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 187
    Width = 469
    ExplicitTop = 224
    ExplicitWidth = 469
    inherited btnOk: TButton
      Left = 306
      ExplicitLeft = 306
    end
    inherited btnCancel: TButton
      Left = 387
      ExplicitLeft = 387
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
