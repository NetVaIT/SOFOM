inherited frmPersonasDomiciliosEdit: TfrmPersonasDomiciliosEdit
  Caption = 'Domicilio'
  ClientHeight = 303
  ClientWidth = 545
  ExplicitWidth = 551
  ExplicitHeight = 331
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 545
    Height = 262
    ExplicitWidth = 545
    ExplicitHeight = 262
    ClientRectBottom = 260
    ClientRectRight = 543
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 541
      ExplicitHeight = 232
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 40
        Height = 13
        Caption = 'Domicilio'
      end
      object Label2: TLabel
        Left = 16
        Top = 160
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object btnUpdate: TSpeedButton
        Left = 493
        Top = 75
        Width = 23
        Height = 22
        Action = actUpdate
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 176
        Width = 300
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 16
        Top = 200
        Caption = 'Predeterminado'
        DataBinding.DataField = 'Predeterminado'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 75
        DataBinding.DataField = 'Domicilio'
        DataBinding.DataSource = DataSource
        Height = 79
        Width = 471
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 43
        DataBinding.DataField = 'Domicilio'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 262
    Width = 545
    ExplicitTop = 262
    ExplicitWidth = 545
    inherited btnCancel: TButton
      Left = 463
      ExplicitLeft = 463
    end
    inherited btnOk: TButton
      Left = 382
      ExplicitLeft = 382
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasDomicilios.adodsMaster
  end
  inherited ActionList: TActionList
    object actUpdate: TAction
      Caption = '...'
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
