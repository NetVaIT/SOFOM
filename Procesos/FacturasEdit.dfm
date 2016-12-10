inherited frmEdFactura: TfrmEdFactura
  Caption = 'Edicion Factura'
  ClientHeight = 654
  ClientWidth = 1046
  ExplicitWidth = 1052
  ExplicitHeight = 683
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 1046
    Height = 613
    ExplicitWidth = 1046
    ExplicitHeight = 613
    ClientRectBottom = 611
    ClientRectRight = 1044
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1042
      ExplicitHeight = 583
      object Label1: TLabel
        Left = 48
        Top = 40
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 248
        Top = 40
        Width = 24
        Height = 13
        Caption = 'Serie'
      end
      object Label3: TLabel
        Left = 400
        Top = 40
        Width = 22
        Height = 13
        Caption = 'Folio'
      end
      object Label4: TLabel
        Left = 48
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLookupComboBox1
      end
      object Label5: TLabel
        Left = 48
        Top = 232
        Width = 42
        Height = 13
        Caption = 'SubTotal'
      end
      object Label6: TLabel
        Left = 48
        Top = 283
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label7: TLabel
        Left = 232
        Top = 232
        Width = 122
        Height = 13
        Caption = 'TotalImpuestoTrasladado'
      end
      object Label8: TLabel
        Left = 232
        Top = 283
        Width = 80
        Height = 13
        Caption = 'SaldoDocumento'
      end
      object Label9: TLabel
        Left = 472
        Top = 232
        Width = 43
        Height = 13
        Caption = 'UUID_TB'
      end
      object Label10: TLabel
        Left = 616
        Top = 40
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label11: TLabel
        Left = 248
        Top = 152
        Width = 62
        Height = 13
        Caption = 'NumCtaPago'
        FocusControl = cxDBTextEdit3
      end
      object Label12: TLabel
        Left = 48
        Top = 152
        Width = 60
        Height = 13
        Caption = 'MetodoPago'
        FocusControl = DBLookupComboBox3
      end
      object PnlDetalleFact: TPanel
        Left = 0
        Top = 352
        Width = 1042
        Height = 231
        Align = alBottom
        BevelKind = bkTile
        TabOrder = 0
        ExplicitTop = 354
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 48
        Top = 56
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 48
        Top = 104
        Width = 473
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 248
        Top = 168
        DataBinding.DataField = 'NumCtaPago'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 48
        Top = 168
        Width = 178
        Height = 21
        DataField = 'MetodoPago'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBLabel1: TcxDBLabel
        Left = 472
        Top = 249
        DataBinding.DataField = 'UUID_TB'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 321
      end
      object cxDBLabel2: TcxDBLabel
        Left = 48
        Top = 249
        DataBinding.DataField = 'SubTotal'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel3: TcxDBLabel
        Left = 232
        Top = 249
        DataBinding.DataField = 'TotalImpuestoTrasladado'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel4: TcxDBLabel
        Left = 48
        Top = 301
        DataBinding.DataField = 'Total'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 89
      end
      object cxDBLabel5: TcxDBLabel
        Left = 232
        Top = 301
        DataBinding.DataField = 'SaldoDocumento'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 89
      end
      object cxDBLabel6: TcxDBLabel
        Left = 248
        Top = 59
        DataBinding.DataField = 'Serie'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 89
      end
      object cxDBLabel9: TcxDBLabel
        Left = 552
        Top = 104
        DataBinding.DataField = 'UUID_TB'
        DataBinding.DataSource = DataSource
        Height = 22
        Width = 321
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 613
    Width = 1046
    ExplicitTop = 613
    ExplicitWidth = 1046
    DesignSize = (
      1046
      41)
    inherited btnCancel: TButton
      Left = 964
      ExplicitLeft = 964
    end
    inherited btnOk: TButton
      Left = 883
      ExplicitLeft = 883
    end
  end
  object cxDBLabel7: TcxDBLabel [2]
    Left = 402
    Top = 87
    DataBinding.DataField = 'Folio'
    DataBinding.DataSource = DataSource
    Height = 22
    Width = 89
  end
  object cxDBLabel8: TcxDBLabel [3]
    Left = 618
    Top = 87
    DataBinding.DataField = 'Estatus'
    DataBinding.DataSource = DataSource
    Height = 22
    Width = 89
  end
  inherited DataSource: TDataSource
    DataSet = dmFacturas.adodsMaster
    Left = 160
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
