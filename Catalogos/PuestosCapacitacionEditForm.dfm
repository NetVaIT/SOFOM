inherited frmPuestosCapacitacionEdit: TfrmPuestosCapacitacionEdit
  Caption = 'Seleccion de la capacitaci'#243'n'
  ClientHeight = 163
  ClientWidth = 550
  ExplicitWidth = 556
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 550
    Height = 122
    ExplicitWidth = 550
    ExplicitHeight = 122
    ClientRectBottom = 120
    ClientRectRight = 548
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 546
      ExplicitHeight = 92
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 111
        Height = 13
        Caption = 'Bateria de capacitaci'#243'n'
        FocusControl = cxDBLookupComboBox1
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 40
        DataBinding.DataField = 'BateriaCapacitacion'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 122
    Width = 550
    ExplicitTop = 122
    ExplicitWidth = 550
    inherited btnOk: TButton
      Left = 387
      ExplicitLeft = 387
    end
    inherited btnCancel: TButton
      Left = 468
      ExplicitLeft = 468
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
