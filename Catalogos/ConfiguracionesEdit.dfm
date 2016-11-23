inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 454
  ClientWidth = 408
  ExplicitWidth = 414
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 408
    Height = 413
    ExplicitWidth = 383
    ExplicitHeight = 516
    ClientRectBottom = 411
    ClientRectRight = 406
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 379
      ExplicitHeight = 486
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox2
      end
      object Label6: TLabel
        Left = 32
        Top = 112
        Width = 194
        Height = 13
        Caption = 'Metodo de pago para cuentas por pagar'
        FocusControl = DBLookupComboBox6
      end
      object Label7: TLabel
        Left = 32
        Top = 152
        Width = 145
        Height = 13
        Caption = 'Metodo de pago para facturar'
        FocusControl = DBLookupComboBox7
      end
      object Label8: TLabel
        Left = 32
        Top = 240
        Width = 119
        Height = 13
        Caption = 'Ruta Base para Facturas'
        FocusControl = cxDBTextEdit1
      end
      object Label11: TLabel
        Left = 32
        Top = 197
        Width = 216
        Height = 13
        Caption = 'Metodo de pago para cuentas por pagar SAT'
        FocusControl = DBLookupComboBox10
      end
      object Label12: TLabel
        Left = 32
        Top = 280
        Width = 106
        Height = 13
        Caption = 'Ruta Base para pagos'
        FocusControl = cxDBTextEdit2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 40
        Width = 304
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 32
        Top = 80
        Width = 304
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 32
        Top = 128
        Width = 304
        Height = 21
        DataField = 'MetodoPagoCuentasXPagar'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 32
        Top = 168
        Width = 304
        Height = 21
        DataField = 'MetodoPagoFactura'
        DataSource = DataSource
        TabOrder = 3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 256
        DataBinding.DataField = 'RutaBaseFacturas'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 304
      end
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 32
        Top = 213
        Width = 304
        Height = 21
        DataField = 'MetodoPagoCuentasXPagarSAT'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 296
        DataBinding.DataField = 'RutaBasePagos'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 304
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Tipo de movimientos'
      ImageIndex = 1
      ExplicitLeft = 74
      ExplicitTop = 212
      ExplicitWidth = 680
      ExplicitHeight = 503
      object Label3: TLabel
        Left = 32
        Top = 16
        Width = 139
        Height = 13
        Caption = 'Tipo movimiento para nomina'
        FocusControl = DBLookupComboBox3
      end
      object Label4: TLabel
        Left = 32
        Top = 56
        Width = 150
        Height = 13
        Caption = 'Tipo movimiento para retenci'#243'n'
        FocusControl = DBLookupComboBox4
      end
      object Label5: TLabel
        Left = 32
        Top = 96
        Width = 150
        Height = 13
        Caption = 'Tipo movimiento para prestamo'
        FocusControl = DBLookupComboBox5
      end
      object Label9: TLabel
        Left = 32
        Top = 136
        Width = 83
        Height = 13
        Caption = 'Rol de descuento'
        FocusControl = DBLookupComboBox8
      end
      object Label10: TLabel
        Left = 32
        Top = 176
        Width = 155
        Height = 13
        Caption = 'Tipo movimiento para descuento'
        FocusControl = DBLookupComboBox9
      end
      object Label13: TLabel
        Left = 32
        Top = 216
        Width = 213
        Height = 13
        Caption = 'Tipo movimiento para ingreso por transporte'
        FocusControl = DBLookupComboBox11
      end
      object Label14: TLabel
        Left = 32
        Top = 256
        Width = 213
        Height = 13
        Caption = 'Tipo movimiento para ingreso por aportaci'#243'n'
        FocusControl = DBLookupComboBox12
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 32
        Top = 32
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoNomina'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 32
        Top = 72
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoRetencion'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 32
        Top = 112
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoPrestamo'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 32
        Top = 152
        Width = 304
        Height = 21
        DataField = 'RolDescuento'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 32
        Top = 192
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoDescuento'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBLookupComboBox11: TDBLookupComboBox
        Left = 32
        Top = 232
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoTransporte'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBLookupComboBox12: TDBLookupComboBox
        Left = 32
        Top = 272
        Width = 304
        Height = 21
        DataField = 'MovimientoTipoAportacion'
        DataSource = DataSource
        TabOrder = 6
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 413
    Width = 408
    ExplicitTop = 516
    ExplicitWidth = 383
    inherited btnCancel: TButton
      Left = 326
      ExplicitLeft = 301
    end
    inherited btnOk: TButton
      Left = 245
      ExplicitLeft = 220
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
