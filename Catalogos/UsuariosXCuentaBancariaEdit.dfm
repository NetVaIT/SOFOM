inherited frmUsuariosXCuentaBancariaEdit: TfrmUsuariosXCuentaBancariaEdit
  Caption = 'Usuario de Cuenta Bancaria'
  ClientHeight = 300
  ClientWidth = 548
  ExplicitWidth = 554
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 548
    Height = 259
    ExplicitWidth = 460
    ClientRectBottom = 257
    ClientRectRight = 546
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 456
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Responsable'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 57
        Height = 13
        Caption = 'Login Banco'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 111
        Height = 13
        Caption = 'Numero de Serie Token'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 80
        Height = 13
        Caption = 'Observaciones 1'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 176
        Width = 80
        Height = 13
        Caption = 'Observaciones 2'
        FocusControl = cxDBTextEdit4
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'LoginBanco'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'NumeroSerieToken'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 152
        DataBinding.DataField = 'Observaciones1'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 513
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'Observaciones2'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 513
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 31
        DataBinding.DataField = 'Responsable'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 434
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 259
    Width = 548
    ExplicitWidth = 460
    inherited btnOk: TButton
      Left = 385
      ExplicitLeft = 297
    end
    inherited btnCancel: TButton
      Left = 466
      ExplicitLeft = 378
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasBancarias.adodsUsuariosXCtaBan
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
