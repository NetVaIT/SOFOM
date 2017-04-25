inherited frmCotizacionesDetalleEdit: TfrmCotizacionesDetalleEdit
  Caption = 'Cotizaci'#243'n'
  ClientHeight = 606
  ClientWidth = 683
  ExplicitWidth = 689
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 683
    Height = 565
    ExplicitWidth = 727
    ExplicitHeight = 563
    ClientRectBottom = 563
    ClientRectRight = 681
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 30
      ExplicitWidth = 733
      ExplicitHeight = 686
      object cxGroupBox1: TcxGroupBox
        Left = 14
        Top = -3
        Caption = 'Precio'
        TabOrder = 0
        Height = 162
        Width = 651
        object Label4: TLabel
          Left = 149
          Top = 19
          Width = 29
          Height = 13
          Caption = 'Precio'
          FocusControl = edtPrecio
        end
        object Label6: TLabel
          Left = 107
          Top = 44
          Width = 71
          Height = 13
          Caption = 'Tipo de cambio'
        end
        object Label7: TLabel
          Left = 84
          Top = 69
          Width = 94
          Height = 13
          Caption = 'Precio moneda local'
          FocusControl = cxDBTextEdit5
        end
        object Label8: TLabel
          Left = 161
          Top = 95
          Width = 17
          Height = 13
          Caption = 'IVA'
          FocusControl = cxDBTextEdit6
        end
        object Label9: TLabel
          Left = 124
          Top = 123
          Width = 54
          Height = 13
          Caption = 'Precio total'
          FocusControl = cxDBTextEdit7
        end
        object Label28: TLabel
          Left = 469
          Top = 95
          Width = 40
          Height = 13
          Caption = 'Registro'
          FocusControl = cxDBDateEdit4
        end
        object Label31: TLabel
          Left = 473
          Top = 120
          Width = 36
          Height = 13
          Caption = 'Usuario'
        end
        object Label30: TLabel
          Left = 473
          Top = 69
          Width = 36
          Height = 13
          Caption = 'Estatus'
          FocusControl = DBLookupComboBox2
        end
        object edtPrecio: TcxDBTextEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'PrecioMoneda'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 312
          Top = 16
          Width = 121
          Height = 21
          DataField = 'Moneda'
          DataSource = DataSource
          TabOrder = 2
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 184
          Top = 66
          DataBinding.DataField = 'Precio'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 184
          Top = 92
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 184
          Top = 117
          DataBinding.DataField = 'PrecioTotal'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 515
          Top = 92
          DataBinding.DataField = 'Registro'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 515
          Top = 117
          DataBinding.DataField = 'Usuario'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 7
          Width = 121
        end
        object edtTipoCambio: TcxDBButtonEdit
          Left = 184
          Top = 41
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = DataSource
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 3
          Width = 121
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 515
          Top = 66
          Width = 121
          Height = 21
          DataField = 'Estatus'
          DataSource = DataSource
          Enabled = False
          TabOrder = 8
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 14
        Top = 365
        Caption = 'Opci'#243'n de compra'
        TabOrder = 2
        Height = 75
        Width = 325
        object Label17: TLabel
          Left = 39
          Top = 16
          Width = 139
          Height = 13
          Caption = 'Porcentaje opci'#243'n de compra'
          FocusControl = cxDBTextEdit17
        end
        object Label25: TLabel
          Left = 92
          Top = 40
          Width = 86
          Height = 13
          Caption = 'Opci'#243'n de compra'
          FocusControl = cxDBTextEdit18
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 184
          Top = 13
          DataBinding.DataField = 'OpcionCompraPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 184
          Top = 37
          DataBinding.DataField = 'OpcionCompra'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 14
        Top = 446
        Caption = 'Valor residual'
        TabOrder = 3
        Height = 75
        Width = 325
        object Label26: TLabel
          Left = 59
          Top = 16
          Width = 119
          Height = 13
          Caption = 'Porcentaje valor residual'
          FocusControl = cxDBTextEdit19
        end
        object Label27: TLabel
          Left = 114
          Top = 39
          Width = 64
          Height = 13
          Caption = 'Valor residual'
          FocusControl = cxDBTextEdit20
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 184
          Top = 13
          DataBinding.DataField = 'ValorResidualPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 184
          Top = 36
          DataBinding.DataField = 'ValorResidual'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 14
        Top = 165
        Caption = 'Pagos iniciales'
        TabOrder = 1
        Height = 194
        Width = 325
        object Label11: TLabel
          Left = 64
          Top = 19
          Width = 47
          Height = 13
          Caption = 'Enganche'
          FocusControl = cxDBTextEdit8
        end
        object Label13: TLabel
          Left = 69
          Top = 43
          Width = 42
          Height = 13
          Caption = 'Comisi'#243'n'
          FocusControl = cxDBTextEdit9
        end
        object Label14: TLabel
          Left = 105
          Top = 67
          Width = 75
          Height = 13
          Caption = 'IVA de comisi'#243'n'
          FocusControl = cxDBTextEdit10
        end
        object Label15: TLabel
          Left = 61
          Top = 91
          Width = 119
          Height = 13
          Caption = 'Gastos de administraci'#243'n'
          FocusControl = cxDBTextEdit11
        end
        object Label16: TLabel
          Left = 113
          Top = 115
          Width = 67
          Height = 13
          Caption = 'IVA de gastos'
          FocusControl = cxDBTextEdit12
        end
        object Label18: TLabel
          Left = 11
          Top = 137
          Width = 100
          Height = 13
          Caption = 'Dep'#243'sito en garantia'
          FocusControl = cxDBTextEdit13
        end
        object Label19: TLabel
          Left = 101
          Top = 161
          Width = 79
          Height = 13
          Caption = 'Total pago inicial'
          FocusControl = cxDBTextEdit14
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 120
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
          Left = 120
          Top = 40
          DataBinding.DataField = 'ComisionPorcentaje'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 60
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 184
          Top = 40
          DataBinding.DataField = 'Comision'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 184
          Top = 64
          DataBinding.DataField = 'ComisionImpuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 184
          Top = 88
          DataBinding.DataField = 'Gastos'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 184
          Top = 112
          DataBinding.DataField = 'GastosImpuestos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 120
          Top = 134
          DataBinding.DataField = 'DespositosNumero'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 60
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 184
          Top = 134
          DataBinding.DataField = 'Depositos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 184
          Top = 158
          DataBinding.DataField = 'PagoIncial'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 9
          Width = 121
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 345
        Top = 165
        Caption = 'Pagos mensuales'
        TabOrder = 4
        Height = 194
        Width = 320
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
          Top = 43
          Width = 52
          Height = 13
          Caption = 'Tasa anual'
          FocusControl = cxDBCurrencyEdit3
        end
        object Label22: TLabel
          Left = 153
          Top = 67
          Width = 25
          Height = 13
          Caption = 'Plazo'
          FocusControl = cxDBSpinEdit2
        end
        object Label23: TLabel
          Left = 112
          Top = 91
          Width = 66
          Height = 13
          Caption = 'Pago mensual'
          FocusControl = cxDBTextEdit16
        end
        object Label10: TLabel
          Left = 161
          Top = 115
          Width = 17
          Height = 13
          Caption = 'TIR'
          FocusControl = cxDBCurrencyEdit7
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
          Top = 40
          DataBinding.DataField = 'TasaAnual'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 184
          Top = 64
          DataBinding.DataField = 'Plazo'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 184
          Top = 88
          DataBinding.DataField = 'PagoMensual'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 3
          Width = 121
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 184
          Top = 112
          DataBinding.DataField = 'TIR'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 345
        Top = 365
        Caption = 'Impacto ISR'
        TabOrder = 5
        Height = 156
        Width = 320
        object Label29: TLabel
          Left = 119
          Top = 117
          Width = 59
          Height = 13
          Caption = 'Impacto ISR'
        end
        object Label1: TLabel
          Left = 89
          Top = 19
          Width = 89
          Height = 13
          Caption = 'Fecha vencimiento'
          FocusControl = cxDBDateEdit1
        end
        object Label2: TLabel
          Left = 63
          Top = 43
          Width = 115
          Height = 13
          Caption = 'Porcentaje depreciaci'#243'n'
          FocusControl = cxDBCurrencyEdit4
        end
        object Label3: TLabel
          Left = 106
          Top = 68
          Width = 72
          Height = 13
          Caption = 'Porcentaje ISR'
          FocusControl = cxDBCurrencyEdit5
        end
        object Label5: TLabel
          Left = 111
          Top = 92
          Width = 67
          Height = 13
          Caption = 'Porcentaje Ke'
          FocusControl = cxDBCurrencyEdit6
        end
        object edtImpactoISR: TcxDBButtonEdit
          Left = 184
          Top = 114
          DataBinding.DataField = 'ImpactoISR'
          DataBinding.DataSource = DataSource
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 184
          Top = 16
          DataBinding.DataField = 'FechaVencimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 184
          Top = 40
          DataBinding.DataField = 'PorcentajeDepreciacion'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 184
          Top = 65
          DataBinding.DataField = 'PorcentajeISR'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBCurrencyEdit6: TcxDBCurrencyEdit
          Left = 184
          Top = 89
          DataBinding.DataField = 'PorcentajeKE'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 565
    Width = 683
    ExplicitTop = 563
    ExplicitWidth = 727
    inherited btnCancel: TButton
      Left = 601
      ExplicitLeft = 645
    end
    inherited btnOk: TButton
      Left = 520
      ExplicitLeft = 564
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCotizaciones.adodsDetalle
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
