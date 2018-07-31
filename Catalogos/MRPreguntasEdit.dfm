inherited frmMRPreguntasEdit: TfrmMRPreguntasEdit
  Caption = 'Edici'#243'n de Preguntas'
  ClientHeight = 392
  ClientWidth = 625
  ExplicitWidth = 631
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 625
    Height = 351
    ExplicitWidth = 625
    ExplicitHeight = 351
    ClientRectBottom = 349
    ClientRectRight = 623
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 28
      ExplicitWidth = 621
      ExplicitHeight = 323
      object Label1: TLabel
        Left = 40
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Pregunta'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 40
        Top = 224
        Width = 30
        Height = 13
        Caption = 'Orden'
        FocusControl = cxDBSpinEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 40
        Top = 40
        DataBinding.DataField = 'Pregunta'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 545
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 40
        Top = 80
        Caption = 'Aplica a Persona F'#237'sica'
        DataBinding.DataField = 'AplicaaPersonaFisica'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 193
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 40
        Top = 104
        Caption = 'Aplica a Persona Moral'
        DataBinding.DataField = 'AplicaaPersonaMoral'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 193
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 40
        Top = 240
        DataBinding.DataField = 'Orden'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 40
        Top = 152
        Caption = 'Condicionada'
        DataBinding.DataField = 'Condicionada'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 40
        Top = 176
        Caption = 'Evaluaci'#243'n Directa Alto Riesgo'
        DataBinding.DataField = 'EvaluaARDirecto'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 193
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 351
    Width = 625
    inherited btnCancel: TButton
      Left = 543
    end
    inherited btnOk: TButton
      Left = 462
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntas
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
