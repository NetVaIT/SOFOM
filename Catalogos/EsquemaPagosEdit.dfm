inherited frmEsquemaPagosEdit: TfrmEsquemaPagosEdit
  Caption = 'Esquema de Pago'
  ClientHeight = 248
  ClientWidth = 529
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 535
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 529
    Height = 207
    ExplicitWidth = 529
    ExplicitHeight = 207
    ClientRectBottom = 205
    ClientRectRight = 527
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 525
      ExplicitHeight = 177
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
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 122
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 73
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 500
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 137
        DataBinding.DataField = 'EsquemaPagoEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 193
      end
    end
    object tsPersonas: TcxTabSheet
      Caption = 'OutSourcing'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 207
    Width = 529
    ExplicitTop = 207
    ExplicitWidth = 529
    inherited btnCancel: TButton
      Left = 447
      ExplicitLeft = 447
    end
    inherited btnOk: TButton
      Left = 366
      ExplicitLeft = 366
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
