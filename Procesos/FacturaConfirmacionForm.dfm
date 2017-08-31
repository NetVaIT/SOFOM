object FrmDatosFacturaPrev: TFrmDatosFacturaPrev
  Left = 0
  Top = 0
  Caption = 'Confirmaci'#243'n Datos Factura '
  ClientHeight = 546
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 265
    Width = 805
    Height = 233
    Align = alClient
    DataSource = DSConceptosPrevios
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdCFDI'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IdUnidadMedida'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cantidad'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidad'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoIdentifica'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ValorUnitario'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IdCFDIConcepto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IdCuentaXCobrarDetalle'
        Visible = False
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 498
    Width = 805
    Height = 48
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 544
    ExplicitWidth = 743
    DesignSize = (
      805
      48)
    object btnCancel: TButton
      Left = 658
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 766
    end
    object btnOk: TButton
      Left = 577
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 1
      ExplicitLeft = 685
    end
    object BtnAjustesBase: TButton
      Left = 93
      Top = 14
      Width = 188
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ajusta M'#233'todo Pago o Concepto'
      TabOrder = 2
      OnClick = BtnAjustesBaseClick
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 805
    Height = 265
    Align = alTop
    TabOrder = 2
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 827
    ClientRectBottom = 263
    ClientRectLeft = 2
    ClientRectRight = 803
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 28
      object Label1: TLabel
        Left = 272
        Top = 57
        Width = 92
        Height = 13
        Caption = 'Tipo Comprobante:'
      end
      object DBText1: TDBText
        Left = 370
        Top = 57
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'TipoComp'
        DataSource = DSCFDIPrevio
      end
      object Label2: TLabel
        Left = 52
        Top = 57
        Width = 81
        Height = 13
        Caption = 'Tipo Documento:'
      end
      object DBText2: TDBText
        Left = 139
        Top = 57
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'TipoDocumento'
        DataSource = DSCFDIPrevio
      end
      object Label3: TLabel
        Left = 96
        Top = 76
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object DBText3: TDBText
        Left = 139
        Top = 76
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'Cliente'
        DataSource = DSCFDIPrevio
      end
      object Label4: TLabel
        Left = 289
        Top = 153
        Width = 44
        Height = 13
        Caption = 'Subtotal:'
      end
      object DBText4: TDBText
        Left = 346
        Top = 153
        Width = 65
        Height = 17
        DataField = 'SubTotal'
        DataSource = DSCFDIPrevio
      end
      object Label5: TLabel
        Left = 48
        Top = 95
        Width = 85
        Height = 13
        Caption = 'Lugar Expedicion:'
      end
      object DBText5: TDBText
        Left = 139
        Top = 95
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'LugarExpedicion'
        DataSource = DSCFDIPrevio
      end
      object Label6: TLabel
        Left = 458
        Top = 95
        Width = 26
        Height = 13
        Caption = 'Folio:'
      end
      object Label7: TLabel
        Left = 336
        Top = 95
        Width = 28
        Height = 13
        Caption = 'Serie:'
      end
      object DBText6: TDBText
        Left = 370
        Top = 95
        Width = 65
        Height = 17
        DataField = 'Serie'
        DataSource = DSCFDIPrevio
      end
      object Label8: TLabel
        Left = 91
        Top = 180
        Width = 42
        Height = 13
        Caption = 'Moneda:'
      end
      object DBText7: TDBText
        Left = 139
        Top = 180
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'ClaveMoneda'
        DataSource = DSCFDIPrevio
      end
      object Label9: TLabel
        Left = 305
        Top = 199
        Width = 28
        Height = 13
        Caption = 'Total:'
      end
      object Label10: TLabel
        Left = 312
        Top = 175
        Width = 21
        Height = 13
        Caption = 'IVA:'
      end
      object DBText9: TDBText
        Left = 346
        Top = 176
        Width = 65
        Height = 17
        DataField = 'TotalImpuestoTrasladado'
        DataSource = DSCFDIPrevio
      end
      object DBText10: TDBText
        Left = 490
        Top = 95
        Width = 65
        Height = 17
        DataField = 'Folio'
        DataSource = DSCFDIPrevio
      end
      object DBText11: TDBText
        Left = 139
        Top = 199
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'ClaveMoneda'
        DataSource = DSCFDIPrevio
      end
      object Label11: TLabel
        Left = 66
        Top = 134
        Width = 67
        Height = 13
        Caption = 'M'#233'todo Pago:'
      end
      object DBText12: TDBText
        Left = 139
        Top = 134
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'MetodoPago'
        DataSource = DSCFDIPrevio
      end
      object Label12: TLabel
        Left = 45
        Top = 199
        Width = 88
        Height = 13
        Caption = 'ClaveSATMoneda:'
      end
      object DBText13: TDBText
        Left = 346
        Top = 199
        Width = 65
        Height = 17
        DataField = 'Total'
        DataSource = DSCFDIPrevio
      end
      object Label13: TLabel
        Left = 23
        Top = 153
        Width = 110
        Height = 13
        Caption = 'ClaveSATMetodoPago:'
      end
      object DBText14: TDBText
        Left = 139
        Top = 153
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'MetPagoClaveSAT'
        DataSource = DSCFDIPrevio
      end
      object Label14: TLabel
        Left = 52
        Top = 17
        Width = 58
        Height = 13
        Caption = 'RFC Emisor:'
      end
      object DBText8: TDBText
        Left = 139
        Top = 17
        Width = 94
        Height = 13
        AutoSize = True
        DataField = 'RFCEmisor'
        DataSource = DSCFDIPrevio
      end
      object Label15: TLabel
        Left = 272
        Top = 17
        Width = 33
        Height = 13
        Caption = 'Fecha:'
      end
      object DBText15: TDBText
        Left = 311
        Top = 17
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'Fecha'
        DataSource = DSCFDIPrevio
      end
    end
  end
  object DSCFDIPrevio: TDataSource
    DataSet = dmFacturas.adodsMaster
    Left = 696
    Top = 40
  end
  object DSConceptosPrevios: TDataSource
    DataSet = dmFacturas.ADODtStCFDIConceptos
    Left = 696
    Top = 352
  end
  object dsQryAuxiliar: TDataSource
    DataSet = dmFacturas.ADOQryAuxiliar
    Left = 688
    Top = 224
  end
end
