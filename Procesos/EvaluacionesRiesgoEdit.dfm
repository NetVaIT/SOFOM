inherited frmEvaluacionesRiesgoEdit: TfrmEvaluacionesRiesgoEdit
  Caption = 'Edici'#243'n de Evaluaciones de Riesgo'
  ClientHeight = 307
  ClientWidth = 592
  ExplicitWidth = 598
  ExplicitHeight = 336
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 592
    Height = 266
    ExplicitWidth = 592
    ExplicitHeight = 322
    ClientRectBottom = 262
    ClientRectRight = 588
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 584
      ExplicitHeight = 294
      object Label1: TLabel
        Left = 40
        Top = 68
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 40
        Top = 17
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 264
        Top = 119
        Width = 89
        Height = 12
        Caption = 'Fecha vencimiento'
        FocusControl = cxDBDateEdit2
      end
      object Label4: TLabel
        Left = 40
        Top = 119
        Width = 96
        Height = 13
        Caption = 'Versi'#243'n cuestionario'
        FocusControl = DBLookupComboBox2
      end
      object Label5: TLabel
        Left = 40
        Top = 184
        Width = 84
        Height = 13
        Caption = 'Ponderaci'#243'n total'
      end
      object Label6: TLabel
        Left = 264
        Top = 184
        Width = 46
        Height = 13
        Caption = 'IdUsuario'
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 40
        Top = 85
        Width = 500
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 40
        Top = 36
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 264
        Top = 135
        DataBinding.DataField = 'FechaVencimiento'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 40
        Top = 135
        Width = 144
        Height = 21
        DataField = 'VersionCuestionario'
        DataSource = DataSource
        TabOrder = 2
      end
      object cxDBLabel1: TcxDBLabel
        Left = 40
        Top = 205
        DataBinding.DataField = 'PonderacionTotal'
        DataBinding.DataSource = DataSource
        ParentFont = False
        Properties.Orientation = cxoLeft
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 86
      end
      object cxDBLabel2: TcxDBLabel
        Left = 264
        Top = 203
        DataBinding.DataField = 'IdUsuario'
        DataBinding.DataSource = DataSource
        Visible = False
        Height = 21
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 266
    Width = 592
    ExplicitTop = 322
    ExplicitWidth = 592
    inherited btnCancel: TButton
      Left = 510
      ExplicitLeft = 510
    end
    inherited btnOk: TButton
      Left = 429
      ExplicitLeft = 429
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmEvaluacionRiesgo.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
