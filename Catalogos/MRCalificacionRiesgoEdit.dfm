inherited frmCalificacionRiesgoEdit: TfrmCalificacionRiesgoEdit
  Caption = 'Calificaci'#243'n de riesgo'
  ClientHeight = 272
  ClientWidth = 505
  ExplicitWidth = 511
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 505
    Height = 231
    ExplicitWidth = 569
    ClientRectBottom = 227
    ClientRectRight = 501
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 561
      ExplicitHeight = 241
      object Label1: TLabel
        Left = 40
        Top = 24
        Width = 62
        Height = 13
        Caption = 'Tipo persona'
        FocusControl = DBLkpCmbBxPertonaTipo
      end
      object Label2: TLabel
        Left = 40
        Top = 80
        Width = 55
        Height = 13
        Caption = 'Nivel riesgo'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 40
        Top = 135
        Width = 59
        Height = 13
        Caption = 'Valor m'#237'nimo'
        FocusControl = cxDBCalcEdit1
      end
      object Label4: TLabel
        Left = 241
        Top = 135
        Width = 63
        Height = 13
        Caption = 'Valor m'#225'ximo'
        FocusControl = cxDBCalcEdit2
      end
      object Label5: TLabel
        Left = 241
        Top = 80
        Width = 52
        Height = 13
        Caption = 'Tipo riesgo'
        FocusControl = DBLookupComboBox1
      end
      object DBLkpCmbBxPertonaTipo: TDBLookupComboBox
        Left = 40
        Top = 40
        Width = 144
        Height = 21
        DataField = 'PersonaTipo'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 40
        Top = 96
        DataBinding.DataField = 'NivelRiesgo'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 40
        Top = 151
        DataBinding.DataField = 'ValorMinimo'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCalcEdit2: TcxDBCalcEdit
        Left = 241
        Top = 151
        DataBinding.DataField = 'ValorMaximo'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxBtnQuitarLimite: TcxButton
        Left = 368
        Top = 149
        Width = 75
        Height = 25
        Caption = 'Sin L'#237'mite'
        TabOrder = 5
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 241
        Top = 96
        Width = 201
        Height = 21
        DataField = 'TipoRiesgo'
        DataSource = DataSource
        TabOrder = 2
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 231
    Width = 505
    ExplicitWidth = 569
    inherited btnCancel: TButton
      Left = 423
      ExplicitLeft = 487
    end
    inherited btnOk: TButton
      Left = 342
      ExplicitLeft = 406
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsCalificacionRiesgo
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
