inherited frmPersonaEdit: TfrmPersonaEdit
  Caption = 'Persona'
  ClientHeight = 478
  ClientWidth = 624
  OnDestroy = FormDestroy
  ExplicitWidth = 630
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 624
    Height = 437
    ExplicitWidth = 624
    ExplicitHeight = 437
    ClientRectBottom = 435
    ClientRectRight = 622
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 620
      ExplicitHeight = 407
      object pnlPersona: TPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 200
          Top = 9
          Width = 32
          Height = 13
          Caption = 'R.F.C.'
        end
        object Label2: TLabel
          Left = 16
          Top = 8
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object lblCURP: TLabel
          Left = 344
          Top = 8
          Width = 43
          Height = 13
          Caption = 'C.U.R.P.'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 200
          Top = 24
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
        object cmbTipoPersona: TcxDBLookupComboBox
          Left = 16
          Top = 24
          DataBinding.DataField = 'PersonaTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          Properties.OnChange = cxDBLookupComboBox1PropertiesChange
          TabOrder = 1
          Width = 161
        end
        object cxDBEditCURP: TcxDBMaskEdit
          Left = 344
          Top = 24
          DataBinding.DataField = 'CURP'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 169
        end
        object btnWeb: TButton
          Left = 512
          Top = 25
          Width = 19
          Height = 19
          Caption = '...'
          TabOrder = 3
          OnClick = btnWebClick
        end
      end
      object pnlPersonaMoral: TPanel
        Left = 0
        Top = 49
        Width = 620
        Height = 93
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object Label3: TLabel
          Left = 16
          Top = 8
          Width = 60
          Height = 13
          Caption = 'Razon Social'
          FocusControl = edtRazonSocial
        end
        object Label4: TLabel
          Left = 16
          Top = 50
          Width = 98
          Height = 13
          Caption = 'Tipo de Razon Social'
        end
        object Label11: TLabel
          Left = 335
          Top = 50
          Width = 19
          Height = 13
          Caption = 'Pais'
        end
        object edtRazonSocial: TcxDBTextEdit
          Left = 16
          Top = 24
          DataBinding.DataField = 'RazonSocial'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 585
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 16
          Top = 65
          DataBinding.DataField = 'RazonSocialTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 305
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 334
          Top = 65
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 267
        end
      end
      object pnlPersonaFisica: TPanel
        Left = 0
        Top = 142
        Width = 620
        Height = 251
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object Label5: TLabel
          Left = 16
          Top = 2
          Width = 37
          Height = 13
          Caption = 'Nombre'
          FocusControl = edtNombre
        end
        object Label6: TLabel
          Left = 16
          Top = 42
          Width = 78
          Height = 13
          Caption = 'Apellido Paterno'
          FocusControl = edtAPaterno
        end
        object Label7: TLabel
          Left = 319
          Top = 42
          Width = 80
          Height = 13
          Caption = 'Apellido Materno'
          FocusControl = edtAMaterno
        end
        object Label8: TLabel
          Left = 16
          Top = 124
          Width = 99
          Height = 13
          Caption = 'Fecha de Nacimiento'
          FocusControl = cxDBDateEdit1
        end
        object Label9: TLabel
          Left = 16
          Top = 165
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label10: TLabel
          Left = 161
          Top = 165
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label12: TLabel
          Left = 161
          Top = 124
          Width = 97
          Height = 13
          Caption = 'Lugar de Nacimiento'
          FocusControl = cxDBTextEdit2
        end
        object Label13: TLabel
          Left = 16
          Top = 207
          Width = 55
          Height = 13
          Caption = 'Solidario de'
        end
        object Label14: TLabel
          Left = 16
          Top = 83
          Width = 85
          Height = 13
          Caption = 'Nombre Completo'
          FocusControl = cxDBTextEdit3
        end
        object Label15: TLabel
          Left = 480
          Top = 165
          Width = 72
          Height = 13
          Caption = 'Vigencia FM3/4'
          FocusControl = cxDBDateEdit2
        end
        object edtNombre: TcxDBTextEdit
          Left = 16
          Top = 18
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          OnEditing = edtNombreEditing
          Width = 282
        end
        object edtAPaterno: TcxDBTextEdit
          Left = 16
          Top = 58
          DataBinding.DataField = 'ApellidoPaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          OnEditing = edtNombreEditing
          Width = 282
        end
        object edtAMaterno: TcxDBTextEdit
          Left = 319
          Top = 58
          DataBinding.DataField = 'ApellidoMaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          OnEditing = edtNombreEditing
          Width = 282
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 140
          DataBinding.DataField = 'FechaNacimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 16
          Top = 181
          DataBinding.DataField = 'Sexo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 4
          Width = 121
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 161
          Top = 181
          DataBinding.DataField = 'EstadoCivil'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 5
          Width = 137
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 161
          Top = 140
          DataBinding.DataField = 'LugarNacimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 440
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 15
          Top = 222
          DataBinding.DataField = 'Titular'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 7
          Width = 586
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 99
          DataBinding.DataField = 'RazonSocial'
          DataBinding.DataSource = DataSource
          TabOrder = 8
          Width = 586
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 480
          Top = 181
          DataBinding.DataField = 'VigenciaFM34'
          DataBinding.DataSource = DataSource
          TabOrder = 9
          Width = 121
        end
      end
      object pnlOrigen: TPanel
        Left = 0
        Top = 393
        Width = 620
        Height = 14
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilio'
      ImageIndex = 1
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefono'
      ImageIndex = 2
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correo Electronico'
      ImageIndex = 3
    end
    object tsContacto: TcxTabSheet
      Caption = 'Contactos'
      ImageIndex = 4
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 7
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 5
    end
    object tsCSD: TcxTabSheet
      Caption = 'Sello digital'
      ImageIndex = 6
    end
  end
  inherited pmlMain: TPanel
    Top = 437
    Width = 624
    ExplicitTop = 437
    ExplicitWidth = 624
    inherited btnCancel: TButton
      Left = 542
      ExplicitLeft = 542
    end
    inherited btnOk: TButton
      Left = 461
      ExplicitLeft = 461
    end
    object btnNext: TButton
      Left = 372
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Siguiente'
      Caption = 'Siguiente ->'
      TabOrder = 2
      Visible = False
      OnClick = btnNextClick
    end
  end
  inherited DataSource: TDataSource
    Left = 448
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 504
    Top = 8
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 590392
  end
end
