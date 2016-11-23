inherited frmDepartamento: TfrmDepartamento
  Caption = 'Departamento'
  ClientHeight = 189
  ClientWidth = 367
  ExplicitWidth = 373
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 367
    Height = 148
    ExplicitWidth = 367
    ExplicitHeight = 184
    ClientRectBottom = 146
    ClientRectRight = 365
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 363
      ExplicitHeight = 154
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 89
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 313
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 148
    Width = 367
    ExplicitTop = 184
    ExplicitWidth = 367
    inherited btnOk: TButton
      Left = 204
      ExplicitLeft = 204
    end
    inherited btnCancel: TButton
      Left = 285
      ExplicitLeft = 285
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
