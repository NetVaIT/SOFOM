inherited frmRelacionPreguntasEdit: TfrmRelacionPreguntasEdit
  Caption = 'Relaci'#243'n preguntas'
  ClientHeight = 361
  ClientWidth = 613
  ExplicitWidth = 619
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 613
    Height = 320
    ExplicitWidth = 569
    ExplicitHeight = 264
    ClientRectBottom = 318
    ClientRectRight = 611
    inherited tsGeneral: TcxTabSheet
      ExplicitWidth = 565
      ExplicitHeight = 236
      object Label1: TLabel
        Left = 32
        Top = 61
        Width = 44
        Height = 13
        Caption = 'Pregunta'
      end
      object Label2: TLabel
        Left = 32
        Top = 115
        Width = 33
        Height = 13
        Caption = 'Opci'#243'n'
      end
      object Label3: TLabel
        Left = 32
        Top = 172
        Width = 95
        Height = 13
        Caption = 'Valor Condicionante'
        FocusControl = cxDBTextEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 189
        DataBinding.DataField = 'ValorCondicionante'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 321
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 32
        Top = 134
        DataBinding.DataField = 'Opcion'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdMRPreguntaOpcion'
        Properties.ListColumns = <
          item
            FieldName = 'Opcion'
          end>
        TabOrder = 1
        Width = 500
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 32
        Top = 134
        DataBinding.DataField = 'IdMRPreguntaOpcion'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdMRPreguntaOpcion'
        Properties.ListColumns = <
          item
            FieldName = 'Opcion'
          end>
        Properties.ListSource = DSConOpciones
        TabOrder = 2
        Width = 500
      end
      object cxDBLblPaquete: TcxDBLabel
        Left = 32
        Top = 29
        AutoSize = True
        DataBinding.DataField = 'Paquete'
        DataBinding.DataSource = DataSource
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxDBLabel1: TcxDBLabel
        Left = 82
        Top = 59
        AutoSize = True
        DataBinding.DataField = 'Pregunta'
        DataBinding.DataSource = DataSource
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxDBLkpCmbBxPreg: TcxDBLookupComboBox
        Left = 32
        Top = 82
        DataBinding.DataField = 'IdMRPregunta'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdMRPregunta'
        Properties.ListColumns = <
          item
            FieldName = 'Pregunta'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSConPreguntas
        Properties.OnChange = cxDBLookupComboBox1PropertiesChange
        TabOrder = 5
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 320
    Width = 613
    ExplicitTop = 264
    ExplicitWidth = 569
    inherited btnCancel: TButton
      Left = 531
      ExplicitLeft = 487
    end
    inherited btnOk: TButton
      Left = 450
      ExplicitLeft = 406
    end
  end
  object cxDBLabel2: TcxDBLabel [2]
    Left = 86
    Top = 142
    AutoSize = True
    DataBinding.DataField = 'Opcion'
    DataBinding.DataSource = DataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  inherited DataSource: TDataSource
    DataSet = dmMRPaquetesPreguntas.AdoDSRelacionPreg
    Left = 176
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object DSConPreguntas: TDataSource
    AutoEdit = False
    Left = 368
    Top = 8
  end
  object DSConOpciones: TDataSource
    AutoEdit = False
    Left = 472
    Top = 8
  end
end
