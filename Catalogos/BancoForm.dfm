inherited frmBanco: TfrmBanco
  Caption = 'Banco'
  ClientHeight = 333
  ClientWidth = 630
  ExplicitWidth = 636
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 630
    Height = 292
    ExplicitWidth = 630
    ExplicitHeight = 281
    ClientRectBottom = 290
    ClientRectRight = 628
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 626
      ExplicitHeight = 253
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
        Top = 176
        Width = 27
        Height = 13
        Caption = 'Siglas'
        FocusControl = cxDBTextEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 216
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Label6: TLabel
        Left = 16
        Top = 136
        Width = 20
        Height = 13
        Caption = 'RFC'
        FocusControl = cxDBTextEdit5
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
        TabOrder = 2
        Width = 201
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 112
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 593
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 16
        Top = 192
        DataBinding.DataField = 'Siglas'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 61
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 231
        DataBinding.DataField = 'Pais'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 6
        Width = 300
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 16
        Top = 152
        DataBinding.DataField = 'RFC'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 488
        Top = 34
        Caption = 'Com'#250'n'
        DataBinding.DataField = 'UsoComun'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 292
    Width = 630
    ExplicitTop = 281
    ExplicitWidth = 630
    inherited btnCancel: TButton
      Left = 548
      ExplicitLeft = 548
    end
    inherited btnOk: TButton
      Left = 467
      ExplicitLeft = 467
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
