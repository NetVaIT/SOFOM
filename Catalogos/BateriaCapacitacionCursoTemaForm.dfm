inherited frmBateriaCapacitacionCursosTema: TfrmBateriaCapacitacionCursosTema
  Caption = 'Bateria de Capacitacion - Cursos - Tema'
  ClientHeight = 223
  ClientWidth = 718
  ExplicitWidth = 724
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 718
    Height = 182
    ExplicitWidth = 718
    ExplicitHeight = 233
    ClientRectBottom = 180
    ClientRectRight = 716
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 714
      ExplicitHeight = 203
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 59
        Height = 13
        Caption = 'Ponderacion'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 681
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Ponderacion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 182
    Width = 718
    ExplicitTop = 233
    ExplicitWidth = 718
    inherited btnOk: TButton
      Left = 555
      ExplicitLeft = 555
    end
    inherited btnCancel: TButton
      Left = 636
      ExplicitLeft = 636
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
