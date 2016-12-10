inherited FrmEdPagos: TFrmEdPagos
  Caption = 'Edici'#243'n Pagos'
  ClientHeight = 445
  ClientWidth = 625
  ExplicitWidth = 631
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 625
    Height = 404
    ClientRectBottom = 402
    ClientRectRight = 623
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 18
      ExplicitTop = 24
      ExplicitWidth = 813
      ExplicitHeight = 374
      object Label1: TLabel
        Left = 27
        Top = 81
        Width = 56
        Height = 13
        Caption = 'Fecha Pago'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 322
        Top = 78
        Width = 46
        Height = 13
        Caption = 'FolioPago'
      end
      object Label3: TLabel
        Left = 170
        Top = 81
        Width = 48
        Height = 13
        Caption = 'SeriePago'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 289
        Top = 129
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 27
        Top = 190
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 177
        Top = 193
        Width = 26
        Height = 13
        Caption = 'Saldo'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 27
        Top = 256
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label8: TLabel
        Left = 27
        Top = 129
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
        FocusControl = DBLookupComboBox2
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 27
        Top = 97
        DataBinding.DataField = 'FechaPago'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 170
        Top = 97
        DataBinding.DataField = 'SeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 289
        Top = 148
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 232
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 27
        Top = 209
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 177
        Top = 209
        DataBinding.DataField = 'Saldo'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 27
        Top = 148
        Width = 240
        Height = 21
        DataField = 'Banco'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 27
        Top = 45
        Width = 500
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 6
      end
      object cxDBMemo1: TcxDBMemo
        Left = 27
        Top = 275
        TabOrder = 7
        Height = 65
        Width = 494
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 322
        Top = 97
        DataBinding.DataField = 'SeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 404
    Width = 625
    inherited btnCancel: TButton
      Left = 543
    end
    inherited btnOk: TButton
      Left = 462
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPagos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
