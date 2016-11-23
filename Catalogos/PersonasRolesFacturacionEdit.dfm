inherited frmPersonasRolesFacturacionEdit: TfrmPersonasRolesFacturacionEdit
  Caption = 'Documento para Facturacion'
  ClientHeight = 249
  ClientWidth = 418
  ExplicitWidth = 424
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 418
    Height = 208
    ExplicitWidth = 418
    ExplicitHeight = 208
    ClientRectBottom = 206
    ClientRectRight = 416
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 414
      ExplicitHeight = 178
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Archivo'
      end
      object Label2: TLabel
        Left = 16
        Top = 79
        Width = 27
        Height = 13
        Caption = 'Clave'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 119
        Width = 131
        Height = 13
        Caption = 'Vencimiento del Documento'
      end
      object btnUpdateFile: TSpeedButton
        Left = 375
        Top = 30
        Width = 23
        Height = 22
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 92
        DataBinding.DataField = 'Clave'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 382
      end
      object cxDBLabel1: TcxDBLabel
        Left = 14
        Top = 30
        DataBinding.DataField = 'Archivo'
        DataBinding.DataSource = DataSource
        Height = 45
        Width = 355
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 135
        DataBinding.DataField = 'VencimientoDocumento'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 145
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 208
    Width = 418
    ExplicitTop = 208
    ExplicitWidth = 418
    inherited btnOk: TButton
      Left = 255
      ExplicitLeft = 255
    end
    inherited btnCancel: TButton
      Left = 336
      ExplicitLeft = 336
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasRolesFacturacion.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
