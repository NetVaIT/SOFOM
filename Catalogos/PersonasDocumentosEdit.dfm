inherited frmPersonasDocumentosEdit: TfrmPersonasDocumentosEdit
  Caption = 'Documento'
  ClientHeight = 352
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 416
    Height = 311
    ExplicitWidth = 416
    ExplicitHeight = 311
    ClientRectBottom = 309
    ClientRectRight = 414
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 412
      ExplicitHeight = 281
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
      object Label5: TLabel
        Left = 24
        Top = 224
        Width = 80
        Height = 13
        Caption = 'Vigencia (Meses)'
        FocusControl = cxDBSpinEdit1
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
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 240
        DataBinding.DataField = 'VigenciaMeses'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 311
    Width = 416
    ExplicitTop = 311
    ExplicitWidth = 416
    inherited btnCancel: TButton
      Left = 334
      ExplicitLeft = 334
    end
    inherited btnOk: TButton
      Left = 253
      ExplicitLeft = 253
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasDocumentos.adodsMaster
    Left = 144
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
