inherited frmPLDAlertasFiltro: TfrmPLDAlertasFiltro
  Caption = 'Filtro alertas'
  ClientHeight = 194
  ClientWidth = 260
  ExplicitWidth = 266
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 260
    Height = 153
    ExplicitWidth = 289
    ExplicitHeight = 135
    ClientRectBottom = 151
    ClientRectRight = 258
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 98
      ExplicitTop = 90
      ExplicitWidth = 285
      ExplicitHeight = 239
      object lblTipo: TLabel
        Left = 29
        Top = 24
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object lblFactor: TcxLabel
        Left = 29
        Top = 51
        Caption = 'Periodo mes'
        FocusControl = edtFactor
      end
      object edtFactor: TcxSpinEdit
        Left = 97
        Top = 47
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 1
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 29
        Top = 75
        Caption = 'Periodo a'#241'o'
        FocusControl = edtYear
      end
      object edtYear: TcxSpinEdit
        Left = 96
        Top = 74
        TabOrder = 3
        Value = 2018
        Width = 121
      end
      object cxcbTipo: TcxComboBox
        Left = 96
        Top = 21
        Properties.Items.Strings = (
          ''
          'Relevante'
          'Inusual'
          'Interna preocupante')
        Properties.OnChange = cxcbTipoPropertiesChange
        TabOrder = 4
        Text = 'Relevante'
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 153
    Width = 260
    ExplicitTop = 135
    ExplicitWidth = 289
    inherited btnCancel: TButton
      Left = 178
      ExplicitLeft = 207
    end
    inherited btnOk: TButton
      Left = 97
      ExplicitLeft = 126
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPLDAlertas.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
