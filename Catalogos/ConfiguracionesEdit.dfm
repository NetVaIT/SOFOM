inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 408
  ClientWidth = 339
  ExplicitWidth = 345
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 339
    Height = 367
    ExplicitWidth = 339
    ExplicitHeight = 367
    ClientRectBottom = 365
    ClientRectRight = 337
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 335
      ExplicitHeight = 339
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox2
      end
      object Label8: TLabel
        Left = 16
        Top = 131
        Width = 119
        Height = 13
        Caption = 'Ruta Base para Facturas'
        FocusControl = cxDBTextEdit1
      end
      object Label12: TLabel
        Left = 16
        Top = 171
        Width = 106
        Height = 13
        Caption = 'Ruta Base para pagos'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 216
        Width = 94
        Height = 13
        Caption = #218'ltimo folio de pago'
        FocusControl = cxDBSpinEdit1
      end
      object Label4: TLabel
        Left = 16
        Top = 256
        Width = 97
        Height = 13
        Caption = #218'ltima serie de pago'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 88
        Width = 118
        Height = 13
        Caption = 'Porcentaje impuesto IVA'
        FocusControl = cxDBCurrencyEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 24
        Width = 304
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 64
        Width = 304
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 147
        DataBinding.DataField = 'RutaBaseFacturas'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 304
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 187
        DataBinding.DataField = 'RutaBasePagos'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 304
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 232
        DataBinding.DataField = 'UltimoFolioPago'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 272
        DataBinding.DataField = 'UltimaSeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'PorcentajeImpuestoIVA'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Buro de cr'#233'dito'
      ImageIndex = 1
      object Label6: TLabel
        Left = 16
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Clave instituci'#243'n'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 16
        Top = 48
        Width = 50
        Height = 13
        Caption = 'Instituci'#243'n'
        FocusControl = cxDBTextEdit5
      end
      object Label9: TLabel
        Left = 16
        Top = 96
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = cxDBTextEdit6
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'BCClaveInstitucion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'BCInstitucion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'BCTipo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'PLD'
      ImageIndex = 2
      object Label10: TLabel
        Left = 16
        Top = 8
        Width = 86
        Height = 13
        Caption = 'Inicio operaciones'
        FocusControl = cxDBTextEdit7
      end
      object Label11: TLabel
        Left = 16
        Top = 48
        Width = 74
        Height = 13
        Caption = 'C'#243'digo CASFIM'
        FocusControl = cxDBTextEdit8
      end
      object Label13: TLabel
        Left = 16
        Top = 88
        Width = 80
        Height = 13
        Caption = 'Supervisor CNBV'
        FocusControl = cxDBTextEdit9
      end
      object Label14: TLabel
        Left = 16
        Top = 128
        Width = 61
        Height = 13
        Caption = 'Ruta archivo'
        FocusControl = cxDBTextEdit10
      end
      object Label15: TLabel
        Left = 16
        Top = 168
        Width = 85
        Height = 13
        Caption = 'Extensi'#243'n archivo'
        FocusControl = cxDBTextEdit11
      end
      object Label16: TLabel
        Left = 16
        Top = 208
        Width = 125
        Height = 13
        Caption = 'Monto relevante (dolares)'
        FocusControl = cxDBCurrencyEdit2
      end
      object Label17: TLabel
        Left = 16
        Top = 248
        Width = 44
        Height = 13
        Caption = 'Localidad'
        FocusControl = cxDBTextEdit12
      end
      object Label18: TLabel
        Left = 16
        Top = 288
        Width = 65
        Height = 13
        Caption = 'C'#243'digo postal'
        FocusControl = cxDBTextEdit13
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'PLDInicioOperaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'PLDCodigoCASFIM'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'PLDSupervisorCNBV'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 16
        Top = 144
        DataBinding.DataField = 'PLDArchivoRuta'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 300
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 16
        Top = 184
        DataBinding.DataField = 'PLDArchivoExtension'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 16
        Top = 224
        DataBinding.DataField = 'PLDMontoRelevante'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 16
        Top = 264
        DataBinding.DataField = 'PLDLocalidad'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 16
        Top = 304
        DataBinding.DataField = 'PLDCodigoPostal'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 367
    Width = 339
    ExplicitTop = 367
    ExplicitWidth = 339
    inherited btnCancel: TButton
      Left = 257
      ExplicitLeft = 257
    end
    inherited btnOk: TButton
      Left = 176
      ExplicitLeft = 176
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmConfiguracion.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
