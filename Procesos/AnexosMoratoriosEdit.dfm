inherited frmAnexosMoratoriosEdit: TfrmAnexosMoratoriosEdit
  Caption = 'Moratorio'
  ClientHeight = 296
  ClientWidth = 408
  ExplicitWidth = 414
  ExplicitHeight = 325
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 408
    Height = 255
    ExplicitWidth = 220
    ClientRectBottom = 253
    ClientRectRight = 406
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 404
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 270
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 23
        Height = 13
        Caption = 'Base'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 143
        Top = 96
        Width = 51
        Height = 13
        Caption = 'Descuento'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 270
        Top = 93
        Width = 45
        Height = 13
        Caption = 'Impuesto'
        FocusControl = cxDBTextEdit4
      end
      object Label7: TLabel
        Left = 270
        Top = 176
        Width = 80
        Height = 13
        Caption = 'Importe aplicado'
        FocusControl = cxDBTextEdit5
      end
      object Label8: TLabel
        Left = 143
        Top = 16
        Width = 57
        Height = 13
        Caption = 'Cancelacion'
        FocusControl = cxDBDateEdit2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 270
        Top = 32
        Width = 121
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        Enabled = False
        TabOrder = 0
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'ImporteBase'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 143
        Top = 112
        DataBinding.DataField = 'Descuento'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 270
        Top = 112
        DataBinding.DataField = 'Impuesto'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 270
        Top = 192
        DataBinding.DataField = 'ImporteAplicado'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 6
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 143
        Top = 32
        DataBinding.DataField = 'Cancelacion'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 7
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 255
    Width = 408
    ExplicitWidth = 220
    inherited btnCancel: TButton
      Left = 326
      ExplicitLeft = 138
    end
    inherited btnOk: TButton
      Left = 245
      ExplicitLeft = 57
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
