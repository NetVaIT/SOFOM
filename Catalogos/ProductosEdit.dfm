inherited frmProductosEdit: TfrmProductosEdit
  Caption = 'frmProductosEdit'
  ClientHeight = 501
  ClientWidth = 750
  OnDestroy = FormDestroy
  ExplicitWidth = 756
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 750
    Height = 460
    ExplicitWidth = 750
    ExplicitHeight = 460
    ClientRectBottom = 458
    ClientRectRight = 748
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 42
      ExplicitTop = 60
      ExplicitWidth = 746
      ExplicitHeight = 430
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 151
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label27: TLabel
        Left = 599
        Top = 223
        Width = 77
        Height = 13
        Caption = 'Porcentaje total'
        FocusControl = cxDBCurrencyEdit12
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
        Left = 151
        Top = 32
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 426
      end
      object cxGroupBox2: TcxGroupBox
        Left = 583
        Top = 59
        Caption = 'Datos de importaci'#243'n'
        TabOrder = 6
        Height = 148
        Width = 154
        object Label11: TLabel
          Left = 16
          Top = 16
          Width = 87
          Height = 13
          Caption = 'Fecha importaci'#243'n'
          FocusControl = cxDBDateEdit1
        end
        object Label12: TLabel
          Left = 16
          Top = 56
          Width = 50
          Height = 13
          Caption = 'Pedimento'
          FocusControl = cxDBTextEdit6
        end
        object Label13: TLabel
          Left = 16
          Top = 96
          Width = 37
          Height = 13
          Caption = 'Aduana'
          FocusControl = cxDBTextEdit7
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 32
          DataBinding.DataField = 'FechaImportacion'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 16
          Top = 72
          DataBinding.DataField = 'Pedimento'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 16
          Top = 112
          DataBinding.DataField = 'Aduana'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 423
        Top = 59
        Caption = 'Depreciaci'#243'n contable'
        TabOrder = 4
        Height = 181
        Width = 154
        object Label18: TLabel
          Left = 16
          Top = 24
          Width = 118
          Height = 13
          Caption = '% depreciaci'#243'n contable'
          FocusControl = cxDBCurrencyEdit4
        end
        object Label19: TLabel
          Left = 16
          Top = 64
          Width = 105
          Height = 13
          Caption = 'Depreciaci'#243'n contable'
          FocusControl = cxDBCurrencyEdit5
        end
        object Label20: TLabel
          Left = 16
          Top = 104
          Width = 68
          Height = 13
          Caption = 'Valor contable'
          FocusControl = cxDBCurrencyEdit6
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 16
          Top = 40
          DataBinding.DataField = 'PorcentajeContable'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 16
          Top = 80
          DataBinding.DataField = 'DepreciacionContable'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit6: TcxDBCurrencyEdit
          Left = 16
          Top = 120
          DataBinding.DataField = 'ValorContable'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 2
          Width = 121
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 20
        Top = 59
        Caption = 'Caracteristicas'
        TabOrder = 2
        Height = 362
        Width = 229
        object Label3: TLabel
          Left = 16
          Top = 16
          Width = 20
          Height = 13
          Caption = 'Tipo'
          FocusControl = DBLookupComboBox1
        end
        object Label4: TLabel
          Left = 16
          Top = 56
          Width = 29
          Height = 13
          Caption = 'Marca'
          FocusControl = DBLookupComboBox2
        end
        object Label5: TLabel
          Left = 16
          Top = 96
          Width = 32
          Height = 13
          Caption = 'Familia'
          FocusControl = DBLookupComboBox3
        end
        object Label6: TLabel
          Left = 16
          Top = 136
          Width = 34
          Height = 13
          Caption = 'Modelo'
          FocusControl = cxDBTextEdit3
        end
        object Label7: TLabel
          Left = 16
          Top = 176
          Width = 19
          Height = 13
          Caption = 'A'#241'o'
          FocusControl = cxDBSpinEdit1
        end
        object Label8: TLabel
          Left = 16
          Top = 216
          Width = 78
          Height = 13
          Caption = 'N'#250'mero de serie'
          FocusControl = cxDBTextEdit4
        end
        object Label9: TLabel
          Left = 16
          Top = 256
          Width = 90
          Height = 13
          Caption = 'N'#250'mero econ'#243'mico'
          FocusControl = cxDBTextEdit5
        end
        object Label10: TLabel
          Left = 16
          Top = 296
          Width = 36
          Height = 13
          Caption = 'Estatus'
          FocusControl = DBLookupComboBox4
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 35
          Width = 200
          Height = 21
          DataField = 'Tipo'
          DataSource = DataSource
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 72
          Width = 200
          Height = 21
          DataField = 'Marca'
          DataSource = DataSource
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 16
          Top = 112
          Width = 200
          Height = 21
          DataField = 'Familia'
          DataSource = DataSource
          TabOrder = 2
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 152
          DataBinding.DataField = 'Modelo'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 200
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 16
          Top = 192
          DataBinding.DataField = 'Anio'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 16
          Top = 232
          DataBinding.DataField = 'NumeroSerie'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 200
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 16
          Top = 272
          DataBinding.DataField = 'NumeroEconomico'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 200
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 16
          Top = 312
          Width = 200
          Height = 21
          DataField = 'Estatus'
          DataSource = DataSource
          TabOrder = 7
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 255
        Top = 59
        Caption = 'Datos de compra'
        TabOrder = 3
        Height = 362
        Width = 162
        object Label14: TLabel
          Left = 16
          Top = 24
          Width = 67
          Height = 13
          Caption = 'Fecha compra'
          FocusControl = cxDBDateEdit2
        end
        object Label15: TLabel
          Left = 16
          Top = 64
          Width = 29
          Height = 13
          Caption = 'Precio'
          FocusControl = cxDBCurrencyEdit1
        end
        object Label16: TLabel
          Left = 16
          Top = 104
          Width = 38
          Height = 13
          Caption = 'Moneda'
          FocusControl = DBLookupComboBox5
        end
        object Label17: TLabel
          Left = 16
          Top = 144
          Width = 71
          Height = 13
          Caption = 'Tipo de cambio'
          FocusControl = cxDBCurrencyEdit2
        end
        object Label21: TLabel
          Left = 16
          Top = 184
          Width = 94
          Height = 13
          Caption = 'Precio moneda local'
          FocusControl = cxDBCurrencyEdit3
        end
        object Label22: TLabel
          Left = 16
          Top = 224
          Width = 17
          Height = 13
          Caption = 'IVA'
          FocusControl = cxDBCurrencyEdit7
        end
        object Label23: TLabel
          Left = 16
          Top = 264
          Width = 54
          Height = 13
          Caption = 'Precio total'
          FocusControl = cxDBCurrencyEdit8
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 16
          Top = 40
          DataBinding.DataField = 'FechaCompra'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 16
          Top = 80
          DataBinding.DataField = 'PrecioMoneda'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 16
          Top = 120
          Width = 121
          Height = 21
          DataField = 'Moneda'
          DataSource = DataSource
          TabOrder = 2
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 16
          Top = 160
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 16
          Top = 200
          DataBinding.DataField = 'Precio'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 16
          Top = 240
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 5
          Width = 121
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 16
          Top = 280
          DataBinding.DataField = 'PrecioTotal'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 6
          Width = 121
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 423
        Top = 240
        Caption = 'Depreciaci'#243'n comercial'
        TabOrder = 5
        Height = 181
        Width = 154
        object Label24: TLabel
          Left = 16
          Top = 24
          Width = 121
          Height = 13
          Caption = '% depreciaci'#243'n comercial'
          FocusControl = cxDBCurrencyEdit9
        end
        object Label25: TLabel
          Left = 16
          Top = 64
          Width = 108
          Height = 13
          Caption = 'Depreciaci'#243'n comercial'
          FocusControl = cxDBCurrencyEdit10
        end
        object Label26: TLabel
          Left = 16
          Top = 104
          Width = 71
          Height = 13
          Caption = 'Valor comercial'
          FocusControl = cxDBCurrencyEdit11
        end
        object cxDBCurrencyEdit9: TcxDBCurrencyEdit
          Left = 16
          Top = 40
          DataBinding.DataField = 'PorcentajeComercial'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit10: TcxDBCurrencyEdit
          Left = 16
          Top = 80
          DataBinding.DataField = 'DepreciacionComercial'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit11: TcxDBCurrencyEdit
          Left = 16
          Top = 120
          DataBinding.DataField = 'ValorComercial'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 2
          Width = 121
        end
      end
      object cxDBCurrencyEdit12: TcxDBCurrencyEdit
        Left = 599
        Top = 239
        DataBinding.DataField = 'PorcentajeAnexo'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 460
    Width = 750
    ExplicitTop = 460
    ExplicitWidth = 750
    inherited btnCancel: TButton
      Left = 668
      ExplicitLeft = 668
    end
    inherited btnOk: TButton
      Left = 587
      ExplicitLeft = 587
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
