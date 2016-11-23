inherited frmClientesEdit: TfrmClientesEdit
  Caption = 'Cliente'
  ClientHeight = 383
  ClientWidth = 635
  ExplicitWidth = 641
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 635
    Height = 342
    ClientRectBottom = 340
    ClientRectRight = 633
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 68
      ExplicitWidth = 702
      ExplicitHeight = 369
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 81
        Height = 13
        Caption = 'Cuenta Contable'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 105
        Height = 13
        Caption = 'Cuenta Contable NCA'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 105
        Height = 13
        Caption = 'Cuenta Contable NCR'
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 122
        Height = 13
        Caption = 'Cuenta Contable Anticipo'
      end
      object Label5: TLabel
        Left = 16
        Top = 176
        Width = 76
        Height = 13
        Caption = 'Total Facturado'
        FocusControl = cxDBTextEdit1
      end
      object Label6: TLabel
        Left = 16
        Top = 216
        Width = 77
        Height = 13
        Caption = 'Saldo Pendiente'
        FocusControl = cxDBTextEdit2
      end
      object Label7: TLabel
        Left = 16
        Top = 256
        Width = 53
        Height = 13
        Caption = 'Calificacion'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'TotalFacturado'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 232
        DataBinding.DataField = 'SaldoPendiente'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 272
        DataBinding.DataField = 'Calificacion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 31
        DataBinding.DataField = 'CuentaContable'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 600
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 14
        Top = 71
        DataBinding.DataField = 'CuentaContableNCA'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 600
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 15
        Top = 111
        DataBinding.DataField = 'CuentaContableNCR'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 5
        Width = 600
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 15
        Top = 151
        DataBinding.DataField = 'CuentaContableAnticipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        Width = 600
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 342
    Width = 635
    inherited btnOk: TButton
      Left = 472
    end
    inherited btnCancel: TButton
      Left = 553
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
