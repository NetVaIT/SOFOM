inherited frmPLDAlertasFiltro: TfrmPLDAlertasFiltro
  Caption = 'Filtro alertas'
  ClientHeight = 176
  ClientWidth = 289
  ExplicitWidth = 295
  ExplicitHeight = 205
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 289
    Height = 135
    ExplicitWidth = 289
    ExplicitHeight = 135
    ClientRectBottom = 133
    ClientRectRight = 287
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 285
      ExplicitHeight = 107
      object lblTipo: TLabel
        Left = 20
        Top = 70
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object cxLabel1: TcxLabel
        Left = 20
        Top = 16
        Caption = 'Periodo mes'
        FocusControl = edtMonth
      end
      object edtMonth: TcxSpinEdit
        Left = 88
        Top = 12
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 1
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 20
        Top = 40
        Caption = 'Periodo a'#241'o'
        FocusControl = edtYear
      end
      object edtYear: TcxSpinEdit
        Left = 87
        Top = 39
        TabOrder = 3
        Value = 2017
        Width = 121
      end
      object cxcbTipo: TcxComboBox
        Left = 88
        Top = 66
        Properties.Items.Strings = (
          ''
          'Relevante'
          'Inusual'
          'Interna preocupante')
        TabOrder = 4
        Text = 'Relevante'
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 135
    Width = 289
    ExplicitTop = 135
    ExplicitWidth = 289
    inherited btnCancel: TButton
      Left = 207
      ExplicitLeft = 207
    end
    inherited btnOk: TButton
      Left = 126
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
