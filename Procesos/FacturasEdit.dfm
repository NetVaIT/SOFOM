inherited frmEdFactura: TfrmEdFactura
  Caption = 'Edicion Factura'
  ClientHeight = 610
  ClientWidth = 694
  ExplicitWidth = 700
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 694
    Height = 569
    ExplicitWidth = 694
    ExplicitHeight = 569
    ClientRectBottom = 567
    ClientRectRight = 692
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 690
      ExplicitHeight = 541
      object PnlDetalleFact: TPanel
        Left = 0
        Top = 300
        Width = 690
        Height = 199
        Align = alClient
        BevelKind = bkTile
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 690
        Height = 160
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 25
          Top = 5
          Width = 29
          Height = 13
          Caption = 'Fecha'
          FocusControl = cxDBDateEdit1
        end
        object Label2: TLabel
          Left = 25
          Top = 45
          Width = 24
          Height = 13
          Caption = 'Serie'
        end
        object Label3: TLabel
          Left = 114
          Top = 45
          Width = 22
          Height = 13
          Caption = 'Folio'
        end
        object Label4: TLabel
          Left = 25
          Top = 84
          Width = 33
          Height = 13
          Caption = 'Cliente'
          FocusControl = DBLookupComboBox1
        end
        object Label9: TLabel
          Left = 216
          Top = 45
          Width = 43
          Height = 13
          Caption = 'UUID_TB'
        end
        object Label10: TLabel
          Left = 216
          Top = 5
          Width = 36
          Height = 13
          Caption = 'Estatus'
        end
        object Label13: TLabel
          Left = 338
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Tipo Documento'
        end
        object Label14: TLabel
          Left = 25
          Top = 132
          Width = 44
          Height = 13
          Caption = 'Domicilio:'
          FocusControl = DBLookupComboBox1
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 25
          Top = 20
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 25
          Top = 103
          Width = 473
          Height = 21
          DataField = 'Cliente'
          DataSource = DataSource
          TabOrder = 1
        end
        object cxDBLabel1: TcxDBLabel
          Left = 216
          Top = 61
          DataBinding.DataField = 'UUID_TB'
          DataBinding.DataSource = DataSource
          Height = 22
          Width = 321
        end
        object cxDBLabel6: TcxDBLabel
          Left = 25
          Top = 61
          DataBinding.DataField = 'Serie'
          DataBinding.DataSource = DataSource
          Height = 22
          Width = 89
        end
        object cxDBLabel9: TcxDBLabel
          Left = 75
          Top = 130
          DataBinding.DataField = 'DireccionC'
          DataBinding.DataSource = DataSource
          Visible = False
          Height = 22
          Width = 426
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 338
          Top = 20
          Width = 160
          Height = 21
          DataField = 'TipoDocumento'
          DataSource = DataSource
          TabOrder = 5
        end
        object cxDBLabel7: TcxDBLabel
          Left = 114
          Top = 61
          DataBinding.DataField = 'Folio'
          DataBinding.DataSource = DataSource
          Height = 22
          Width = 89
        end
        object cxDBLabel8: TcxDBLabel
          Left = 216
          Top = 22
          DataBinding.DataField = 'Estatus'
          DataBinding.DataSource = DataSource
          Height = 22
          Width = 89
        end
      end
      object pnl32: TPanel
        Left = 0
        Top = 160
        Width = 690
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label12: TLabel
          Left = 25
          Top = 3
          Width = 78
          Height = 13
          Caption = 'M'#233'todo de pago'
          FocusControl = DBLookupComboBox3
        end
        object Label11: TLabel
          Left = 225
          Top = 3
          Width = 62
          Height = 13
          Caption = 'NumCtaPago'
          FocusControl = cxDBTextEdit3
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 25
          Top = 19
          Width = 178
          Height = 21
          DataField = 'MetodoPago'
          DataSource = DataSource
          TabOrder = 0
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 225
          Top = 19
          DataBinding.DataField = 'NumCtaPago'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
      end
      object pnl33: TPanel
        Left = 0
        Top = 210
        Width = 690
        Height = 90
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Label15: TLabel
          Left = 338
          Top = 2
          Width = 72
          Height = 13
          Caption = 'Forma de pago'
          FocusControl = DBLookupComboBox4
        end
        object Label16: TLabel
          Left = 25
          Top = 2
          Width = 78
          Height = 13
          Caption = 'M'#233'todo de pago'
          FocusControl = DBLookupComboBox5
        end
        object Label17: TLabel
          Left = 338
          Top = 43
          Width = 75
          Height = 13
          Caption = 'Tipo de relaci'#243'n'
          FocusControl = DBLookupComboBox6
        end
        object Label18: TLabel
          Left = 25
          Top = 43
          Width = 18
          Height = 13
          Caption = 'Uso'
          FocusControl = DBLookupComboBox7
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 338
          Top = 18
          Width = 300
          Height = 21
          DataField = 'FormaPago33'
          DataSource = DataSource
          TabOrder = 1
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 25
          Top = 18
          Width = 300
          Height = 21
          DataField = 'MetodoPago33'
          DataSource = DataSource
          TabOrder = 0
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 338
          Top = 59
          Width = 300
          Height = 21
          DataField = 'TipoRelacion'
          DataSource = DataSource
          TabOrder = 3
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 25
          Top = 59
          Width = 300
          Height = 21
          DataField = 'UsoCFDI'
          DataSource = DataSource
          TabOrder = 2
        end
        object btnRelacionarCFDI: TButton
          Left = 643
          Top = 59
          Width = 42
          Height = 21
          Hint = 'Relacionar los CFDi anteriores'
          Caption = '...'
          TabOrder = 4
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 499
        Width = 690
        Height = 42
        Align = alBottom
        TabOrder = 4
        object Label5: TLabel
          Left = 9
          Top = 13
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
          Left = 381
          Top = 13
          Width = 32
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
          Left = 174
          Top = 13
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
          Left = 517
          Top = 13
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
        object cxDBLabel2: TcxDBLabel
          Left = 93
          Top = 11
          DataBinding.DataField = 'SubTotal'
          DataBinding.DataSource = DataSource
          Height = 22
          Width = 89
        end
        object cxDBLabel3: TcxDBLabel
          Left = 286
          Top = 12
          DataBinding.DataField = 'TotalImpuestoTrasladado'
          DataBinding.DataSource = DataSource
          Height = 22
          Width = 89
        end
        object cxDBLabel4: TcxDBLabel
          Left = 422
          Top = 11
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = DataSource
          Height = 21
          Width = 89
        end
        object cxDBLabel5: TcxDBLabel
          Left = 567
          Top = 11
          DataBinding.DataField = 'SaldoDocumento'
          DataBinding.DataSource = DataSource
          Height = 21
          Width = 89
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 569
    Width = 694
    ExplicitTop = 569
    ExplicitWidth = 694
    DesignSize = (
      694
      41)
    inherited btnCancel: TButton
      Left = 612
      ExplicitLeft = 612
    end
    inherited btnOk: TButton
      Left = 531
      ExplicitLeft = 531
    end
  end
  inherited DataSource: TDataSource
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
