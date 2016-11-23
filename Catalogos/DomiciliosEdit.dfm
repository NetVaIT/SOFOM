inherited frmDomiciliosEdit: TfrmDomiciliosEdit
  Caption = 'Domicilio'
  ClientHeight = 422
  ClientWidth = 553
  ExplicitWidth = 559
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 553
    Height = 381
    ExplicitWidth = 553
    ExplicitHeight = 381
    ClientRectBottom = 379
    ClientRectRight = 551
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 549
      ExplicitHeight = 351
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Calle'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 206
        Top = 16
        Width = 58
        Height = 13
        Caption = 'No. exterior'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 333
        Top = 16
        Width = 54
        Height = 13
        Caption = 'No. interior'
        FocusControl = cxDBTextEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 56
        Width = 35
        Height = 13
        Caption = 'Colonia'
        FocusControl = cxDBTextEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Referencia'
        FocusControl = cxDBTextEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 136
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = cxDBLookupComboBox1
      end
      object Label7: TLabel
        Left = 16
        Top = 176
        Width = 33
        Height = 13
        Caption = 'Estado'
        FocusControl = cxDBLookupComboBox2
      end
      object Label8: TLabel
        Left = 16
        Top = 216
        Width = 43
        Height = 13
        Caption = 'Municipio'
        FocusControl = cxDBLookupComboBox3
      end
      object Label9: TLabel
        Left = 16
        Top = 256
        Width = 45
        Height = 13
        Caption = 'Poblaci'#243'n'
        FocusControl = cxDBLookupComboBox4
      end
      object Label10: TLabel
        Left = 16
        Top = 296
        Width = 65
        Height = 13
        Caption = 'C'#243'digo postal'
        FocusControl = cxDBTextEdit6
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Calle'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 184
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 206
        Top = 32
        DataBinding.DataField = 'NoExterior'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 333
        Top = 32
        DataBinding.DataField = 'NoInterior'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Colonia'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 438
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 438
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 152
        DataBinding.DataField = 'IdPais'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdPais'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsPaises
        TabOrder = 5
        Width = 438
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 192
        DataBinding.DataField = 'IdEstado'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdEstado'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsEstados
        TabOrder = 6
        Width = 438
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 16
        Top = 232
        DataBinding.DataField = 'IdMunicipio'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdMunicipio'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsMunicipios
        TabOrder = 7
        Width = 438
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 16
        Top = 272
        DataBinding.DataField = 'IdPoblacion'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdPoblacion'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsPoblaciones
        TabOrder = 8
        Width = 438
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 16
        Top = 312
        DataBinding.DataField = 'CodigoPostal'
        DataBinding.DataSource = DataSource
        TabOrder = 9
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 381
    Width = 553
    ExplicitTop = 381
    ExplicitWidth = 553
    inherited btnOk: TButton
      Left = 390
      ExplicitLeft = 390
    end
    inherited btnCancel: TButton
      Left = 471
      ExplicitLeft = 471
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsPaises: TDataSource
    AutoEdit = False
    Left = 344
  end
  object dsEstados: TDataSource
    AutoEdit = False
    Left = 384
  end
  object dsMunicipios: TDataSource
    AutoEdit = False
    Left = 416
  end
  object dsPoblaciones: TDataSource
    AutoEdit = False
    Left = 448
  end
end
