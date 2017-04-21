inherited frmCotizacionesDetalleEdit: TfrmCotizacionesDetalleEdit
  Caption = 'Cotizaci'#243'n'
  ClientHeight = 604
  ClientWidth = 727
  ExplicitWidth = 733
  ExplicitHeight = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 727
    Height = 563
    ExplicitWidth = 736
    ExplicitHeight = 527
    ClientRectBottom = 561
    ClientRectRight = 725
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 30
      ExplicitWidth = 732
      ExplicitHeight = 568
      object cxGroupBox1: TcxGroupBox
        Left = 6
        Top = -1
        Caption = ' '
        TabOrder = 0
        Height = 162
        Width = 706
        object Label4: TLabel
          Left = 146
          Top = 18
          Width = 29
          Height = 13
          Caption = 'Precio'
          FocusControl = edtPrecio
        end
        object Label6: TLabel
          Left = 104
          Top = 45
          Width = 71
          Height = 13
          Caption = 'Tipo de cambio'
        end
        object Label7: TLabel
          Left = 81
          Top = 72
          Width = 94
          Height = 13
          Caption = 'Precio moneda local'
          FocusControl = cxDBTextEdit5
        end
        object Label8: TLabel
          Left = 158
          Top = 98
          Width = 17
          Height = 13
          Caption = 'IVA'
          FocusControl = cxDBTextEdit6
        end
        object Label9: TLabel
          Left = 121
          Top = 125
          Width = 54
          Height = 13
          Caption = 'Precio total'
          FocusControl = cxDBTextEdit7
        end
        object Label28: TLabel
          Left = 494
          Top = 98
          Width = 40
          Height = 13
          Caption = 'Registro'
          FocusControl = cxDBDateEdit4
        end
        object Label31: TLabel
          Left = 498
          Top = 125
          Width = 36
          Height = 13
          Caption = 'Usuario'
        end
        object Label30: TLabel
          Left = 498
          Top = 71
          Width = 36
          Height = 13
          Caption = 'Estatus'
          FocusControl = DBLookupComboBox2
        end
        object edtPrecio: TcxDBTextEdit
          Left = 181
          Top = 15
          DataBinding.DataField = 'PrecioMoneda'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 308
          Top = 15
          Width = 150
          Height = 21
          DataField = 'Moneda'
          DataSource = DataSource
          TabOrder = 2
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 181
          Top = 69
          DataBinding.DataField = 'Precio'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 181
          Top = 95
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 181
          Top = 122
          DataBinding.DataField = 'PrecioTotal'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 540
          Top = 95
          DataBinding.DataField = 'Registro'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 540
          Top = 122
          DataBinding.DataField = 'Usuario'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 7
          Width = 121
        end
        object edtTipoCambio: TcxDBButtonEdit
          Left = 181
          Top = 42
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
          Left = 540
          Top = 68
          Width = 121
          Height = 21
          DataField = 'Estatus'
          DataSource = DataSource
          Enabled = False
          TabOrder = 8
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 167
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
        Left = 362
        Top = 167
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
        Left = 6
        Top = 256
        Caption = 'Pagos iniciales'
        TabOrder = 3
        Height = 270
        Width = 350
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
          Left = 104
          Top = 68
          Width = 75
          Height = 13
          Caption = 'IVA de comisi'#243'n'
          FocusControl = cxDBTextEdit10
        end
        object Label15: TLabel
          Left = 60
          Top = 92
          Width = 119
          Height = 13
          Caption = 'Gastos de administraci'#243'n'
          FocusControl = cxDBTextEdit11
        end
        object Label16: TLabel
          Left = 112
          Top = 117
          Width = 67
          Height = 13
          Caption = 'IVA de gastos'
          FocusControl = cxDBTextEdit12
        end
        object Label18: TLabel
          Left = 16
          Top = 152
          Width = 100
          Height = 13
          Caption = 'Dep'#243'sito en garantia'
          FocusControl = cxDBTextEdit13
        end
        object Label19: TLabel
          Left = 100
          Top = 184
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
          Top = 65
          DataBinding.DataField = 'ComisionImpuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 184
          Top = 89
          DataBinding.DataField = 'Gastos'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 184
          Top = 114
          DataBinding.DataField = 'GastosImpuestos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 120
          Top = 152
          DataBinding.DataField = 'DespositosNumero'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 60
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 184
          Top = 152
          DataBinding.DataField = 'Depositos'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 184
          Top = 176
          DataBinding.DataField = 'PagoIncial'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 9
          Width = 121
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 362
        Top = 405
        Caption = 'Pagos mensuales'
        TabOrder = 5
        Height = 121
        Width = 350
        object Label20: TLabel
          Left = 95
          Top = 11
          Width = 83
          Height = 13
          Caption = 'Monto a financiar'
          FocusControl = cxDBTextEdit15
        end
        object Label21: TLabel
          Left = 126
          Top = 33
          Width = 52
          Height = 13
          Caption = 'Tasa anual'
          FocusControl = cxDBCurrencyEdit3
        end
        object Label22: TLabel
          Left = 153
          Top = 60
          Width = 25
          Height = 13
          Caption = 'Plazo'
          FocusControl = cxDBSpinEdit2
        end
        object Label23: TLabel
          Left = 112
          Top = 87
          Width = 66
          Height = 13
          Caption = 'Pago mensual'
          FocusControl = cxDBTextEdit16
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 184
          Top = 8
          DataBinding.DataField = 'MontoFinanciar'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 184
          Top = 30
          DataBinding.DataField = 'TasaAnual'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 184
          Top = 57
          DataBinding.DataField = 'Plazo'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 184
          Top = 84
          DataBinding.DataField = 'PagoMensual'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 3
          Width = 121
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 362
        Top = 256
        Caption = 'Impacto ISR'
        TabOrder = 4
        Height = 153
        Width = 350
        object Label29: TLabel
          Left = 118
          Top = 117
          Width = 59
          Height = 13
          Caption = 'Impacto ISR'
        end
        object Label1: TLabel
          Left = 88
          Top = 19
          Width = 89
          Height = 13
          Caption = 'Fecha vencimiento'
          FocusControl = cxDBDateEdit1
        end
        object Label2: TLabel
          Left = 62
          Top = 43
          Width = 115
          Height = 13
          Caption = 'Porcentaje depreciaci'#243'n'
          FocusControl = cxDBCurrencyEdit4
        end
        object Label3: TLabel
          Left = 105
          Top = 68
          Width = 72
          Height = 13
          Caption = 'Porcentaje ISR'
          FocusControl = cxDBCurrencyEdit5
        end
        object Label5: TLabel
          Left = 110
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
    Top = 563
    Width = 727
    ExplicitTop = 527
    ExplicitWidth = 736
    inherited btnCancel: TButton
      Left = 645
      ExplicitLeft = 654
    end
    inherited btnOk: TButton
      Left = 564
      ExplicitLeft = 573
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCotizaciones.adodsDetalle
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
