inherited frmAnexosEdit: TfrmAnexosEdit
  Caption = 'frmAnexosEdit'
  ClientHeight = 612
  ClientWidth = 719
  OnDestroy = FormDestroy
  ExplicitWidth = 725
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 719
    Height = 571
    ExplicitWidth = 719
    ExplicitHeight = 571
    ClientRectBottom = 569
    ClientRectRight = 717
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 715
      ExplicitHeight = 541
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = -1
        Caption = ' '
        TabOrder = 0
        Height = 218
        Width = 706
        object Label1: TLabel
          Left = 117
          Top = 19
          Width = 61
          Height = 13
          Caption = 'Identificador'
          FocusControl = cxDBTextEdit1
        end
        object Label2: TLabel
          Left = 135
          Top = 46
          Width = 43
          Height = 13
          Caption = 'Producto'
          FocusControl = cxDBTextEdit2
        end
        object Label3: TLabel
          Left = 312
          Top = 19
          Width = 29
          Height = 13
          Caption = 'Fecha'
          FocusControl = cxDBDateEdit1
        end
        object Label4: TLabel
          Left = 149
          Top = 73
          Width = 29
          Height = 13
          Caption = 'Precio'
          FocusControl = cxDBTextEdit3
        end
        object Label6: TLabel
          Left = 107
          Top = 100
          Width = 71
          Height = 13
          Caption = 'Tipo de cambio'
          FocusControl = cxDBTextEdit4
        end
        object Label7: TLabel
          Left = 84
          Top = 127
          Width = 94
          Height = 13
          Caption = 'Precio moneda local'
          FocusControl = cxDBTextEdit5
        end
        object Label8: TLabel
          Left = 161
          Top = 153
          Width = 17
          Height = 13
          Caption = 'IVA'
          FocusControl = cxDBTextEdit6
        end
        object Label9: TLabel
          Left = 124
          Top = 180
          Width = 54
          Height = 13
          Caption = 'Precio total'
          FocusControl = cxDBTextEdit7
        end
        object Label10: TLabel
          Left = 498
          Top = 20
          Width = 36
          Height = 13
          Caption = 'Estatus'
          FocusControl = DBLookupComboBox2
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'Identificador'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'Descripcion'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 480
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 347
          Top = 16
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 184
          Top = 70
          DataBinding.DataField = 'PrecioMoneda'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 311
          Top = 70
          Width = 150
          Height = 21
          DataField = 'Moneda'
          DataSource = DataSource
          TabOrder = 5
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 184
          Top = 97
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 184
          Top = 124
          DataBinding.DataField = 'Precio'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 184
          Top = 150
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 184
          Top = 177
          DataBinding.DataField = 'PrecioTotal'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 9
          Width = 121
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 540
          Top = 16
          Width = 121
          Height = 21
          DataField = 'Estatus'
          DataSource = DataSource
          TabOrder = 2
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 3
        Top = 223
        Caption = 'Opci'#243'n de compra'
        TabOrder = 1
        Height = 83
        Width = 350
        object Label17: TLabel
          Left = 39
          Top = 19
          Width = 139
          Height = 13
          Caption = 'Porcentaje opci'#243'n de compra'
          FocusControl = cxDBTextEdit17
        end
        object Label25: TLabel
          Left = 92
          Top = 46
          Width = 86
          Height = 13
          Caption = 'Opci'#243'n de compra'
          FocusControl = cxDBTextEdit18
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'OpcionCompraPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'OpcionCompra'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 359
        Top = 223
        Caption = 'Valor residual'
        TabOrder = 2
        Height = 83
        Width = 350
        object Label26: TLabel
          Left = 59
          Top = 21
          Width = 119
          Height = 13
          Caption = 'Porcentaje valor residual'
          FocusControl = cxDBTextEdit19
        end
        object Label27: TLabel
          Left = 114
          Top = 48
          Width = 64
          Height = 13
          Caption = 'Valor residual'
          FocusControl = cxDBTextEdit20
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 184
          Top = 18
          DataBinding.DataField = 'ValorResidualPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 184
          Top = 45
          DataBinding.DataField = 'ValorResidual'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 312
        Caption = 'Pagos iniciales'
        TabOrder = 3
        Height = 218
        Width = 350
        object Label11: TLabel
          Left = 65
          Top = 19
          Width = 47
          Height = 13
          Caption = 'Enganche'
          FocusControl = cxDBTextEdit8
        end
        object Label13: TLabel
          Left = 70
          Top = 46
          Width = 42
          Height = 13
          Caption = 'Comisi'#243'n'
          FocusControl = cxDBTextEdit9
        end
        object Label14: TLabel
          Left = 103
          Top = 73
          Width = 75
          Height = 13
          Caption = 'IVA de comisi'#243'n'
          FocusControl = cxDBTextEdit10
        end
        object Label15: TLabel
          Left = 59
          Top = 100
          Width = 119
          Height = 13
          Caption = 'Gastos de administraci'#243'n'
          FocusControl = cxDBTextEdit11
        end
        object Label16: TLabel
          Left = 111
          Top = 127
          Width = 67
          Height = 13
          Caption = 'IVA de gastos'
          FocusControl = cxDBTextEdit12
        end
        object Label18: TLabel
          Left = 17
          Top = 153
          Width = 100
          Height = 13
          Caption = 'Dep'#243'sito en garantia'
          FocusControl = cxDBTextEdit13
        end
        object Label19: TLabel
          Left = 97
          Top = 180
          Width = 79
          Height = 13
          Caption = 'Total pago inicial'
          FocusControl = cxDBTextEdit14
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 118
          Top = 16
          DataBinding.DataField = 'EnganchePorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 60
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'Enganche'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 118
          Top = 43
          DataBinding.DataField = 'ComisionPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 60
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'Comision'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 184
          Top = 70
          DataBinding.DataField = 'ComisionImpuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 184
          Top = 97
          DataBinding.DataField = 'Gastos'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 184
          Top = 124
          DataBinding.DataField = 'GastosImpuestos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 118
          Top = 150
          DataBinding.DataField = 'DespositosNumero'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 60
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 184
          Top = 150
          DataBinding.DataField = 'Depositos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 184
          Top = 177
          DataBinding.DataField = 'PagoIncial'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 9
          Width = 121
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 359
        Top = 312
        Caption = 'Pagos mensuales'
        TabOrder = 4
        Height = 218
        Width = 350
        object Label20: TLabel
          Left = 95
          Top = 19
          Width = 83
          Height = 13
          Caption = 'Monto a financiar'
          FocusControl = cxDBTextEdit15
        end
        object Label21: TLabel
          Left = 126
          Top = 73
          Width = 52
          Height = 13
          Caption = 'Tasa anual'
          FocusControl = cxDBCurrencyEdit3
        end
        object Label22: TLabel
          Left = 153
          Top = 100
          Width = 25
          Height = 13
          Caption = 'Plazo'
          FocusControl = cxDBSpinEdit2
        end
        object Label23: TLabel
          Left = 112
          Top = 127
          Width = 66
          Height = 13
          Caption = 'Pago mensual'
          FocusControl = cxDBTextEdit16
        end
        object Label24: TLabel
          Left = 89
          Top = 153
          Width = 89
          Height = 13
          Caption = 'Fecha vencimiento'
          FocusControl = cxDBDateEdit2
        end
        object Label5: TLabel
          Left = 106
          Top = 180
          Width = 72
          Height = 13
          Caption = 'Fecha de corte'
          FocusControl = cxDBDateEdit3
        end
        object Label29: TLabel
          Left = 119
          Top = 46
          Width = 59
          Height = 13
          Caption = 'Impacto ISR'
          FocusControl = cxDBTextEdit21
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'MontoFinanciar'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 184
          Top = 70
          DataBinding.DataField = 'TasaAnual'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 184
          Top = 97
          DataBinding.DataField = 'Plazo'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 184
          Top = 124
          DataBinding.DataField = 'PagoMensual'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 184
          Top = 150
          DataBinding.DataField = 'FechaVencimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 184
          Top = 177
          DataBinding.DataField = 'FechaCorte'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 184
          Top = 43
          DataBinding.DataField = 'ImpactoISR'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
      end
    end
    object tsSegmentos: TcxTabSheet
      Caption = 'Segmentos'
      ImageIndex = 2
      TabVisible = False
    end
    object tsProductos: TcxTabSheet
      Caption = 'Productos'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 571
    Width = 719
    ExplicitTop = 571
    ExplicitWidth = 719
    inherited btnCancel: TButton
      Left = 637
      ExplicitLeft = 637
    end
    inherited btnOk: TButton
      Left = 556
      ExplicitLeft = 556
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
