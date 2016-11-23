inherited frmCuentasBancariasEdit: TfrmCuentasBancariasEdit
  Caption = 'Cuentas Bancarias'
  ClientHeight = 358
  ClientWidth = 542
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 548
  ExplicitHeight = 387
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 542
    Height = 317
    ExplicitWidth = 542
    ExplicitHeight = 317
    ClientRectBottom = 315
    ClientRectRight = 540
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 538
      ExplicitHeight = 287
      object Label2: TLabel
        Left = 24
        Top = 103
        Width = 79
        Height = 13
        Caption = 'Cuenta Bancaria'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 24
        Top = 197
        Width = 89
        Height = 13
        Caption = 'Archivo Estructura'
      end
      object Label4: TLabel
        Left = 362
        Top = 103
        Width = 64
        Height = 13
        Caption = 'Saldo Cuenta'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label5: TLabel
        Left = 24
        Top = 17
        Width = 29
        Height = 13
        Caption = 'Banco'
      end
      object Label6: TLabel
        Left = 24
        Top = 60
        Width = 102
        Height = 13
        Caption = 'Tipo Cuenta Bancaria'
      end
      object Label7: TLabel
        Left = 362
        Top = 63
        Width = 38
        Height = 13
        Caption = 'Moneda'
      end
      object Label8: TLabel
        Left = 24
        Top = 151
        Width = 95
        Height = 13
        Caption = 'Clabe Interbancaria'
        FocusControl = cxDBTextEdit3
      end
      object btnUpdateFile: TSpeedButton
        Left = 488
        Top = 216
        Width = 23
        Height = 22
      end
      object Label1: TLabel
        Left = 362
        Top = 19
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 122
        DataBinding.DataField = 'CuentaBancaria'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 300
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 362
        Top = 122
        DataBinding.DataField = 'SaldoCuenta'
        DataBinding.DataSource = dmCuentasBancarias.dsMaster
        TabOrder = 5
        Width = 150
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 167
        DataBinding.DataField = 'ClabeInterbancaria'
        DataBinding.DataSource = dmCuentasBancarias.dsMaster
        TabOrder = 6
        Width = 488
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 35
        DataBinding.DataField = 'Banco'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdBanco'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        TabOrder = 0
        Width = 301
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 23
        Top = 78
        DataBinding.DataField = 'CuentaBancariaTipo'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdCuentaBancariaTipo'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        TabOrder = 2
        Width = 301
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 361
        Top = 78
        DataBinding.DataField = 'Moneda'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdMoneda'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        TabOrder = 3
        Width = 150
      end
      object cxDBLabel1: TcxDBLabel
        Left = 24
        Top = 216
        DataBinding.DataField = 'EstructuraEstadoCuenta'
        DataBinding.DataSource = DataSource
        Height = 49
        Width = 465
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 362
        Top = 35
        Width = 150
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 1
      end
    end
    object tsExpedienteDigital: TcxTabSheet
      Caption = 'Expediente Digital'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 317
    Width = 542
    ExplicitTop = 317
    ExplicitWidth = 542
    inherited btnCancel: TButton
      Left = 460
      ExplicitLeft = 460
    end
    inherited btnOk: TButton
      Left = 379
      ExplicitLeft = 379
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasBancarias.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
