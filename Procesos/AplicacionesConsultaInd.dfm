inherited frmAplicacionesInd: TfrmAplicacionesInd
  Caption = 'Aplicaci'#243'n de Cuenta X Cobrar'
  ClientHeight = 351
  ClientWidth = 651
  ExplicitWidth = 657
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 651
    Height = 310
    ClientRectBottom = 308
    ClientRectRight = 649
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 662
      ExplicitHeight = 329
      object Label1: TLabel
        Left = 173
        Top = 38
        Width = 57
        Height = 13
        Caption = 'RazonSocial'
      end
      object Label3: TLabel
        Left = 28
        Top = 40
        Width = 79
        Height = 13
        Caption = 'Fecha Aplicaci'#243'n'
      end
      object Label4: TLabel
        Left = 28
        Top = 88
        Width = 56
        Height = 13
        Caption = 'Fecha Pago'
      end
      object Label5: TLabel
        Left = 346
        Top = 88
        Width = 49
        Height = 13
        Caption = 'Folio Pago'
      end
      object Label6: TLabel
        Left = 173
        Top = 87
        Width = 51
        Height = 13
        Caption = 'Serie Pago'
      end
      object Label8: TLabel
        Left = 173
        Top = 144
        Width = 90
        Height = 13
        Caption = 'No CuentaXCobrar'
      end
      object Label9: TLabel
        Left = 28
        Top = 144
        Width = 106
        Height = 13
        Caption = 'Fecha CuentaXCobrar'
      end
      object Label10: TLabel
        Left = 346
        Top = 141
        Width = 47
        Height = 13
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBLabel2: TcxDBLabel
        Left = 173
        Top = 56
        DataBinding.DataField = 'RazonSocial'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 458
      end
      object cxDBLabel3: TcxDBLabel
        Left = 28
        Top = 56
        DataBinding.DataField = 'FechaAplicacion'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 130
      end
      object cxDBLabel4: TcxDBLabel
        Left = 28
        Top = 104
        DataBinding.DataField = 'FechaPago'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 130
      end
      object cxDBLabel5: TcxDBLabel
        Left = 28
        Top = 160
        DataBinding.DataField = 'FechaCXC'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 130
      end
      object cxDBLabel6: TcxDBLabel
        Left = 173
        Top = 106
        DataBinding.DataField = 'SeriePago'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 121
      end
      object cxDBLabel7: TcxDBLabel
        Left = 173
        Top = 160
        DataBinding.DataField = 'NoCuentaXCobrar'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 121
      end
      object cxDBLabel8: TcxDBLabel
        Left = 346
        Top = 160
        DataBinding.DataField = 'importe'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 121
      end
      object cxDBLabel9: TcxDBLabel
        Left = 346
        Top = 104
        DataBinding.DataField = 'FolioPago'
        DataBinding.DataSource = DataSource
        Height = 21
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 310
    Width = 651
    inherited btnCancel: TButton
      Left = 569
    end
    inherited btnOk: TButton
      Left = 488
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmAplicacionesConsulta.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65800
  end
end
