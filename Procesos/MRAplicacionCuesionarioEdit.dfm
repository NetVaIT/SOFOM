object FrmAplicacionCuestionarioEdt: TFrmAplicacionCuestionarioEdt
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Aplicaci'#243'n de  Cuestionario'
  ClientHeight = 284
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 235
    Width = 644
    Height = 49
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 234
    ExplicitWidth = 623
    object cxBtnAtras: TcxButton
      Left = 280
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Atr'#225's'
      TabOrder = 0
      OnClick = cxBtnAtrasClick
    end
    object cxBtnSiguiente: TcxButton
      Left = 400
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Siguiente'
      TabOrder = 1
      OnClick = cxBtnSiguienteClick
    end
    object cxBtnFin: TcxButton
      Left = 512
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Finalizar'
      TabOrder = 2
      OnClick = cxBtnFinClick
    end
    object cxLblNumpregunta: TcxLabel
      Left = 30
      Top = 14
      Caption = 'Pregunta 5 de 10'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 644
    Height = 235
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsGeneral
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 613
    ExplicitHeight = 254
    ClientRectBottom = 233
    ClientRectLeft = 2
    ClientRectRight = 642
    ClientRectTop = 26
    object tsGeneral: TcxTabSheet
      Caption = 'Evaluaci'#243'n Riesgo'
      ImageIndex = 0
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 615
      ExplicitHeight = 215
      object Label1: TLabel
        Left = 28
        Top = 51
        Width = 44
        Height = 13
        Caption = 'Pregunta'
      end
      object Label2: TLabel
        Left = 28
        Top = 88
        Width = 33
        Height = 13
        Caption = 'Opci'#243'n'
      end
      object Label3: TLabel
        Left = 28
        Top = 10
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 484
        Top = 107
        DataBinding.DataField = 'opcion'
        DataBinding.DataSource = DSREspuestasCuestionario
        Properties.ListColumns = <>
        Properties.ListOptions.SyncMode = True
        TabOrder = 0
        Width = 44
      end
      object cxDBLkpCmbBxRespuestas: TcxDBLookupComboBox
        Left = 28
        Top = 107
        DataBinding.DataField = 'IdMRPreguntaOpcionResp'
        DataBinding.DataSource = DSREspuestasCuestionario
        Properties.KeyFieldNames = 'IdMRPreguntaOpcion'
        Properties.ListColumns = <
          item
            FieldName = 'Opcion'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSConOpciones
        TabOrder = 1
        OnClick = cxDBLkpCmbBxRespuestasClick
        Width = 500
      end
      object cxDBLabel1: TcxDBLabel
        Left = 28
        Top = 65
        AutoSize = True
        DataBinding.DataField = 'Pregunta'
        DataBinding.DataSource = DSREspuestasCuestionario
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxDBLblCliente: TcxDBLabel
        Left = 28
        Top = 23
        AutoSize = True
        DataBinding.DataField = 'Cliente'
        DataBinding.DataSource = DSCuestionarioAplicado
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object PnlOtros: TPanel
        Left = 28
        Top = 134
        Width = 580
        Height = 67
        BevelInner = bvLowered
        TabOrder = 4
        Visible = False
        object Label4: TLabel
          Left = 11
          Top = 11
          Width = 58
          Height = 13
          Caption = 'Especifique:'
        end
        object cxDBTxtEdtOtro: TcxDBTextEdit
          Left = 11
          Top = 30
          DataBinding.DataField = 'OtroTexto'
          DataBinding.DataSource = DSREspuestasCuestionario
          TabOrder = 0
          Width = 305
        end
        object cxCmbBxListaOtrosTablaExt: TcxComboBox
          Left = 338
          Top = 30
          TabOrder = 1
          Text = 'Seleccione'
          OnClick = cxCmbBxListaOtrosTablaExtClick
          Width = 178
        end
        object cxBtnUsar: TcxButton
          Left = 522
          Top = 26
          Width = 49
          Height = 25
          Caption = 'Usar'
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000000000000000000000000000000000000000000000000000000000000000
            00FFFFFFFFFFFFFFFFFFFFFFFF00000000F2FF00F2FF00F2FF00F2FF00F2FF00
            F2FF00F2FF00F2FF00F2FF00F2FF00F2FF000000FFFFFFFFFFFFFFFFFF000000
            00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
            FF000000FFFFFFFFFFFFFFFFFF00000000F2FF00F2FF00F2FF00000000000000
            000000000000000000F2FF00F2FF00F2FF000000FFFFFFFFFFFFFFFFFF000000
            00F2FF00F2FF00F2FF000000E8A200E8A200E8A20000000000F2FF00F2FF00F2
            FF000000FFFFFFFFFFFFFFFFFF00000000F2FF00F2FF00F2FF000000E8A200E8
            A200E8A20000000000F2FF00F2FF00F2FF000000FFFFFFFFFFFFFFFFFF000000
            00F2FF00F2FF00F2FF000000E8A200E8A200E8A20000000000F2FF00F2FF00F2
            FF000000FFFFFFFFFFFFFFFFFF00000000F2FF00F2FF00F2FF000000E8A200E8
            A200E8A20000000000F2FF00F2FF00F2FF000000FFFFFFFFFFFFFFFFFF000000
            00F2FF000000000000000000E8A200E8A200E8A20000000000000000000000F2
            FF000000FFFFFFFFFFFFFFFFFF00000000F2FF00F2FF000000E8A200E8A200E8
            A200E8A200E8A20000000000F2FF00F2FF000000FFFFFFFFFFFFFFFFFF000000
            00F2FF00F2FF00F2FF000000E8A200E8A200E8A2000000000000000000000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFF000000E8
            A200000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 2
          OnClick = cxBtnUsarClick
        end
      end
    end
  end
  object DSREspuestasCuestionario: TDataSource
    DataSet = dmEvaluacionRiesgo.ADODSRespuestasCuestionario
    OnDataChange = DSREspuestasCuestionarioDataChange
    Left = 268
    Top = 8
  end
  object DSCuestionarioAplicado: TDataSource
    DataSet = dmEvaluacionRiesgo.adodsMaster
    Left = 484
    Top = 8
  end
  object DSConOpciones: TDataSource
    DataSet = dmEvaluacionRiesgo.ADOdsConPregOpciones
    Left = 404
    Top = 96
  end
  object DSAuxiliar: TDataSource
    DataSet = dmEvaluacionRiesgo.ADOQryAuxiliar
    Left = 548
    Top = 96
  end
end
