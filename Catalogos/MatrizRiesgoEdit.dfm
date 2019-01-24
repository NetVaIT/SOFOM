inherited frmMatrizRiesgoEdit: TfrmMatrizRiesgoEdit
  Caption = 'Edici'#243'n Matriz de riesgo'
  ClientHeight = 459
  ClientWidth = 750
  OnDestroy = FormDestroy
  ExplicitWidth = 756
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 750
    Height = 418
    ExplicitWidth = 750
    ExplicitHeight = 418
    ClientRectBottom = 416
    ClientRectRight = 748
    inherited tsGeneral: TcxTabSheet
      ExplicitWidth = 746
      ExplicitHeight = 390
      object Label1: TLabel
        Left = 48
        Top = 40
        Width = 35
        Height = 13
        Caption = 'Versi'#243'n'
        FocusControl = cxDBCalcEdit1
      end
      object Label2: TLabel
        Left = 48
        Top = 96
        Width = 72
        Height = 13
        Caption = 'Fecha creaci'#243'n'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 48
        Top = 152
        Width = 129
        Height = 13
        Caption = 'Vigencia aplicaci'#243'n (meses)'
        FocusControl = cxDBSpinEdit1
      end
      object Label4: TLabel
        Left = 288
        Top = 42
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 48
        Top = 56
        DataBinding.DataField = 'Version'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 48
        Top = 112
        DataBinding.DataField = 'FechaCreacion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 145
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 48
        Top = 168
        DataBinding.DataField = 'MesesVigenciaAplicacion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 145
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 288
        Top = 58
        Width = 144
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 3
      end
      object cxBtnActivarCuestionario: TcxButton
        Left = 467
        Top = 54
        Width = 121
        Height = 25
        Hint = 
          'Cuestionario en proceso de Creaci'#243'n puede ser liberado para su u' +
          'so.'
        Caption = ' Activar Cuestionario'
        TabOrder = 4
        OnClick = cxBtnActivarCuestionarioClick
      end
    end
    object cxTbShtPreguntas: TcxTabSheet
      Caption = 'Calificaciones de riesgo'
      ImageIndex = 1
    end
    object cxTbShtPaquetes: TcxTabSheet
      Caption = 'Paquetes preguntas'
      ImageIndex = 2
    end
  end
  inherited pmlMain: TPanel
    Top = 418
    Width = 750
    ExplicitTop = 418
    ExplicitWidth = 750
    inherited btnCancel: TButton
      Left = 668
      ExplicitLeft = 668
    end
    inherited btnOk: TButton
      Left = 587
      ExplicitLeft = 587
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.adodsMaster
    OnDataChange = DataSourceDataChange
    Left = 360
  end
  inherited ActionList: TActionList
    Left = 384
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65952
  end
end
