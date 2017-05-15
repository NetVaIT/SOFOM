inherited frmMonedasCotizacionesEdit: TfrmMonedasCotizacionesEdit
  Caption = 'frmMonedasCotizacionesEdit'
  ClientHeight = 214
  ClientWidth = 345
  ExplicitWidth = 351
  ExplicitHeight = 243
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 345
    Height = 173
    ClientRectBottom = 171
    ClientRectRight = 343
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 48
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox1
      end
      object Label3: TLabel
        Left = 24
        Top = 88
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit1
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 24
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 64
        Width = 300
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 104
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 173
    Width = 345
    inherited btnCancel: TButton
      Left = 263
    end
    inherited btnOk: TButton
      Left = 182
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
