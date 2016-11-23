inherited frmAnexosSegmentosEdit: TfrmAnexosSegmentosEdit
  Caption = 'frmAnexosSegmentosEdit'
  ClientHeight = 271
  ExplicitWidth = 444
  ExplicitHeight = 300
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 230
    ExplicitHeight = 230
    ClientRectBottom = 228
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 200
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 48
        Height = 13
        Caption = 'Segmento'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 192
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Valor presente'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 24
        Top = 56
        Width = 52
        Height = 13
        Caption = 'Tasa anual'
        FocusControl = cxDBCalcEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 96
        Width = 64
        Height = 13
        Caption = 'Periodo inicial'
        FocusControl = cxDBSpinEdit2
      end
      object Label5: TLabel
        Left = 24
        Top = 136
        Width = 59
        Height = 13
        Caption = 'Periodo final'
        FocusControl = cxDBSpinEdit3
      end
      object Label6: TLabel
        Left = 192
        Top = 56
        Width = 66
        Height = 13
        Caption = 'Pago mensual'
        FocusControl = cxDBTextEdit2
      end
      object Label7: TLabel
        Left = 192
        Top = 96
        Width = 57
        Height = 13
        Caption = 'Valor futuro'
        FocusControl = cxDBTextEdit3
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Segmento'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 192
        Top = 32
        DataBinding.DataField = 'ValorPresente'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 121
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'TasaAnual'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'PeriodoInicial'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 24
        Top = 152
        DataBinding.DataField = 'PeriodoFinal'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 192
        Top = 72
        DataBinding.DataField = 'PagoMensual'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 192
        Top = 112
        DataBinding.DataField = 'ValorFuturo'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 6
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 230
    ExplicitTop = 230
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
