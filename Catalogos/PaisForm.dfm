inherited frmPais: TfrmPais
  Caption = 'Pais'
  ClientHeight = 270
  ClientWidth = 358
  ExplicitWidth = 364
  ExplicitHeight = 299
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 358
    Height = 229
    ExplicitWidth = 358
    ExplicitHeight = 171
    ClientRectBottom = 227
    ClientRectRight = 356
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 354
      ExplicitHeight = 143
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 49
        Height = 13
        Caption = 'C'#243'digo BC'
        FocusControl = cxDBTextEdit3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 300
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 168
        Caption = 'Lista GAFI'
        DataBinding.DataField = 'ListaGAFI'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 153
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 144
        Caption = 'R'#233'gimen fiscal preferente'
        DataBinding.DataField = 'RegimenFiscalPreferente'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 153
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 120
        DataBinding.DataField = 'BCCodigo'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 153
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 229
    Width = 358
    ExplicitTop = 171
    ExplicitWidth = 358
    inherited btnCancel: TButton
      Left = 276
      ExplicitLeft = 276
    end
    inherited btnOk: TButton
      Left = 195
      ExplicitLeft = 195
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
