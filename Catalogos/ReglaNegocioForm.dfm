inherited frmReglaNegocio: TfrmReglaNegocio
  Caption = 'Regla de Negocio'
  ClientHeight = 230
  ClientWidth = 436
  ExplicitWidth = 442
  ExplicitHeight = 258
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 436
    Height = 189
    ClientRectBottom = 187
    ClientRectRight = 434
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 121
        Height = 13
        Caption = 'Tipo de Regla de Negocio'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 85
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 401
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 111
        DataBinding.DataField = 'ReglaNegocioTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 233
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 189
    Width = 436
    inherited btnOk: TButton
      Left = 273
    end
    inherited btnCancel: TButton
      Left = 354
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
