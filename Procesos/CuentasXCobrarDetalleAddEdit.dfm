inherited frmCuentasXCobrarDetalleAddEdit: TfrmCuentasXCobrarDetalleAddEdit
  Caption = 'Agregar detalle de la cuenta'
  ClientHeight = 180
  ClientWidth = 338
  ExplicitWidth = 344
  ExplicitHeight = 209
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 338
    Height = 139
    ExplicitWidth = 338
    ExplicitHeight = 139
    ClientRectBottom = 137
    ClientRectRight = 336
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 38
        Height = 13
        Caption = 'Importe'
      end
      object edtDescripcion: TcxTextEdit
        Left = 16
        Top = 25
        Properties.MaxLength = 100
        TabOrder = 0
        Width = 304
      end
      object edtImporte: TcxCalcEdit
        Left = 16
        Top = 64
        EditValue = 0.000000000000000000
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 139
    Width = 338
    ExplicitTop = 139
    ExplicitWidth = 338
    inherited btnCancel: TButton
      Left = 256
      ExplicitLeft = 256
    end
    inherited btnOk: TButton
      Left = 175
      ExplicitLeft = 175
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
