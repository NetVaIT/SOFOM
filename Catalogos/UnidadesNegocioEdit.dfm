inherited frmUnidadesNegocioEdit: TfrmUnidadesNegocioEdit
  Caption = 'Unidad de Negocio'
  ClientHeight = 228
  ClientWidth = 536
  ExplicitWidth = 542
  ExplicitHeight = 257
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 536
    Height = 187
    ExplicitWidth = 416
    ExplicitHeight = 174
    ClientRectBottom = 185
    ClientRectRight = 534
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 412
      ExplicitHeight = 144
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 58
        Height = 13
        Caption = 'Outsourcing'
        FocusControl = cxDBLookupComboBox1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 64
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 304
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 104
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 500
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 187
    Width = 536
    ExplicitTop = 174
    ExplicitWidth = 416
    inherited btnOk: TButton
      Left = 373
      ExplicitLeft = 253
    end
    inherited btnCancel: TButton
      Left = 454
      ExplicitLeft = 334
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPuestos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
