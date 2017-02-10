inherited frmListasRestringidasEdit: TfrmListasRestringidasEdit
  Caption = 'frmListasRestringidasEdit'
  ClientHeight = 319
  ExplicitWidth = 444
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 278
    ClientRectBottom = 276
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 51
        Height = 13
        Caption = 'Organismo'
        FocusControl = DBLookupComboBox1
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 19
        Height = 13
        Caption = 'Pais'
        FocusControl = DBLookupComboBox2
      end
      object Label4: TLabel
        Left = 24
        Top = 144
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 24
        Top = 184
        Width = 22
        Height = 13
        Caption = 'Alias'
        FocusControl = cxDBTextEdit3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 80
        Width = 300
        Height = 21
        DataField = 'Organismo'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 24
        Top = 120
        Width = 300
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 160
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 400
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 200
        DataBinding.DataField = 'Alias'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 400
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 278
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
