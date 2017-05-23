inherited frmCotizacionesEdit: TfrmCotizacionesEdit
  Caption = 'Cotizaci'#243'n'
  ClientHeight = 284
  ClientWidth = 596
  ExplicitWidth = 602
  ExplicitHeight = 313
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 596
    Height = 243
    ExplicitWidth = 596
    ExplicitHeight = 243
    ClientRectBottom = 241
    ClientRectRight = 594
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 592
      ExplicitHeight = 213
      object Label1: TLabel
        Left = 37
        Top = 19
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 55
        Top = 46
        Width = 43
        Height = 13
        Caption = 'Producto'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 45
        Top = 122
        Width = 55
        Height = 13
        Caption = 'Elaboracion'
        FocusControl = cxDBDateEdit1
      end
      object Label10: TLabel
        Left = 65
        Top = 70
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLookupComboBox3
      end
      object Label12: TLabel
        Left = 19
        Top = 97
        Width = 79
        Height = 13
        Caption = 'Tipo de contrato'
        FocusControl = DBLookupComboBox4
      end
      object Label28: TLabel
        Left = 242
        Top = 122
        Width = 39
        Height = 13
        Caption = 'Vigencia'
        FocusControl = cxDBDateEdit4
      end
      object Label30: TLabel
        Left = 62
        Top = 148
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label31: TLabel
        Left = 421
        Top = 122
        Width = 36
        Height = 13
        Caption = 'Usuario'
      end
      object Label4: TLabel
        Left = 68
        Top = 176
        Width = 30
        Height = 13
        Caption = 'Causa'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 104
        Top = 16
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 104
        Top = 43
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 480
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 104
        Top = 119
        DataBinding.DataField = 'Elaboracion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 104
        Top = 65
        Width = 480
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 104
        Top = 92
        Width = 480
        Height = 21
        DataField = 'TipoContrato'
        DataSource = DataSource
        TabOrder = 4
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 287
        Top = 119
        DataBinding.DataField = 'Vigencia'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 104
        Top = 145
        DataBinding.DataField = 'IdCotizacionEstatus'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdCotizacionEstatus'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsEstatus
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit22: TcxDBTextEdit
        Left = 463
        Top = 119
        DataBinding.DataField = 'Usuario'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 7
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 104
        Top = 172
        DataBinding.DataField = 'IdCotizacionCausa'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdCotizacionCausa'
        Properties.ListColumns = <
          item
            FieldName = 'Descripcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsCausa
        TabOrder = 8
        Width = 480
      end
    end
    object tsSegmentos: TcxTabSheet
      Caption = 'Segmentos'
      ImageIndex = 2
      TabVisible = False
    end
    object tsAmortizaciones: TcxTabSheet
      Caption = 'Amortizaciones'
      ImageIndex = 1
      TabVisible = False
    end
  end
  inherited pmlMain: TPanel
    Top = 243
    Width = 596
    ExplicitTop = 243
    ExplicitWidth = 596
    inherited btnCancel: TButton
      Left = 514
      ExplicitLeft = 514
    end
    inherited btnOk: TButton
      Left = 433
      ExplicitLeft = 433
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsEstatus: TDataSource
    AutoEdit = False
    Left = 384
    Top = 16
  end
  object dsCausa: TDataSource
    AutoEdit = False
    Left = 432
    Top = 16
  end
end
