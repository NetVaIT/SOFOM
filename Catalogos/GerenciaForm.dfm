inherited frmGerencia: TfrmGerencia
  Caption = 'Gerencia'
  ClientHeight = 189
  ClientWidth = 412
  ExplicitWidth = 418
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 412
    Height = 148
    ExplicitWidth = 412
    ExplicitHeight = 190
    ClientRectBottom = 146
    ClientRectRight = 410
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 408
      ExplicitHeight = 160
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 89
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 353
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 148
    Width = 412
    ExplicitTop = 190
    ExplicitWidth = 412
    inherited btnOk: TButton
      Left = 249
      ExplicitLeft = 249
    end
    inherited btnCancel: TButton
      Left = 330
      ExplicitLeft = 330
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPuestos.adodsGerencias
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
