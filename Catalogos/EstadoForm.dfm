inherited frmEstado: TfrmEstado
  Caption = 'Estado'
  ClientHeight = 237
  ClientWidth = 350
  ExplicitWidth = 356
  ExplicitHeight = 266
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 350
    Height = 196
    ExplicitWidth = 350
    ExplicitHeight = 168
    ClientRectBottom = 194
    ClientRectRight = 348
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 346
      ExplicitHeight = 140
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
        Top = 112
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
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 128
        DataBinding.DataField = 'BCCodigo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 196
    Width = 350
    ExplicitTop = 168
    ExplicitWidth = 350
    inherited btnCancel: TButton
      Left = 268
      ExplicitLeft = 268
    end
    inherited btnOk: TButton
      Left = 187
      ExplicitLeft = 187
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
