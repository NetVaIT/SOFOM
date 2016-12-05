inherited frmAnexosCreditosEdit: TfrmAnexosCreditosEdit
  Caption = 'frmAnexosCreditosEdit'
  ClientHeight = 461
  ExplicitWidth = 444
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 420
    ClientRectBottom = 418
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 48
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 48
        Top = 64
        Width = 57
        Height = 13
        Caption = 'Fecha inicial'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 48
        Top = 104
        Width = 72
        Height = 13
        Caption = 'Fecha de corte'
        FocusControl = cxDBDateEdit2
      end
      object Label4: TLabel
        Left = 48
        Top = 144
        Width = 89
        Height = 13
        Caption = 'Monto a fiananciar'
        FocusControl = cxDBTextEdit1
      end
      object Label5: TLabel
        Left = 48
        Top = 184
        Width = 52
        Height = 13
        Caption = 'Tasa anual'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label6: TLabel
        Left = 48
        Top = 224
        Width = 25
        Height = 13
        Caption = 'Plazo'
        FocusControl = cxDBSpinEdit1
      end
      object Label7: TLabel
        Left = 48
        Top = 264
        Width = 66
        Height = 13
        Caption = 'Pago mensual'
        FocusControl = cxDBTextEdit2
      end
      object Label8: TLabel
        Left = 48
        Top = 304
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit3
      end
      object Label9: TLabel
        Left = 48
        Top = 344
        Width = 36
        Height = 13
        Caption = 'Usuario'
        FocusControl = DBLookupComboBox2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 48
        Top = 40
        Width = 209
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 48
        Top = 80
        DataBinding.DataField = 'FechaInicial'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 48
        Top = 120
        DataBinding.DataField = 'FechaCorte'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 48
        Top = 160
        DataBinding.DataField = 'MontoFiananciar'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 48
        Top = 200
        DataBinding.DataField = 'TasaAnual'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 48
        Top = 240
        DataBinding.DataField = 'Plazo'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 48
        Top = 280
        DataBinding.DataField = 'PagoMensual'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 6
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 48
        Top = 320
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 7
        Width = 121
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 48
        Top = 360
        Width = 209
        Height = 21
        DataField = 'Usuario'
        DataSource = DataSource
        Enabled = False
        TabOrder = 8
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 420
  end
  inherited DataSource: TDataSource
    DataSet = dmContratos.adodsCreditos
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
