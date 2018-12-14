inherited FrmEdCuentasXCobrar: TFrmEdCuentasXCobrar
  Caption = 'Cuenta por cobrar'
  ClientHeight = 696
  ClientWidth = 668
  ExplicitWidth = 674
  ExplicitHeight = 725
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 668
    Height = 655
    ExplicitWidth = 668
    ExplicitHeight = 655
    ClientRectBottom = 653
    ClientRectRight = 666
    inherited tsGeneral: TcxTabSheet
      ExplicitWidth = 664
      ExplicitHeight = 627
      object Label2: TLabel
        Left = 16
        Top = 45
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = lcbCliente
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 31
        Height = 13
        Caption = 'Anexo'
        FocusControl = dblkpAnexo
      end
      object Label6: TLabel
        Left = 397
        Top = 88
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label7: TLabel
        Left = 524
        Top = 88
        Width = 89
        Height = 13
        Caption = 'Fecha vencimiento'
        FocusControl = edtFechaVencimiento
      end
      object Label8: TLabel
        Left = 16
        Top = 128
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = edtDescripcion
      end
      object Label9: TLabel
        Left = 524
        Top = 6
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox4
      end
      object Label5: TLabel
        Left = 16
        Top = 168
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit2
      end
      object Label10: TLabel
        Left = 143
        Top = 168
        Width = 45
        Height = 13
        Caption = 'Impuesto'
        FocusControl = cxDBTextEdit3
      end
      object Label11: TLabel
        Left = 270
        Top = 168
        Width = 35
        Height = 13
        Caption = 'Interes'
        FocusControl = cxDBTextEdit4
      end
      object Label12: TLabel
        Left = 397
        Top = 168
        Width = 24
        Height = 13
        Caption = 'Total'
        FocusControl = cxDBTextEdit5
      end
      object Label13: TLabel
        Left = 524
        Top = 168
        Width = 26
        Height = 13
        Caption = 'Saldo'
        FocusControl = cxDBTextEdit6
      end
      object Label1: TLabel
        Left = 16
        Top = 3
        Width = 88
        Height = 13
        Caption = 'Cuenta por cobrar'
        FocusControl = cxDBTextEdit7
      end
      object PnlDetalleFact: TPanel
        Left = 0
        Top = 227
        Width = 664
        Height = 200
        Align = alBottom
        TabOrder = 13
        OnEnter = PnlDetalleFactEnter
        ExplicitLeft = -3
        ExplicitTop = 221
      end
      object pnlMoratorios: TPanel
        Left = 0
        Top = 427
        Width = 664
        Height = 200
        Align = alBottom
        TabOrder = 14
      end
      object lcbCliente: TDBLookupComboBox
        Left = 16
        Top = 61
        Width = 629
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 2
      end
      object dblkpAnexo: TDBLookupComboBox
        Left = 16
        Top = 104
        Width = 250
        Height = 21
        DataField = 'IdAnexo'
        DataSource = DataSource
        KeyField = 'IdAnexo'
        ListField = 'Anexo'
        ListSource = dsAnexos
        TabOrder = 3
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 397
        Top = 104
        TabStop = False
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 121
      end
      object edtFechaVencimiento: TcxDBDateEdit
        Left = 524
        Top = 104
        DataBinding.DataField = 'FechaVencimiento'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object edtDescripcion: TcxDBTextEdit
        Left = 16
        Top = 144
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 629
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 524
        Top = 22
        Width = 121
        Height = 21
        DataField = 'EstatusCXC'
        DataSource = DataSource
        Enabled = False
        TabOrder = 1
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 184
        TabStop = False
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 8
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 143
        Top = 184
        TabStop = False
        DataBinding.DataField = 'Impuesto'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 9
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 270
        Top = 184
        TabStop = False
        DataBinding.DataField = 'Interes'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 10
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 397
        Top = 184
        TabStop = False
        DataBinding.DataField = 'Total'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 11
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 524
        Top = 184
        TabStop = False
        DataBinding.DataField = 'Saldo'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 12
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 16
        Top = 22
        TabStop = False
        DataBinding.DataField = 'IdCuentaXCobrar'
        DataBinding.DataSource = DataSource
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 121
      end
      object dblblAnexo: TcxDBLabel
        Left = 16
        Top = 105
        DataBinding.DataField = 'Anexo'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 655
    Width = 668
    ExplicitTop = 655
    ExplicitWidth = 668
    inherited btnCancel: TButton
      Left = 586
      ExplicitLeft = 586
    end
    inherited btnOk: TButton
      Left = 505
      ExplicitLeft = 505
    end
    object cxLabel1: TcxLabel
      Left = 26
      Top = 16
      Caption = 'Total con Moratorios '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLblTotalConMora: TcxLabel
      Left = 207
      Top = 16
      Caption = '$ 0.00'
      Properties.Alignment.Horz = taRightJustify
      AnchorX = 242
    end
  end
  inherited DataSource: TDataSource
    Left = 176
  end
  inherited ActionList: TActionList
    Left = 208
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65776
  end
  object dsAnexos: TDataSource
    Left = 344
    Top = 8
  end
end
