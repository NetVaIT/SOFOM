inherited frmRegimenFiscal: TfrmRegimenFiscal
  Caption = 'Regimen Fiscal'
  ClientHeight = 205
  ClientWidth = 329
  ExplicitWidth = 335
  ExplicitHeight = 233
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 329
    Height = 164
    ClientRectBottom = 162
    ClientRectRight = 327
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 61
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 80
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 289
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 164
    Width = 329
    inherited btnOk: TButton
      Left = 166
    end
    inherited btnCancel: TButton
      Left = 247
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmRegimenFiscal.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
