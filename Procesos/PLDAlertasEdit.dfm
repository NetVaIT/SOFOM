inherited frmPLDAlertasEdit: TfrmPLDAlertasEdit
  Caption = 'frmPLDAlertasEdit'
  ClientHeight = 567
  ClientWidth = 359
  ExplicitWidth = 365
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 359
    Height = 526
    ClientRectBottom = 524
    ClientRectRight = 357
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 28
      ExplicitWidth = 355
      ExplicitHeight = 605
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 93
        Height = 13
        Caption = 'Fecha de detecci'#243'n'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 68
        Height = 13
        Caption = 'Fechade pago'
        FocusControl = cxDBDateEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 244
        Top = 56
        Width = 49
        Height = 13
        Caption = 'Folio pago'
      end
      object Label5: TLabel
        Left = 158
        Top = 53
        Width = 51
        Height = 13
        Caption = 'Serie pago'
        FocusControl = cxDBTextEdit2
      end
      object Label6: TLabel
        Left = 24
        Top = 144
        Width = 78
        Height = 13
        Caption = 'Metodo de pago'
        FocusControl = cxDBTextEdit3
      end
      object Label7: TLabel
        Left = 203
        Top = 144
        Width = 80
        Height = 13
        Caption = 'Importe de pago'
        FocusControl = cxDBTextEdit4
      end
      object Label8: TLabel
        Left = 24
        Top = 224
        Width = 85
        Height = 13
        Caption = 'Tipo de operaci'#243'n'
        FocusControl = DBLookupComboBox1
      end
      object Label9: TLabel
        Left = 24
        Top = 184
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object Label10: TLabel
        Left = 24
        Top = 264
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox3
      end
      object Label11: TLabel
        Left = 24
        Top = 304
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label12: TLabel
        Left = 24
        Top = 384
        Width = 30
        Height = 13
        Caption = 'Raz'#243'n'
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'FechaDeteccion'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'FechaPago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 112
        DataBinding.DataField = 'Cliente'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 2
        Width = 300
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 158
        Top = 72
        DataBinding.DataField = 'SeriePago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 3
        Width = 80
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 160
        DataBinding.DataField = 'MetodoPago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 4
        Width = 173
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 203
        Top = 160
        DataBinding.DataField = 'ImportePago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 5
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 240
        Width = 300
        Height = 21
        DataField = 'OperacionTipo'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 200
        Width = 300
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        Enabled = False
        TabOrder = 7
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 24
        Top = 280
        Width = 300
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 8
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 464
        Caption = 'R24'
        DataBinding.DataField = 'R24'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 9
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 244
        Top = 72
        DataBinding.DataField = 'FolioPago'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 10
        Width = 80
      end
      object cxDBMemo1: TcxDBMemo
        Left = 24
        Top = 320
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 11
        Height = 58
        Width = 300
      end
      object cxDBMemo2: TcxDBMemo
        Left = 24
        Top = 400
        DataBinding.DataField = 'Razon'
        DataBinding.DataSource = DataSource
        TabOrder = 12
        Height = 58
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 526
    Width = 359
    inherited btnCancel: TButton
      Left = 277
    end
    inherited btnOk: TButton
      Left = 196
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
