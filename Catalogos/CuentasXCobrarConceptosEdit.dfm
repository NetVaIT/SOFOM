inherited frmCuentasXCobrarConceptosEdit: TfrmCuentasXCobrarConceptosEdit
  Caption = 'Concepto Cuentas X Cobrar'
  ClientHeight = 222
  ClientWidth = 657
  ExplicitWidth = 663
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 657
    Height = 181
    ExplicitWidth = 657
    ExplicitHeight = 181
    ClientRectBottom = 179
    ClientRectRight = 655
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = -3
      ExplicitTop = 58
      ExplicitWidth = 653
      ExplicitHeight = 153
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
        Width = 489
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 80
        AutoSize = False
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Height = 49
        Width = 617
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 181
    Width = 657
    ExplicitTop = 181
    ExplicitWidth = 657
    inherited btnCancel: TButton
      Left = 575
      ExplicitLeft = 575
    end
    inherited btnOk: TButton
      Left = 494
      ExplicitLeft = 494
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCuentasXCobrar.ADOdsCXCDetalle
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
