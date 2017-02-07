inherited frmPersonaEdit: TfrmPersonaEdit
  Caption = 'Persona'
  ClientHeight = 566
  ClientWidth = 654
  OnDestroy = FormDestroy
  ExplicitWidth = 660
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 654
    Height = 525
    ExplicitWidth = 629
    ExplicitHeight = 525
    ClientRectBottom = 523
    ClientRectRight = 652
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 625
      ExplicitHeight = 495
      object pnlPersona: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 625
        object Label1: TLabel
          Left = 195
          Top = 3
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
        object Label16: TLabel
          Left = 360
          Top = 6
          Width = 39
          Height = 13
          Caption = 'Estatus '
          FocusControl = DBLookupComboBox1
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 195
          Top = 22
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 142
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
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 360
          Top = 22
          Width = 177
          Height = 21
          DataField = 'EstatusPersona'
          DataSource = dmPersona.dsMaster
          TabOrder = 2
        end
      end
      object pnlPersonaMoral: TPanel
        Left = 0
        Top = 49
        Width = 650
        Height = 93
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        ExplicitWidth = 625
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
        Width = 650
        Height = 209
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        ExplicitWidth = 625
        object Label5: TLabel
          Left = 16
          Top = 39
          Width = 37
          Height = 13
          Caption = 'Nombre'
          FocusControl = edtNombre
        end
        object Label6: TLabel
          Left = 215
          Top = 41
          Width = 78
          Height = 13
          Caption = 'Apellido Paterno'
          FocusControl = edtAPaterno
        end
        object Label7: TLabel
          Left = 413
          Top = 39
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
          Visible = False
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
          Top = 167
          Width = 72
          Height = 13
          Caption = 'Vigencia FM3/4'
          FocusControl = cxDBDateEdit2
          Visible = False
        end
        object lblCURP: TLabel
          Left = 15
          Top = -3
          Width = 43
          Height = 13
          Caption = 'C.U.R.P.'
        end
        object edtNombre: TcxDBTextEdit
          Left = 16
          Top = 55
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          OnEditing = edtNombreEditing
          Width = 190
        end
        object edtAPaterno: TcxDBTextEdit
          Left = 215
          Top = 55
          DataBinding.DataField = 'ApellidoPaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          OnEditing = edtNombreEditing
          Width = 190
        end
        object edtAMaterno: TcxDBTextEdit
          Left = 413
          Top = 55
          DataBinding.DataField = 'ApellidoMaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          OnEditing = edtNombreEditing
          Width = 189
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
          Visible = False
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
          Visible = False
          Width = 121
        end
        object cxDBEditCURP: TcxDBMaskEdit
          Left = 15
          Top = 13
          DataBinding.DataField = 'CURP'
          DataBinding.DataSource = DataSource
          TabOrder = 10
          Width = 169
        end
        object btnWeb: TButton
          Left = 184
          Top = 14
          Width = 19
          Height = 19
          Caption = '...'
          TabOrder = 11
          OnClick = btnWebClick
        end
      end
      object pnlOrigen: TPanel
        Left = 0
        Top = 351
        Width = 650
        Height = 144
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        ExplicitWidth = 625
      end
      object PnlCliente: TPanel
        Left = 0
        Top = 351
        Width = 650
        Height = 144
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        ExplicitWidth = 625
        object Label17: TLabel
          Left = 16
          Top = 14
          Width = 63
          Height = 13
          Caption = 'M'#233'todo Pago'
          FocusControl = DBLookupComboBox2
        end
        object Label19: TLabel
          Left = 458
          Top = 14
          Width = 62
          Height = 13
          Caption = 'Saldo Cliente'
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 30
          Width = 234
          Height = 21
          DataField = 'MetodoPago'
          DataSource = dmPersona.dsMaster
          TabOrder = 0
        end
        object PnlNoCtaCliente: TPanel
          Left = 264
          Top = 13
          Width = 141
          Height = 41
          BevelOuter = bvNone
          TabOrder = 1
          object Label18: TLabel
            Left = 8
            Top = -3
            Width = 115
            Height = 13
            Caption = 'No.Cuenta Pago Cliente'
            FocusControl = cxDBTextEdit4
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 8
            Top = 16
            DataBinding.DataField = 'NumCtaPagoCliente'
            DataBinding.DataSource = dmPersona.dsMaster
            TabOrder = 0
            Width = 121
          end
        end
        object cxDBLabel1: TcxDBLabel
          Left = 458
          Top = 30
          Height = 21
          Width = 145
        end
      end
      object PnlEmisor: TPanel
        Left = 0
        Top = 351
        Width = 650
        Height = 144
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        ExplicitWidth = 625
        object Label20: TLabel
          Left = 16
          Top = 4
          Width = 70
          Height = 13
          Caption = 'R'#233'gimen Fiscal'
          FocusControl = DBLookupComboBox3
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 16
          Top = 20
          Width = 300
          Height = 21
          DataField = 'RegimenFiscal'
          DataSource = dmPersona.dsMaster
          TabOrder = 0
        end
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilio'
      ImageIndex = 1
      ExplicitLeft = 4
      ExplicitTop = 30
      ExplicitWidth = 625
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefono'
      ImageIndex = 2
      ExplicitWidth = 625
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correo Electronico'
      ImageIndex = 3
      ExplicitWidth = 625
    end
    object tsContacto: TcxTabSheet
      Caption = 'Contactos'
      ImageIndex = 4
      ExplicitWidth = 625
    end
    object tsPerfil: TcxTabSheet
      Caption = 'Perfil'
      ImageIndex = 8
      ExplicitWidth = 625
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 7
      ExplicitWidth = 625
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 5
      ExplicitWidth = 625
    end
    object tsCSD: TcxTabSheet
      Caption = 'Sello digital'
      ImageIndex = 6
      ExplicitWidth = 625
    end
  end
  inherited pmlMain: TPanel
    Top = 525
    Width = 654
    ExplicitTop = 525
    ExplicitWidth = 629
    inherited btnCancel: TButton
      Left = 572
      ExplicitLeft = 547
    end
    inherited btnOk: TButton
      Left = 491
      ExplicitLeft = 466
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
  inherited ActionList: TActionList
    Left = 296
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
