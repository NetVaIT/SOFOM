inherited frmPLDAlertasEdit: TfrmPLDAlertasEdit
  Caption = 'frmPLDAlertasEdit'
  ClientHeight = 412
  ClientWidth = 435
  ExplicitWidth = 441
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 435
    Height = 371
    ExplicitWidth = 435
    ExplicitHeight = 506
    ClientRectBottom = 369
    ClientRectRight = 433
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 28
      ExplicitWidth = 431
      ExplicitHeight = 538
      object Label1: TLabel
        Left = 16
        Top = 5
        Width = 93
        Height = 13
        Caption = 'Fecha de detecci'#243'n'
        FocusControl = cxDBDateEdit1
      end
      object Label8: TLabel
        Left = 16
        Top = 80
        Width = 85
        Height = 13
        Caption = 'Tipo de operaci'#243'n'
        FocusControl = DBLookupComboBox1
      end
      object Label9: TLabel
        Left = 16
        Top = 40
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object Label10: TLabel
        Left = 16
        Top = 120
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox3
      end
      object Label11: TLabel
        Left = 16
        Top = 160
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label12: TLabel
        Left = 16
        Top = 240
        Width = 30
        Height = 13
        Caption = 'Raz'#243'n'
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 21
        DataBinding.DataField = 'FechaDeteccion'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 96
        Width = 400
        Height = 21
        DataField = 'OperacionTipo'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 56
        Width = 400
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        Enabled = False
        TabOrder = 2
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 16
        Top = 136
        Width = 400
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 16
        Top = 320
        Caption = 'R24'
        DataBinding.DataField = 'R24'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 0
        Visible = False
        Width = 121
      end
      object cxDBMemo1: TcxDBMemo
        Left = 16
        Top = 176
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Height = 58
        Width = 400
      end
      object cxDBMemo2: TcxDBMemo
        Left = 16
        Top = 256
        DataBinding.DataField = 'Razon'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Height = 58
        Width = 400
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cliente'
      ImageIndex = 1
      ExplicitHeight = 538
      object Label2: TLabel
        Left = 16
        Top = 88
        Width = 68
        Height = 13
        Caption = 'Fechade pago'
        FocusControl = cxDBDateEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = cxDBTextEdit1
      end
      object Label6: TLabel
        Left = 144
        Top = 88
        Width = 78
        Height = 13
        Caption = 'Metodo de pago'
        FocusControl = cxDBTextEdit3
      end
      object Label13: TLabel
        Left = 16
        Top = 48
        Width = 43
        Height = 13
        Caption = 'Contrato'
        FocusControl = cxDBTextEdit5
      end
      object Label14: TLabel
        Left = 143
        Top = 48
        Width = 58
        Height = 13
        Caption = 'Periodo mes'
        FocusControl = cxDBSpinEdit1
      end
      object Label15: TLabel
        Left = 229
        Top = 48
        Width = 57
        Height = 13
        Caption = 'Periodo a'#241'o'
        FocusControl = cxDBSpinEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 128
        Width = 24
        Height = 13
        Caption = 'Total'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 151
        Top = 128
        Width = 47
        Height = 13
        Caption = 'Total USD'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 295
        Top = 128
        Width = 71
        Height = 13
        Caption = 'Total de pagos'
        FocusControl = cxDBSpinEdit3
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'FechaPago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'Cliente'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 400
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 144
        Top = 104
        DataBinding.DataField = 'MetodoPago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 2
        Width = 140
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'Contrato'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 143
        Top = 64
        DataBinding.DataField = 'PeriodoMes'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 4
        Width = 80
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 229
        Top = 64
        DataBinding.DataField = 'PeriodoAnio'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 5
        Width = 80
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 326
        Top = 63
        Caption = 'Solo efectivo'
        DataBinding.DataField = 'SoloEfectivo'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 6
        Width = 90
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 144
        DataBinding.DataField = 'Total'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 7
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 151
        Top = 144
        DataBinding.DataField = 'TotalUSD'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 8
        Width = 121
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 295
        Top = 144
        DataBinding.DataField = 'TotalPagos'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 9
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 371
    Width = 435
    ExplicitTop = 506
    ExplicitWidth = 435
    inherited btnCancel: TButton
      Left = 353
      ExplicitLeft = 353
    end
    inherited btnOk: TButton
      Left = 272
      ExplicitLeft = 272
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
