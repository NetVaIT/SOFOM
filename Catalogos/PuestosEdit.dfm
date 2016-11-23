inherited frmPuestosEdit: TfrmPuestosEdit
  Caption = 'Puesto'
  ClientHeight = 321
  ClientWidth = 794
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 800
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 794
    Height = 280
    ExplicitWidth = 794
    ExplicitHeight = 280
    ClientRectBottom = 278
    ClientRectRight = 792
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 790
      ExplicitHeight = 250
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
      object Label5: TLabel
        Left = 16
        Top = 139
        Width = 75
        Height = 13
        Caption = 'Puesto superior'
      end
      object Label6: TLabel
        Left = 16
        Top = 99
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object Label3: TLabel
        Left = 16
        Top = 179
        Width = 72
        Height = 13
        Caption = 'Fecha creaci'#243'n'
        FocusControl = cxDBDateEdit1
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
        Width = 425
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 154
        DataBinding.DataField = 'PuestoSuperior'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 425
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 114
        DataBinding.DataField = 'PuestoCategoria'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 241
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 195
        DataBinding.DataField = 'FechaCreacion'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
    end
    object tsPerfil: TcxTabSheet
      Caption = 'Perfil del Puesto'
      ImageIndex = 1
    end
    object tsPlazas: TcxTabSheet
      Caption = 'Plazas'
      ImageIndex = 3
    end
    object tsBateriaCapacitacion: TcxTabSheet
      Caption = 'Bateria de Capacitacion'
      ImageIndex = 2
    end
  end
  inherited pmlMain: TPanel
    Top = 280
    Width = 794
    ExplicitTop = 280
    ExplicitWidth = 794
    inherited btnOk: TButton
      Left = 631
      ExplicitLeft = 631
    end
    inherited btnCancel: TButton
      Left = 712
      ExplicitLeft = 712
    end
  end
  inherited DataSource: TDataSource
    Top = 32
  end
  inherited ActionList: TActionList
    Left = 336
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 65904
  end
end
