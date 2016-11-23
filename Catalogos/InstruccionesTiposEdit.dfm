inherited frmInstruccionesTiposEdit: TfrmInstruccionesTiposEdit
  Caption = 'Tipo de instrucci'#243'n'
  ClientHeight = 266
  ClientWidth = 367
  ExplicitWidth = 373
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 367
    Height = 225
    ExplicitWidth = 367
    ExplicitHeight = 225
    ClientRectBottom = 223
    ClientRectRight = 365
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 363
      ExplicitHeight = 195
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 304
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 32
        Top = 160
        Caption = 'Incluir en el grupo'
        DataBinding.DataField = 'IncluirGrupo'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 304
      end
      object cxDBRadioGroup1: TcxDBRadioGroup
        Left = 32
        Top = 99
        Caption = 'Nombre'
        DataBinding.DataField = 'TipoNombre'
        DataBinding.DataSource = DataSource
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'RFC'
            Value = '0'
          end
          item
            Caption = 'Nombre'
            Value = '1'
          end
          item
            Caption = 'Nombre (PMN)'
            Value = '2'
          end>
        TabOrder = 2
        Height = 46
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 225
    Width = 367
    ExplicitTop = 225
    ExplicitWidth = 367
    inherited btnCancel: TButton
      Left = 285
      ExplicitLeft = 285
    end
    inherited btnOk: TButton
      Left = 204
      ExplicitLeft = 204
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
