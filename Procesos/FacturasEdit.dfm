inherited frmEdFactura: TfrmEdFactura
  Caption = 'Edicion Factura'
  ClientHeight = 610
  ClientWidth = 701
  ExplicitWidth = 707
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 701
    Height = 569
    ExplicitLeft = -1
    ExplicitWidth = 1046
    ExplicitHeight = 613
    ClientRectBottom = 567
    ClientRectRight = 699
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 1042
      ExplicitHeight = 585
      object Label1: TLabel
        Left = 25
        Top = 13
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 25
        Top = 58
        Width = 24
        Height = 13
        Caption = 'Serie'
      end
      object Label3: TLabel
        Left = 114
        Top = 58
        Width = 22
        Height = 13
        Caption = 'Folio'
      end
      object Label4: TLabel
        Left = 25
        Top = 101
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLookupComboBox1
      end
      object Label5: TLabel
        Left = 53
        Top = 224
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SubTotal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 53
        Top = 273
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 25
        Top = 247
        Width = 103
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'IVA Trasladado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 230
        Top = 273
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 216
        Top = 58
        Width = 43
        Height = 13
        Caption = 'UUID_TB'
      end
      object Label10: TLabel
        Left = 216
        Top = 13
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label11: TLabel
        Left = 225
        Top = 173
        Width = 62
        Height = 13
        Caption = 'NumCtaPago'
        FocusControl = cxDBTextEdit3
      end
      object Label12: TLabel
        Left = 25
        Top = 173
        Width = 63
        Height = 13
        Caption = 'M'#233'todo Pago'
        FocusControl = DBLookupComboBox3
      end
      object Label13: TLabel
        Left = 338
        Top = 13
        Width = 77
        Height = 13
        Caption = 'Tipo Documento'
      end
      object Label14: TLabel
        Left = 25
        Top = 149
        Width = 44
        Height = 13
        Caption = 'Domicilio:'
        FocusControl = DBLookupComboBox1
      end
      object PnlDetalleFact: TPanel
        Left = 0
        Top = 310
        Width = 697
        Height = 231
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 0
        ExplicitTop = 354
        ExplicitWidth = 1042
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 25
        Top = 28
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 25
        Top = 120
        Width = 473
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 225
        Top = 189
        DataBinding.DataField = 'NumCtaPago'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 25
        Top = 189
        Width = 178
        Height = 21
        DataField = 'MetodoPago'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBLabel1: TcxDBLabel
        Left = 216
        Top = 74
        DataBinding.DataField = 'UUID_TB'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 321
      end
      object cxDBLabel2: TcxDBLabel
        Left = 137
        Top = 222
        DataBinding.DataField = 'SubTotal'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel3: TcxDBLabel
        Left = 137
        Top = 246
        DataBinding.DataField = 'TotalImpuestoTrasladado'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel4: TcxDBLabel
        Left = 137
        Top = 271
        DataBinding.DataField = 'Total'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 89
      end
      object cxDBLabel5: TcxDBLabel
        Left = 280
        Top = 271
        DataBinding.DataField = 'SaldoDocumento'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 89
      end
      object cxDBLabel6: TcxDBLabel
        Left = 25
        Top = 74
        DataBinding.DataField = 'Serie'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel9: TcxDBLabel
        Left = 72
        Top = 147
        DataBinding.DataField = 'DireccionC'
        DataBinding.DataSource = DataSource
        Visible = False
        Height = 22
        Width = 426
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 338
        Top = 28
        Width = 160
        Height = 21
        DataField = 'TipoDocumento'
        DataSource = DataSource
        TabOrder = 12
      end
      object cxDBLabel7: TcxDBLabel
        Left = 114
        Top = 74
        DataBinding.DataField = 'Folio'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel8: TcxDBLabel
        Left = 216
        Top = 30
        DataBinding.DataField = 'Estatus'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 569
    Width = 701
    ExplicitTop = 613
    ExplicitWidth = 1046
    DesignSize = (
      701
      41)
    inherited btnCancel: TButton
      Left = 619
      ExplicitLeft = 964
    end
    inherited btnOk: TButton
      Left = 538
      ExplicitLeft = 883
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmFacturas.adodsMaster
    Left = 496
  end
  inherited ActionList: TActionList
    Left = 536
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 66108
  end
end
