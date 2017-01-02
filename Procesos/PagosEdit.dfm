inherited FrmEdPagos: TFrmEdPagos
  Caption = 'Edici'#243'n Pagos'
  ClientHeight = 479
  ClientWidth = 634
  ExplicitWidth = 640
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 634
    Height = 438
    ExplicitWidth = 625
    ExplicitHeight = 404
    ClientRectBottom = 436
    ClientRectRight = 632
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 630
      ExplicitHeight = 408
      object Label1: TLabel
        Left = 27
        Top = 76
        Width = 56
        Height = 13
        Caption = 'Fecha Pago'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 322
        Top = 73
        Width = 46
        Height = 13
        Caption = 'FolioPago'
      end
      object Label3: TLabel
        Left = 193
        Top = 76
        Width = 48
        Height = 13
        Caption = 'SeriePago'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 322
        Top = 166
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 27
        Top = 230
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 177
        Top = 233
        Width = 26
        Height = 13
        Caption = 'Saldo'
      end
      object Label7: TLabel
        Left = 27
        Top = 290
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label8: TLabel
        Left = 27
        Top = 166
        Width = 29
        Height = 13
        Caption = 'Banco'
        FocusControl = DBLookupComboBox1
      end
      object Label9: TLabel
        Left = 27
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLkpCmbBxCliente
      end
      object Label10: TLabel
        Left = 27
        Top = 120
        Width = 78
        Height = 13
        Caption = 'M'#233'todo de Pago'
        FocusControl = DBLookupComboBox3
      end
      object Label11: TLabel
        Left = 322
        Top = 120
        Width = 59
        Height = 13
        Caption = 'CuentaPago'
        FocusControl = cxDBTextEdit4
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 27
        Top = 92
        DataBinding.DataField = 'FechaPago'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 160
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 193
        Top = 92
        DataBinding.DataField = 'SeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 322
        Top = 185
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 205
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 27
        Top = 249
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 27
        Top = 185
        Width = 270
        Height = 21
        DataField = 'Banco'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBLkpCmbBxCliente: TDBLookupComboBox
        Left = 27
        Top = 45
        Width = 500
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 5
        OnClick = DBLkpCmbBxClienteClick
      end
      object cxDBMemo1: TcxDBMemo
        Left = 27
        Top = 309
        TabOrder = 6
        Height = 65
        Width = 500
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 322
        Top = 92
        DataBinding.DataField = 'FolioPago'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 176
        Top = 248
        DataBinding.DataField = 'Saldo'
        DataBinding.DataSource = DataSource
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 27
        Top = 136
        Width = 287
        Height = 21
        DataField = 'MetodoPago'
        DataSource = DataSource
        TabOrder = 9
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 322
        Top = 136
        DataBinding.DataField = 'CuentaPago'
        DataBinding.DataSource = DataSource
        TabOrder = 10
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 438
    Width = 634
    ExplicitTop = 404
    ExplicitWidth = 625
    inherited btnCancel: TButton
      Left = 552
      ExplicitLeft = 543
    end
    inherited btnOk: TButton
      Left = 471
      ExplicitLeft = 462
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPagos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object DSPersonas: TDataSource
    AutoEdit = False
    DataSet = dmPagos.ADOSPersonas
    Left = 512
    Top = 120
  end
end
