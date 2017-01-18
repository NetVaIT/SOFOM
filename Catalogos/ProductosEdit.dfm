inherited frmProductosEdit: TfrmProductosEdit
  Caption = 'frmProductosEdit'
  ClientHeight = 501
  ClientWidth = 594
  OnDestroy = FormDestroy
  ExplicitWidth = 600
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 594
    Height = 460
    ExplicitHeight = 460
    ClientRectBottom = 458
    ClientRectRight = 592
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 430
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox1
      end
      object Label4: TLabel
        Left = 24
        Top = 136
        Width = 29
        Height = 13
        Caption = 'Marca'
        FocusControl = DBLookupComboBox2
      end
      object Label5: TLabel
        Left = 24
        Top = 176
        Width = 32
        Height = 13
        Caption = 'Familia'
        FocusControl = DBLookupComboBox3
      end
      object Label6: TLabel
        Left = 24
        Top = 216
        Width = 34
        Height = 13
        Caption = 'Modelo'
        FocusControl = cxDBTextEdit3
      end
      object Label7: TLabel
        Left = 24
        Top = 256
        Width = 19
        Height = 13
        Caption = 'A'#241'o'
        FocusControl = cxDBSpinEdit1
      end
      object Label8: TLabel
        Left = 24
        Top = 296
        Width = 78
        Height = 13
        Caption = 'N'#250'mero de serie'
        FocusControl = cxDBTextEdit4
      end
      object Label9: TLabel
        Left = 24
        Top = 336
        Width = 90
        Height = 13
        Caption = 'N'#250'mero econ'#243'mico'
        FocusControl = cxDBTextEdit5
      end
      object Label10: TLabel
        Left = 24
        Top = 376
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox4
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 405
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 112
        Width = 200
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 152
        Width = 200
        Height = 21
        DataField = 'Marca'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 24
        Top = 192
        Width = 200
        Height = 21
        DataField = 'Familia'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 232
        DataBinding.DataField = 'Modelo'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 200
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 272
        DataBinding.DataField = 'Anio'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 24
        Top = 312
        DataBinding.DataField = 'NumeroSerie'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 200
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 24
        Top = 352
        DataBinding.DataField = 'NumeroEconomico'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        Width = 200
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 24
        Top = 392
        Width = 200
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 9
      end
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 1
      ExplicitWidth = 434
    end
  end
  inherited pmlMain: TPanel
    Top = 460
    Width = 594
    ExplicitTop = 460
    inherited btnCancel: TButton
      Left = 512
    end
    inherited btnOk: TButton
      Left = 431
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
