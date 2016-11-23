inherited frmPrestamosEdit: TfrmPrestamosEdit
  Caption = 'Prestamo'
  ClientHeight = 314
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 393
    Height = 273
    ClientRectBottom = 271
    ClientRectRight = 391
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Persona'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 32
        Top = 56
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 32
        Top = 96
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 32
        Top = 136
        Width = 52
        Height = 13
        Caption = 'Porcentaje'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 32
        Top = 176
        Width = 26
        Height = 13
        Caption = 'Saldo'
        FocusControl = cxDBTextEdit3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 32
        Width = 300
        Height = 21
        DataField = 'Persona'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 32
        Top = 72
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 112
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 152
        DataBinding.DataField = 'Porcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 32
        Top = 192
        DataBinding.DataField = 'Saldo'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 4
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 273
    Width = 393
    inherited btnCancel: TButton
      Left = 311
    end
    inherited btnOk: TButton
      Left = 230
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
