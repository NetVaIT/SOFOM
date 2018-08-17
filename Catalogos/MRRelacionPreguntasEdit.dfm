inherited frmRelacionPreguntasEdit: TfrmRelacionPreguntasEdit
  Caption = 'Relaci'#243'n preguntas'
  ClientHeight = 305
  ClientWidth = 569
  ExplicitWidth = 575
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 569
    Height = 264
    ExplicitWidth = 578
    ClientRectBottom = 262
    ClientRectRight = 567
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 574
      ExplicitHeight = 263
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
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 32
        Top = 80
        DataBinding.DataField = 'Pregunta'
        DataBinding.DataSource = DataSource
        Properties.KeyFieldNames = 'IdMRPregunta'
        Properties.ListColumns = <
          item
            FieldName = 'Pregunta'
          end>
        Properties.ListOptions.SyncMode = True
        TabOrder = 1
        Width = 500
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
        Properties.ListOptions.SyncMode = True
        TabOrder = 2
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
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSConOpciones
        TabOrder = 3
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
        Visible = False
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 264
    Width = 569
    ExplicitWidth = 578
    inherited btnCancel: TButton
      Left = 487
      ExplicitLeft = 496
    end
    inherited btnOk: TButton
      Left = 406
      ExplicitLeft = 415
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
    Visible = False
  end
  inherited DataSource: TDataSource
    DataSet = dmMRPaquetesPreguntas.AdoDSRElacionpreg
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
