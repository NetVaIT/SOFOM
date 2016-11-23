inherited frmBanco: TfrmBanco
  Caption = 'Banco'
  ClientHeight = 322
  ClientWidth = 630
  ExplicitWidth = 636
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 630
    Height = 281
    ExplicitWidth = 630
    ExplicitHeight = 234
    ClientRectBottom = 279
    ClientRectRight = 628
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 626
      ExplicitHeight = 204
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 27
        Height = 13
        Caption = 'Siglas'
        FocusControl = cxDBTextEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 176
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 61
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 201
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 593
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 152
        DataBinding.DataField = 'Siglas'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 61
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 191
        DataBinding.DataField = 'Pais'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 300
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 281
    Width = 630
    ExplicitTop = 234
    ExplicitWidth = 630
    inherited btnOk: TButton
      Left = 467
      ExplicitLeft = 467
    end
    inherited btnCancel: TButton
      Left = 548
      ExplicitLeft = 548
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmBancos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
