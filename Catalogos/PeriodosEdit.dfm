inherited frmPeriodosEdit: TfrmPeriodosEdit
  Caption = 'Periodo'
  ClientHeight = 306
  ClientWidth = 418
  ExplicitWidth = 424
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 418
    Height = 265
    ExplicitWidth = 418
    ExplicitHeight = 265
    ClientRectBottom = 263
    ClientRectRight = 416
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 414
      ExplicitHeight = 235
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 74
        Height = 13
        Caption = 'Tipo de Periodo'
      end
      object Label2: TLabel
        Left = 16
        Top = 96
        Width = 59
        Height = 13
        Caption = 'Fecha Inicial'
      end
      object Label3: TLabel
        Left = 208
        Top = 96
        Width = 54
        Height = 13
        Caption = 'Fecha Final'
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 209
        Top = 56
        Width = 92
        Height = 13
        Caption = 'Estatus del Periodo'
      end
      object Label6: TLabel
        Left = 16
        Top = 17
        Width = 37
        Height = 13
        Caption = 'Numero'
        FocusControl = cxDBSpinEdit1
      end
      object Label7: TLabel
        Left = 209
        Top = 176
        Width = 19
        Height = 13
        Caption = 'A'#241'o'
        FocusControl = cxDBSpinEdit2
      end
      object Label8: TLabel
        Left = 16
        Top = 176
        Width = 19
        Height = 13
        Caption = 'Mes'
        FocusControl = cxDBSpinEdit3
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 152
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 378
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 71
        DataBinding.DataField = 'PeriodoTipo'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 170
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'FechaInicio'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 208
        Top = 112
        DataBinding.DataField = 'FechaFin'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 33
        DataBinding.DataField = 'Numero'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 209
        Top = 192
        DataBinding.DataField = 'Anio'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 208
        Top = 71
        DataBinding.DataField = 'PeriodoEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        Width = 186
      end
      object cxDBSpinEdit3: TcxDBSpinEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'Mes'
        DataBinding.DataSource = DataSource
        TabOrder = 7
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 265
    Width = 418
    ExplicitTop = 265
    ExplicitWidth = 418
    inherited btnOk: TButton
      Left = 255
      ExplicitLeft = 255
    end
    inherited btnCancel: TButton
      Left = 336
      ExplicitLeft = 336
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPeriodos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
