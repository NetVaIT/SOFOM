inherited frmMRPreguntasEdit: TfrmMRPreguntasEdit
  Caption = 'Edici'#243'n de Preguntas'
  ClientHeight = 263
  ClientWidth = 628
  ExplicitWidth = 634
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 628
    Height = 222
    ExplicitWidth = 625
    ExplicitHeight = 351
    ClientRectBottom = 220
    ClientRectRight = 626
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 617
      ExplicitHeight = 323
      object Label1: TLabel
        Left = 39
        Top = 22
        Width = 44
        Height = 13
        Caption = 'Pregunta'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 39
        Top = 137
        Width = 30
        Height = 13
        Caption = 'Orden'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 39
        Top = 38
        DataBinding.DataField = 'Pregunta'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 545
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 39
        Top = 78
        Caption = 'Aplica a persona f'#237'sica'
        DataBinding.DataField = 'AplicaaPersonaFisica'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 193
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 39
        Top = 102
        Caption = 'Aplica a persona moral'
        DataBinding.DataField = 'AplicaaPersonaMoral'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 193
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 39
        Top = 153
        DataBinding.DataField = 'Orden'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 367
        Top = 78
        Caption = 'Condicionada'
        DataBinding.DataField = 'Condicionada'
        DataBinding.DataSource = DataSource
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Visible = False
        Width = 121
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 367
        Top = 102
        Caption = 'Evaluaci'#243'n directa de alto riesgo'
        DataBinding.DataField = 'EvaluaARDirecto'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Visible = False
        Width = 193
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 222
    Width = 628
    ExplicitTop = 351
    ExplicitWidth = 625
    inherited btnCancel: TButton
      Left = 546
      ExplicitLeft = 543
    end
    inherited btnOk: TButton
      Left = 465
      ExplicitLeft = 462
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntas
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
