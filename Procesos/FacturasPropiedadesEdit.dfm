inherited frmFacturasPropiedadesEdit: TfrmFacturasPropiedadesEdit
  Caption = 'Factura '
  ClientHeight = 308
  ClientWidth = 380
  ExplicitWidth = 386
  ExplicitHeight = 337
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 380
    Height = 267
    ClientRectBottom = 265
    ClientRectRight = 378
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 434
      ExplicitHeight = 297
      object Label15: TLabel
        Left = 25
        Top = 43
        Width = 57
        Height = 13
        Caption = 'Forma pago'
        FocusControl = DBLookupComboBox2
      end
      object Label16: TLabel
        Left = 25
        Top = 2
        Width = 63
        Height = 13
        Caption = 'Metodo pago'
        FocusControl = DBLookupComboBox1
      end
      object Label17: TLabel
        Left = 25
        Top = 132
        Width = 60
        Height = 13
        Caption = 'Tipo relaci'#243'n'
        FocusControl = DBLookupComboBox4
      end
      object Label18: TLabel
        Left = 25
        Top = 86
        Width = 18
        Height = 13
        Caption = 'Uso'
        FocusControl = DBLookupComboBox3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 25
        Top = 59
        Width = 300
        Height = 21
        DataField = 'FormaPago33'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 25
        Top = 18
        Width = 300
        Height = 21
        DataField = 'MetodoPago33'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 25
        Top = 151
        Width = 300
        Height = 21
        DataField = 'TipoRelacion'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 25
        Top = 105
        Width = 300
        Height = 21
        DataField = 'UsoCFDI'
        DataSource = DataSource
        TabOrder = 2
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 267
    Width = 380
    inherited btnCancel: TButton
      Left = 298
    end
    inherited btnOk: TButton
      Left = 217
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
