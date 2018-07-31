inherited frmMrPreguntasOpcionesEdit: TfrmMrPreguntasOpcionesEdit
  Caption = 'Edici'#243'n Opciones para Pregunta Actual'
  ClientHeight = 389
  ClientWidth = 539
  ExplicitWidth = 545
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 539
    Height = 348
    ExplicitWidth = 539
    ExplicitHeight = 356
    ClientRectBottom = 346
    ClientRectRight = 537
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = -30
      ExplicitTop = 74
      ExplicitWidth = 473
      ExplicitHeight = 313
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Opci'#243'n'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 59
        Height = 13
        Caption = 'Ponderaci'#243'n'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Opcion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 377
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Ponderacion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBChckBxTextoAdicional: TcxDBCheckBox
        Left = 24
        Top = 95
        Caption = 'Requiere Texto Adicional'
        DataBinding.DataField = 'ReqTextoAdi'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        OnClick = cxDBChckBxTextoAdicionalClick
        Width = 169
      end
      object PnlTablaExterna: TPanel
        Left = 0
        Top = 120
        Width = 535
        Height = 200
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object Label3: TLabel
          Left = 24
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Tabla Externa'
          FocusControl = cxDBTxtEdtTablaExt
        end
        object Label4: TLabel
          Left = 24
          Top = 56
          Width = 94
          Height = 13
          Caption = 'Campo A Desplegar'
          FocusControl = cxDBTxtEdtCampoDes
        end
        object Label5: TLabel
          Left = 24
          Top = 96
          Width = 116
          Height = 13
          Caption = 'Condicion Tabla Externa'
          FocusControl = cxDBTextEdit4
        end
        object cxDBTxtEdtTablaExt: TcxDBTextEdit
          Left = 24
          Top = 32
          DataBinding.DataField = 'TablaExterna'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cxDBTxtEdtCampoDes: TcxDBTextEdit
          Left = 24
          Top = 72
          DataBinding.DataField = 'CampoADesplegar'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 24
          Top = 112
          DataBinding.DataField = 'CondicionTablaExt'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 289
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 24
          Top = 136
          Caption = 'Evalua Campos Adicionales'
          DataBinding.DataField = 'EvaluaCamposAdicionales'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 209
        end
        object cxCmbBxListaTablas: TcxComboBox
          Left = 176
          Top = 32
          TabOrder = 4
          Text = 'Lista Tablas'
          OnClick = cxCmbBxListaTablasClick
          Width = 137
        end
        object cxCmbBxListaCampos: TcxComboBox
          Left = 176
          Top = 72
          TabOrder = 5
          Text = 'Lista Campos'
          OnClick = cxCmbBxListaCamposClick
          Width = 137
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 348
    Width = 539
    inherited btnCancel: TButton
      Left = 457
    end
    inherited btnOk: TButton
      Left = 376
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsPreguntasOpciones
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsAuxiliar: TDataSource
    DataSet = dmMatrizRiesgo.ADOQryAuxiliar
    Left = 386
    Top = 266
  end
end
