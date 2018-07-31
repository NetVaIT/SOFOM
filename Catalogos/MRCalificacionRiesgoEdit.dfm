inherited frmCalificacionRiesgoEdit: TfrmCalificacionRiesgoEdit
  Caption = 'Calificaci'#243'n de Riesgo'
  ClientWidth = 569
  ExplicitWidth = 575
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 569
    ClientRectRight = 567
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 586
      ExplicitHeight = 297
      object Label1: TLabel
        Left = 40
        Top = 24
        Width = 62
        Height = 13
        Caption = 'Tipo Persona'
        FocusControl = DBLkpCmbBxPertonaTipo
      end
      object Label2: TLabel
        Left = 40
        Top = 80
        Width = 58
        Height = 13
        Caption = 'Nivel Riesgo'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 40
        Top = 135
        Width = 59
        Height = 13
        Caption = 'Valor M'#237'nimo'
        FocusControl = cxDBCalcEdit1
      end
      object Label4: TLabel
        Left = 241
        Top = 135
        Width = 63
        Height = 13
        Caption = 'Valor M'#225'ximo'
        FocusControl = cxDBCalcEdit2
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
        TabOrder = 2
        Width = 121
      end
      object cxDBCalcEdit2: TcxDBCalcEdit
        Left = 241
        Top = 151
        DataBinding.DataField = 'ValorMaximo'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxBtnQuitarLimite: TcxButton
        Left = 368
        Top = 149
        Width = 75
        Height = 25
        Caption = 'Sin L'#237'mite'
        TabOrder = 4
      end
    end
  end
  inherited pmlMain: TPanel
    Width = 569
    inherited btnCancel: TButton
      Left = 487
    end
    inherited btnOk: TButton
      Left = 406
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsCalificacionRiesgo
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
