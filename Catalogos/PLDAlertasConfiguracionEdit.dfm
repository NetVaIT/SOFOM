inherited frmPLDAlertasConfiguracionEdit: TfrmPLDAlertasConfiguracionEdit
  Caption = 'Configurar alerta'
  ClientHeight = 390
  ExplicitWidth = 444
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 349
    ClientRectBottom = 347
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 350
      object Label1: TLabel
        Left = 16
        Top = 48
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 88
        Width = 40
        Height = 13
        Caption = 'Mensaje'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 128
        Width = 77
        Height = 13
        Caption = 'Tipo de persona'
        FocusControl = DBLookupComboBox1
      end
      object Label4: TLabel
        Left = 16
        Top = 168
        Width = 78
        Height = 13
        Caption = 'Metodo de pago'
        FocusControl = DBLookupComboBox2
      end
      object Label5: TLabel
        Left = 16
        Top = 208
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 16
        Top = 248
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox3
      end
      object Label7: TLabel
        Left = 16
        Top = 5
        Width = 66
        Height = 13
        Caption = 'Tipo de alerta'
        FocusControl = DBLookupComboBox4
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 400
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'Mensaje'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 400
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 144
        Width = 300
        Height = 21
        DataField = 'PersonaTipo'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 184
        Width = 300
        Height = 21
        DataField = 'MetodoPago'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 224
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 16
        Top = 264
        Width = 300
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 6
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 16
        Top = 291
        Caption = 'Acumular'
        DataBinding.DataField = 'Acumular'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 16
        Top = 21
        Width = 400
        Height = 21
        DataField = 'PLDAlertaTipo'
        DataSource = DataSource
        TabOrder = 0
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 349
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
