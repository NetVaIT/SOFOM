inherited frmAnexosEdit: TfrmAnexosEdit
  Caption = 'frmAnexosEdit'
  ClientHeight = 636
  ClientWidth = 640
  OnDestroy = FormDestroy
  ExplicitWidth = 646
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 640
    Height = 595
    Properties.ActivePage = tsSegmentos
    ExplicitWidth = 640
    ExplicitHeight = 595
    ClientRectBottom = 593
    ClientRectRight = 638
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 636
      ExplicitHeight = 565
      object Label1: TLabel
        Left = 123
        Top = 19
        Width = 31
        Height = 13
        Caption = 'Anexo'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 111
        Top = 46
        Width = 43
        Height = 13
        Caption = 'Producto'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 404
        Top = 19
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label4: TLabel
        Left = 125
        Top = 73
        Width = 29
        Height = 13
        Caption = 'Precio'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 77
        Top = 100
        Width = 77
        Height = 13
        Caption = 'Tipod de cambio'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 60
        Top = 127
        Width = 94
        Height = 13
        Caption = 'Precio moneda local'
        FocusControl = cxDBTextEdit5
      end
      object Label8: TLabel
        Left = 137
        Top = 153
        Width = 17
        Height = 13
        Caption = 'IVA'
        FocusControl = cxDBTextEdit6
      end
      object Label9: TLabel
        Left = 100
        Top = 180
        Width = 54
        Height = 13
        Caption = 'Precio total'
        FocusControl = cxDBTextEdit7
      end
      object Label11: TLabel
        Left = 41
        Top = 207
        Width = 47
        Height = 13
        Caption = 'Enganche'
        FocusControl = cxDBTextEdit8
      end
      object Label13: TLabel
        Left = 46
        Top = 234
        Width = 42
        Height = 13
        Caption = 'Comisi'#243'n'
        FocusControl = cxDBTextEdit9
      end
      object Label14: TLabel
        Left = 79
        Top = 261
        Width = 75
        Height = 13
        Caption = 'IVA de comisi'#243'n'
        FocusControl = cxDBTextEdit10
      end
      object Label15: TLabel
        Left = 35
        Top = 288
        Width = 119
        Height = 13
        Caption = 'Gastos de administraci'#243'n'
        FocusControl = cxDBTextEdit11
      end
      object Label16: TLabel
        Left = 87
        Top = 315
        Width = 67
        Height = 13
        Caption = 'IVA de gastos'
        FocusControl = cxDBTextEdit12
      end
      object Label18: TLabel
        Left = -7
        Top = 341
        Width = 100
        Height = 13
        Caption = 'Dep'#243'sito en garantia'
        FocusControl = cxDBTextEdit13
      end
      object Label19: TLabel
        Left = 73
        Top = 368
        Width = 81
        Height = 13
        Caption = 'Totlal pago inicial'
        FocusControl = cxDBTextEdit14
      end
      object Label20: TLabel
        Left = 71
        Top = 393
        Width = 83
        Height = 13
        Caption = 'Monto a financiar'
        FocusControl = cxDBTextEdit15
      end
      object Label21: TLabel
        Left = 102
        Top = 419
        Width = 52
        Height = 13
        Caption = 'Tasa anual'
        FocusControl = cxDBCurrencyEdit3
      end
      object Label22: TLabel
        Left = 129
        Top = 446
        Width = 25
        Height = 13
        Caption = 'Plazo'
        FocusControl = cxDBSpinEdit2
      end
      object Label23: TLabel
        Left = 88
        Top = 473
        Width = 66
        Height = 13
        Caption = 'Pago mensual'
        FocusControl = cxDBTextEdit16
      end
      object Label24: TLabel
        Left = 97
        Top = 500
        Width = 57
        Height = 13
        Caption = 'Fecha inicial'
        FocusControl = cxDBDateEdit2
      end
      object Label25: TLabel
        Left = 118
        Top = 529
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 160
        Top = 16
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 160
        Top = 43
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 400
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 439
        Top = 16
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 160
        Top = 70
        DataBinding.DataField = 'PrecioMoneda'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 287
        Top = 70
        Width = 150
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 160
        Top = 97
        DataBinding.DataField = 'TipoCambio'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 160
        Top = 124
        DataBinding.DataField = 'Precio'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 160
        Top = 150
        DataBinding.DataField = 'Impuesto'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 160
        Top = 177
        DataBinding.DataField = 'PrecioTotal'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 94
        Top = 204
        DataBinding.DataField = 'EnganchePorcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 9
        Width = 60
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 160
        Top = 204
        DataBinding.DataField = 'Enganche'
        DataBinding.DataSource = DataSource
        TabOrder = 10
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 94
        Top = 231
        DataBinding.DataField = 'ComisionPorcentaje'
        DataBinding.DataSource = DataSource
        TabOrder = 11
        Width = 60
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 160
        Top = 231
        DataBinding.DataField = 'Comision'
        DataBinding.DataSource = DataSource
        TabOrder = 12
        Width = 121
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 160
        Top = 258
        DataBinding.DataField = 'ComisionImpuesto'
        DataBinding.DataSource = DataSource
        TabOrder = 13
        Width = 121
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 160
        Top = 285
        DataBinding.DataField = 'Gastos'
        DataBinding.DataSource = DataSource
        TabOrder = 14
        Width = 121
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 160
        Top = 312
        DataBinding.DataField = 'GastosImpuestos'
        DataBinding.DataSource = DataSource
        TabOrder = 15
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 94
        Top = 338
        DataBinding.DataField = 'DespositosNumero'
        DataBinding.DataSource = DataSource
        TabOrder = 16
        Width = 60
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 160
        Top = 338
        DataBinding.DataField = 'Depositos'
        DataBinding.DataSource = DataSource
        TabOrder = 17
        Width = 121
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 160
        Top = 365
        DataBinding.DataField = 'PagoIncial'
        DataBinding.DataSource = DataSource
        TabOrder = 18
        Width = 121
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 160
        Top = 390
        DataBinding.DataField = 'MontoFinanciar'
        DataBinding.DataSource = DataSource
        TabOrder = 19
        Width = 121
      end
      object cxDBCurrencyEdit3: TcxDBCurrencyEdit
        Left = 160
        Top = 416
        DataBinding.DataField = 'TasaAnual'
        DataBinding.DataSource = DataSource
        TabOrder = 20
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 160
        Top = 443
        DataBinding.DataField = 'Plazo'
        DataBinding.DataSource = DataSource
        TabOrder = 21
        Width = 121
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 160
        Top = 470
        DataBinding.DataField = 'PagoMensual'
        DataBinding.DataSource = DataSource
        TabOrder = 22
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 160
        Top = 497
        DataBinding.DataField = 'FechaInicial'
        DataBinding.DataSource = DataSource
        TabOrder = 23
        Width = 121
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 160
        Top = 524
        Width = 121
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 24
      end
    end
    object tsSegmentos: TcxTabSheet
      Caption = 'Segmentos'
      ImageIndex = 2
    end
    object tsAmortizaciones: TcxTabSheet
      Caption = 'Amortizaciones'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 595
    Width = 640
    ExplicitTop = 595
    ExplicitWidth = 640
    inherited btnCancel: TButton
      Left = 558
      ExplicitLeft = 558
    end
    inherited btnOk: TButton
      Left = 477
      ExplicitLeft = 477
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
