inherited frmPlaza: TfrmPlaza
  Caption = 'Plaza'
  ClientHeight = 388
  ClientWidth = 534
  ExplicitWidth = 540
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 534
    Height = 347
    ClientRectBottom = 345
    ClientRectRight = 532
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 24
        Top = 96
        Width = 58
        Height = 13
        Caption = 'Salario Base'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 136
        Width = 143
        Height = 13
        Caption = 'Fecha de Creacion de la Plaza'
      end
      object Label3: TLabel
        Left = 24
        Top = 176
        Width = 82
        Height = 13
        Caption = 'Turno de la Plaza'
      end
      object Label4: TLabel
        Left = 24
        Top = 216
        Width = 45
        Height = 13
        Caption = 'Ubicacion'
      end
      object Label5: TLabel
        Left = 24
        Top = 256
        Width = 118
        Height = 13
        Caption = 'Temporalidad de la Plaza'
      end
      object Label6: TLabel
        Left = 24
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit2
      end
      object Label7: TLabel
        Left = 24
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit3
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'SalarioBase'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 96
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 96
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 481
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 191
        DataBinding.DataField = 'PlazaTurno'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 145
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 231
        DataBinding.DataField = 'Ubicacion'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 297
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 23
        Top = 271
        DataBinding.DataField = 'PlazaTemporalidadTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 5
        Width = 274
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 150
        DataBinding.DataField = 'FechaCreacionPlaza'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 143
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 347
    Width = 534
    inherited btnOk: TButton
      Left = 371
    end
    inherited btnCancel: TButton
      Left = 452
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
