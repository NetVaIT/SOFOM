inherited frmFacturasPropiedadesEdit: TfrmFacturasPropiedadesEdit
  Caption = 'Factura '
  ClientHeight = 267
  ClientWidth = 390
  ExplicitWidth = 396
  ExplicitHeight = 296
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 390
    Height = 226
    ExplicitWidth = 380
    ExplicitHeight = 267
    ClientRectBottom = 224
    ClientRectRight = 388
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 28
      ExplicitWidth = 407
      ExplicitHeight = 239
      object Label15: TLabel
        Left = 25
        Top = 43
        Width = 57
        Height = 13
        Caption = 'Forma pago'
        FocusControl = dblcbFormaPago
      end
      object Label16: TLabel
        Left = 25
        Top = 2
        Width = 63
        Height = 13
        Caption = 'Metodo pago'
        FocusControl = dblcbMetodPago
      end
      object Label17: TLabel
        Left = 25
        Top = 132
        Width = 60
        Height = 13
        Caption = 'Tipo relaci'#243'n'
        FocusControl = dblcbTipoRelacion
      end
      object Label18: TLabel
        Left = 25
        Top = 86
        Width = 18
        Height = 13
        Caption = 'Uso'
        FocusControl = dblcbUso
      end
      object dblcbFormaPago: TDBLookupComboBox
        Left = 25
        Top = 59
        Width = 300
        Height = 21
        DataField = 'FormaPago33'
        DataSource = DataSource
        TabOrder = 1
      end
      object dblcbMetodPago: TDBLookupComboBox
        Left = 25
        Top = 18
        Width = 300
        Height = 21
        DataField = 'MetodoPago33'
        DataSource = DataSource
        TabOrder = 0
      end
      object dblcbTipoRelacion: TDBLookupComboBox
        Left = 25
        Top = 151
        Width = 300
        Height = 21
        DataField = 'TipoRelacion'
        DataSource = DataSource
        TabOrder = 3
      end
      object dblcbUso: TDBLookupComboBox
        Left = 25
        Top = 105
        Width = 300
        Height = 21
        DataField = 'UsoCFDI'
        DataSource = DataSource
        TabOrder = 2
      end
      object btnRelacionarCFDI: TButton
        Left = 331
        Top = 151
        Width = 42
        Height = 21
        Hint = 'Relacionar los CFDi anteriores'
        Caption = '...'
        TabOrder = 4
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 226
    Width = 390
    ExplicitTop = 267
    ExplicitWidth = 380
    inherited btnCancel: TButton
      Left = 308
      ExplicitLeft = 298
    end
    inherited btnOk: TButton
      Left = 227
      ExplicitLeft = 217
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
