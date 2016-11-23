inherited frmUbicacionesEdit: TfrmUbicacionesEdit
  Caption = 'Ubicacion'
  ClientHeight = 231
  ClientWidth = 447
  ExplicitWidth = 453
  ExplicitHeight = 259
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 447
    Height = 190
    ClientRectBottom = 188
    ClientRectRight = 445
    inherited tsGeneral: TcxTabSheet
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
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 85
        Height = 13
        Caption = 'UbicacionSuperior'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 413
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 15
        Top = 111
        DataBinding.DataField = 'UbicacionSuperior'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 414
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 190
    Width = 447
    inherited btnOk: TButton
      Left = 284
    end
    inherited btnCancel: TButton
      Left = 365
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmEstablecimientos.adodsUbicacion
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
