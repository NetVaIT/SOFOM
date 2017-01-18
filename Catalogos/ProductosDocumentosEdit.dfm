inherited frmProductosDocumentosEdit: TfrmProductosDocumentosEdit
  Caption = 'frmProductosDocumentosEdit'
  ExplicitWidth = 444
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 95
        Height = 13
        Caption = 'Documento Adjunto'
      end
      object btnUpdateFile: TSpeedButton
        Left = 375
        Top = 43
        Width = 23
        Height = 22
      end
      object Label2: TLabel
        Left = 24
        Top = 104
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox1
      end
      object Label3: TLabel
        Left = 24
        Top = 144
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 184
        Width = 82
        Height = 13
        Caption = 'Fecha de emisi'#243'n'
        FocusControl = cxDBDateEdit1
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 43
        DataBinding.DataField = 'Documento'
        DataBinding.DataSource = DataSource
        Height = 49
        Width = 353
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 120
        Width = 345
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 160
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 345
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 24
        Top = 200
        DataBinding.DataField = 'FechaEmision'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
