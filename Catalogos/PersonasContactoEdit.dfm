inherited frmPersonasContactoEdit: TfrmPersonasContactoEdit
  Caption = 'Contacto'
  ClientHeight = 247
  ClientWidth = 506
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 512
  ExplicitHeight = 275
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 506
    Height = 206
    ExplicitWidth = 506
    ExplicitHeight = 206
    ClientRectBottom = 204
    ClientRectRight = 504
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 502
      ExplicitHeight = 176
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Contacto'
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 59
        Caption = 'Principal'
        DataBinding.DataField = 'Principal'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 31
        DataBinding.DataField = 'Contacto'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 402
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilios'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 417
      ExplicitHeight = 130
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefonos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 417
      ExplicitHeight = 130
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correos'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 417
      ExplicitHeight = 130
    end
  end
  inherited pmlMain: TPanel
    Top = 206
    Width = 506
    ExplicitTop = 206
    ExplicitWidth = 506
    inherited btnOk: TButton
      Left = 343
      ExplicitLeft = 343
    end
    inherited btnCancel: TButton
      Left = 424
      ExplicitLeft = 424
    end
  end
  inherited DataSource: TDataSource
    Left = 320
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 352
    Top = 8
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 590208
  end
end
