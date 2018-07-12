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
  Position = poOwnerFormCenter
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
        FieldName = 'IdCFDIConcepto'
        Visible = False
      end
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
        FieldName = 'IdCuentaXCobrarDetalle'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SATClaveProdServ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cantidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SATClaveUnidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoIdentifica'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorUnitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descuento'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 498
    Width = 805
    Height = 48
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      805
      48)
    object btnCancel: TButton
      Left = 714
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOk: TButton
      Left = 633
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
    object BtnAjustesBase: TButton
      Left = 147
      Top = 14
      Width = 188
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ajusta M'#233'todo Pago o Concepto'
      TabOrder = 2
      Visible = False
      OnClick = BtnAjustesBaseClick
    end
    object Button1: TButton
      Left = 11
      Top = 14
      Width = 122
      Height = 25
      Caption = 'Ajustar propiedades'
      TabOrder = 3
      OnClick = Button1Click
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
    ClientRectBottom = 263
    ClientRectLeft = 2
    ClientRectRight = 803
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      object Label1: TLabel
        Left = 241
        Top = 36
        Width = 92
        Height = 13
        Caption = 'Tipo Comprobante:'
      end
      object DBText1: TDBText
        Left = 339
        Top = 36
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'TipoComp'
        DataSource = DSCFDIPrevio
      end
      object Label2: TLabel
        Left = 16
        Top = 36
        Width = 81
        Height = 13
        Caption = 'Tipo Documento:'
      end
      object DBText2: TDBText
        Left = 103
        Top = 36
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'TipoDocumento'
        DataSource = DSCFDIPrevio
      end
      object Label3: TLabel
        Left = 60
        Top = 55
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object DBText3: TDBText
        Left = 103
        Top = 55
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'Cliente'
        DataSource = DSCFDIPrevio
      end
      object Label4: TLabel
        Left = 289
        Top = 129
        Width = 44
        Height = 13
        Caption = 'Subtotal:'
      end
      object DBText4: TDBText
        Left = 339
        Top = 129
        Width = 65
        Height = 17
        DataField = 'SubTotal'
        DataSource = DSCFDIPrevio
      end
      object Label5: TLabel
        Left = 12
        Top = 74
        Width = 85
        Height = 13
        Caption = 'Lugar Expedicion:'
      end
      object DBText5: TDBText
        Left = 103
        Top = 74
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'LugarExpedicion'
        DataSource = DSCFDIPrevio
      end
      object Label6: TLabel
        Left = 307
        Top = 74
        Width = 26
        Height = 13
        Caption = 'Folio:'
      end
      object Label7: TLabel
        Left = 305
        Top = 55
        Width = 28
        Height = 13
        Caption = 'Serie:'
      end
      object DBText6: TDBText
        Left = 339
        Top = 55
        Width = 65
        Height = 17
        DataField = 'Serie'
        DataSource = DSCFDIPrevio
      end
      object Label8: TLabel
        Left = 55
        Top = 156
        Width = 42
        Height = 13
        Caption = 'Moneda:'
      end
      object DBText7: TDBText
        Left = 103
        Top = 156
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'ClaveMoneda'
        DataSource = DSCFDIPrevio
      end
      object Label9: TLabel
        Left = 305
        Top = 175
        Width = 28
        Height = 13
        Caption = 'Total:'
      end
      object Label10: TLabel
        Left = 312
        Top = 156
        Width = 21
        Height = 13
        Caption = 'IVA:'
      end
      object DBText9: TDBText
        Left = 339
        Top = 157
        Width = 65
        Height = 17
        DataField = 'TotalImpuestoTrasladado'
        DataSource = DSCFDIPrevio
      end
      object DBText10: TDBText
        Left = 339
        Top = 74
        Width = 65
        Height = 17
        DataField = 'Folio'
        DataSource = DSCFDIPrevio
      end
      object DBText11: TDBText
        Left = 103
        Top = 175
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'ClaveMoneda'
        DataSource = DSCFDIPrevio
      end
      object Label11: TLabel
        Left = 30
        Top = 110
        Width = 67
        Height = 13
        Caption = 'M'#233'todo Pago:'
      end
      object DBText12: TDBText
        Left = 103
        Top = 110
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'MetodoPago33'
        DataSource = DSCFDIPrevio
      end
      object Label12: TLabel
        Left = 9
        Top = 175
        Width = 88
        Height = 13
        Caption = 'ClaveSATMoneda:'
      end
      object DBText13: TDBText
        Left = 339
        Top = 175
        Width = 65
        Height = 17
        DataField = 'Total'
        DataSource = DSCFDIPrevio
      end
      object Label13: TLabel
        Left = 21
        Top = 129
        Width = 76
        Height = 13
        Caption = 'Forma de pago:'
      end
      object DBText14: TDBText
        Left = 103
        Top = 129
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'FormaPago33'
        DataSource = DSCFDIPrevio
      end
      object Label14: TLabel
        Left = 39
        Top = 17
        Width = 58
        Height = 13
        Caption = 'RFC Emisor:'
      end
      object DBText8: TDBText
        Left = 103
        Top = 17
        Width = 41
        Height = 13
        AutoSize = True
        DataField = 'RFCEmisor'
        DataSource = DSCFDIPrevio
      end
      object Label15: TLabel
        Left = 300
        Top = 17
        Width = 33
        Height = 13
        Caption = 'Fecha:'
      end
      object DBText15: TDBText
        Left = 339
        Top = 17
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'Fecha'
        DataSource = DSCFDIPrevio
      end
      object Label16: TLabel
        Left = 75
        Top = 194
        Width = 22
        Height = 13
        Caption = 'Uso:'
      end
      object DBText16: TDBText
        Left = 103
        Top = 194
        Width = 47
        Height = 13
        AutoSize = True
        DataField = 'UsoCFDI'
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
    DataSet = dmFacturas.adodsCFDIConceptos
    Left = 696
    Top = 352
  end
end
