inherited frmListasRestringidasEdit: TfrmListasRestringidasEdit
  Caption = 'Lista restringida'
  ClientHeight = 480
  ClientWidth = 641
  ExplicitWidth = 647
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 641
    Height = 439
    ExplicitHeight = 278
    ClientRectBottom = 435
    ClientRectRight = 637
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 25
      ExplicitWidth = 932
      ExplicitHeight = 423
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
        Top = 151
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 24
        Top = 191
        Width = 22
        Height = 13
        Caption = 'Alias'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 456
        Top = 151
        Width = 84
        Height = 13
        Caption = 'Fecha Nacimiento'
        FocusControl = cxDBDateEdit1
      end
      object Label7: TLabel
        Left = 456
        Top = 191
        Width = 20
        Height = 13
        Caption = 'RFC'
        FocusControl = cxDBTextEdit4
      end
      object Label8: TLabel
        Left = 456
        Top = 235
        Width = 77
        Height = 13
        Caption = 'NoIdentificacion'
        FocusControl = cxDBTextEdit5
      end
      object Label9: TLabel
        Left = 24
        Top = 232
        Width = 62
        Height = 13
        Caption = 'Dependencia'
        FocusControl = cxDBTextEdit6
      end
      object Label10: TLabel
        Left = 24
        Top = 285
        Width = 60
        Height = 13
        Caption = 'Comentarios'
      end
      object Label11: TLabel
        Left = 360
        Top = 104
        Width = 60
        Height = 13
        Caption = 'Nacionalidad'
        FocusControl = cxDBTextEdit7
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
        Top = 167
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 400
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 207
        DataBinding.DataField = 'Alias'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 400
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 456
        Top = 167
        DataBinding.DataField = 'FechaNacimiento'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 456
        Top = 207
        DataBinding.DataField = 'RFC'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 456
        Top = 251
        DataBinding.DataField = 'NoIdentificacion'
        DataBinding.DataSource = DataSource
        TabOrder = 9
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 24
        Top = 251
        DataBinding.DataField = 'Dependencia'
        DataBinding.DataSource = DataSource
        TabOrder = 8
        Width = 400
      end
      object cxDBMemo1: TcxDBMemo
        Left = 24
        Top = 304
        DataBinding.DataField = 'Comentarios'
        DataBinding.DataSource = DataSource
        TabOrder = 10
        Height = 89
        Width = 553
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 360
        Top = 120
        DataBinding.DataField = 'Nacionalidad'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 217
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 439
    Width = 641
    ExplicitTop = 278
    inherited btnCancel: TButton
      Left = 559
    end
    inherited btnOk: TButton
      Left = 478
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmListasRestringidas.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
