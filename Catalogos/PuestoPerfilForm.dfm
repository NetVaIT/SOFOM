inherited frmPuestoPerfil: TfrmPuestoPerfil
  Caption = 'Perfil'
  ClientHeight = 261
  ClientWidth = 369
  ExplicitWidth = 375
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 369
    Height = 220
    ExplicitWidth = 369
    ExplicitHeight = 270
    ClientRectBottom = 218
    ClientRectRight = 367
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 18
      ExplicitTop = 52
      ExplicitWidth = 365
      ExplicitHeight = 240
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
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 47
        Height = 13
        Caption = 'Categoria'
        FocusControl = DBLookupComboBox1
      end
      object Label4: TLabel
        Left = 24
        Top = 136
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 300
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 112
        Width = 300
        Height = 21
        DataField = 'PerfilCategoria'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 152
        DataBinding.DataField = 'Valor'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 220
    Width = 369
    ExplicitTop = 270
    ExplicitWidth = 369
    inherited btnOk: TButton
      Left = 206
      ExplicitLeft = 206
    end
    inherited btnCancel: TButton
      Left = 287
      ExplicitLeft = 287
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
