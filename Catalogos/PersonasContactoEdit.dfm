inherited frmPersonasContactoEdit: TfrmPersonasContactoEdit
  Caption = 'Contacto'
  ClientHeight = 247
  ClientWidth = 506
  OnDestroy = FormDestroy
  ExplicitWidth = 512
  ExplicitHeight = 276
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
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 502
      ExplicitHeight = 176
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Contacto'
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Puesto'
        FocusControl = cxDBTextEdit1
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 31
        DataBinding.DataField = 'Contacto'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 402
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 72
        DataBinding.DataField = 'Puesto'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 401
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 24
        Top = 96
        Caption = 'Principal'
        DataBinding.DataField = 'Principal'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 24
        Top = 120
        Caption = 'Apoderado legal'
        DataBinding.DataField = 'ApoderadoLegal'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 24
        Top = 144
        Caption = 'Representante legal'
        DataBinding.DataField = 'RepresentanteLegal'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilios'
      ImageIndex = 1
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefonos'
      ImageIndex = 2
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correos'
      ImageIndex = 3
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 4
    end
  end
  inherited pmlMain: TPanel
    Top = 206
    Width = 506
    ExplicitTop = 206
    ExplicitWidth = 506
    inherited btnCancel: TButton
      Left = 424
      ExplicitLeft = 424
    end
    inherited btnOk: TButton
      Left = 343
      ExplicitLeft = 343
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
