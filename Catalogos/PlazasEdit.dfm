inherited frmPlazasEdit: TfrmPlazasEdit
  Caption = 'Plaza'
  ClientHeight = 437
  ClientWidth = 515
  ExplicitWidth = 521
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 515
    Height = 396
    ExplicitWidth = 446
    ExplicitHeight = 396
    ClientRectBottom = 394
    ClientRectRight = 513
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 442
      ExplicitHeight = 366
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
        Width = 58
        Height = 13
        Caption = 'Salario base'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 176
        Width = 33
        Height = 13
        Caption = 'Turnos'
        FocusControl = cxDBLookupComboBox2
      end
      object Label5: TLabel
        Left = 24
        Top = 216
        Width = 45
        Height = 13
        Caption = 'Ubicacion'
        FocusControl = cxDBLookupComboBox3
      end
      object Label6: TLabel
        Left = 24
        Top = 256
        Width = 64
        Height = 13
        Caption = 'Temporalidad'
        FocusControl = cxDBLookupComboBox4
      end
      object Label7: TLabel
        Left = 24
        Top = 299
        Width = 72
        Height = 13
        Caption = 'Fecha creaci'#243'n'
        FocusControl = cxDBDateEdit1
      end
      object Label8: TLabel
        Left = 24
        Top = 136
        Width = 46
        Height = 13
        Caption = 'Empleado'
        FocusControl = cxDBLookupComboBox1
      end
      object Label9: TLabel
        Left = 179
        Top = 299
        Width = 26
        Height = 13
        Caption = 'Clase'
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
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'SalarioBase'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 152
        DataBinding.DataField = 'Empleado'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 400
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 192
        DataBinding.DataField = 'Turnos'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 300
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 24
        Top = 232
        DataBinding.DataField = 'Ubicacion'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 5
        Width = 300
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 24
        Top = 272
        DataBinding.DataField = 'Temporalidad'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        Width = 300
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 315
        DataBinding.DataField = 'FechaCreacion'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object cxDBLookupComboBox5: TcxDBLookupComboBox
        Left = 179
        Top = 315
        DataBinding.DataField = 'PlazaClase'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 8
        Width = 145
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 396
    Width = 515
    ExplicitTop = 396
    ExplicitWidth = 446
    inherited btnOk: TButton
      Left = 352
      ExplicitLeft = 283
    end
    inherited btnCancel: TButton
      Left = 433
      ExplicitLeft = 364
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
