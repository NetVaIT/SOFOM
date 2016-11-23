inherited frmBateriaCapacitacionCurso: TfrmBateriaCapacitacionCurso
  Caption = 'Capacitacion Curso'
  ClientHeight = 230
  ClientWidth = 569
  ExplicitWidth = 575
  ExplicitHeight = 258
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 569
    Height = 189
    ExplicitWidth = 569
    ExplicitHeight = 228
    ClientRectBottom = 187
    ClientRectRight = 567
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 565
      ExplicitHeight = 198
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 104
        Width = 70
        Height = 13
        Caption = 'ValorCurricular'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 529
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 16
        Top = 120
        DataBinding.DataField = 'ValorCurricular'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 189
    Width = 569
    ExplicitTop = 228
    ExplicitWidth = 569
    inherited btnOk: TButton
      Left = 406
      ExplicitLeft = 406
    end
    inherited btnCancel: TButton
      Left = 487
      ExplicitLeft = 487
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
