inherited frmPersonaEdit: TfrmPersonaEdit
  Caption = 'Persona'
  ClientHeight = 687
  ClientWidth = 654
  OnDestroy = FormDestroy
  ExplicitWidth = 660
  ExplicitHeight = 716
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 654
    Height = 646
    ExplicitWidth = 654
    ExplicitHeight = 553
    ClientRectBottom = 644
    ClientRectRight = 652
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 650
      ExplicitHeight = 525
      object PnlEmisor: TPanel
        Left = 0
        Top = 351
        Width = 650
        Height = 267
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        ExplicitHeight = 174
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
      object pnlPersona: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 192
          Top = 8
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
          Left = 352
          Top = 8
          Width = 39
          Height = 13
          Caption = 'Estatus '
          FocusControl = DBLookupComboBox1
        end
        object Label26: TLabel
          Left = 512
          Top = 8
          Width = 91
          Height = 13
          Caption = 'Identificador(Alias)'
          FocusControl = cxDBTextEdit5
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 192
          Top = 24
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 150
        end
        object cmbTipoPersona: TcxDBLookupComboBox
          Left = 16
          Top = 24
          DataBinding.DataField = 'PersonaTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          Properties.OnChange = cxDBLookupComboBox1PropertiesChange
          TabOrder = 1
          Width = 170
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 352
          Top = 24
          Width = 150
          Height = 21
          DataField = 'EstatusPersona'
          DataSource = DataSource
          TabOrder = 2
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 512
          Top = 24
          DataBinding.DataField = 'Identificador'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 121
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
          Left = 332
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
          Width = 616
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 16
          Top = 65
          DataBinding.DataField = 'RazonSocialTipo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 300
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 332
          Top = 65
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 300
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
        object Label5: TLabel
          Left = 16
          Top = 39
          Width = 37
          Height = 13
          Caption = 'Nombre'
          FocusControl = edtNombre
        end
        object Label6: TLabel
          Left = 224
          Top = 41
          Width = 78
          Height = 13
          Caption = 'Apellido Paterno'
          FocusControl = edtAPaterno
        end
        object Label7: TLabel
          Left = 432
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
          Left = 195
          Top = 165
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label12: TLabel
          Left = 192
          Top = 124
          Width = 97
          Height = 13
          Caption = 'Lugar de Nacimiento'
          FocusControl = cxDBTextEdit2
        end
        object Label14: TLabel
          Left = 16
          Top = 83
          Width = 85
          Height = 13
          Caption = 'Nombre Completo'
          FocusControl = cxDBTextEdit3
        end
        object lblCURP: TLabel
          Left = 16
          Top = -1
          Width = 43
          Height = 13
          Caption = 'C.U.R.P.'
        end
        object Label15: TLabel
          Left = 352
          Top = 166
          Width = 60
          Height = 13
          Caption = 'Nacionalidad'
        end
        object edtNombre: TcxDBTextEdit
          Left = 16
          Top = 55
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          OnEditing = edtNombreEditing
          Width = 200
        end
        object edtAPaterno: TcxDBTextEdit
          Left = 224
          Top = 55
          DataBinding.DataField = 'ApellidoPaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          OnEditing = edtNombreEditing
          Width = 200
        end
        object edtAMaterno: TcxDBTextEdit
          Left = 432
          Top = 55
          DataBinding.DataField = 'ApellidoMaterno'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          OnEditing = edtNombreEditing
          Width = 200
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 140
          DataBinding.DataField = 'FechaNacimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 170
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 16
          Top = 181
          DataBinding.DataField = 'Sexo'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 8
          Width = 170
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 195
          Top = 181
          DataBinding.DataField = 'EstadoCivil'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 9
          Width = 150
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 192
          Top = 140
          DataBinding.DataField = 'LugarNacimiento'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 440
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 99
          DataBinding.DataField = 'RazonSocial'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 616
        end
        object cxDBEditCURP: TcxDBMaskEdit
          Left = 16
          Top = 16
          DataBinding.DataField = 'CURP'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 182
        end
        object btnWeb: TButton
          Left = 197
          Top = 17
          Width = 19
          Height = 19
          Caption = '...'
          TabOrder = 1
          OnClick = btnWebClick
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 352
          Top = 182
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 10
          Width = 280
        end
      end
      object pnlOrigen: TPanel
        Left = 0
        Top = 351
        Width = 650
        Height = 267
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        ExplicitHeight = 174
      end
      object PnlCliente: TPanel
        Left = 0
        Top = 351
        Width = 650
        Height = 267
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        ExplicitHeight = 174
        object Label17: TLabel
          Left = 16
          Top = 80
          Width = 63
          Height = 13
          Caption = 'M'#233'todo Pago'
          FocusControl = DBLookupComboBox2
        end
        object Label19: TLabel
          Left = 432
          Top = 80
          Width = 62
          Height = 13
          Caption = 'Saldo Cliente'
        end
        object Label22: TLabel
          Left = 16
          Top = 0
          Width = 106
          Height = 13
          Caption = 'Calificaci'#243'n de cartera'
          FocusControl = DBLookupComboBox5
        end
        object Label21: TLabel
          Left = 224
          Top = 0
          Width = 32
          Height = 13
          Caption = 'Riesgo'
          FocusControl = DBLookupComboBox4
        end
        object Label23: TLabel
          Left = 16
          Top = 40
          Width = 53
          Height = 13
          Caption = 'Actividad 1'
          FocusControl = DBLookupComboBox6
        end
        object Label24: TLabel
          Left = 224
          Top = 40
          Width = 53
          Height = 13
          Caption = 'Actividad 2'
          FocusControl = DBLookupComboBox7
        end
        object Label25: TLabel
          Left = 432
          Top = 40
          Width = 53
          Height = 13
          Caption = 'Actividad 3'
          FocusControl = DBLookupComboBox8
        end
        object Label18: TLabel
          Left = 224
          Top = 80
          Width = 95
          Height = 13
          Caption = 'No. cuenta de pago'
          FocusControl = cxDBTextEdit4
        end
        object Label13: TLabel
          Left = 432
          Top = 20
          Width = 27
          Height = 13
          Caption = 'Inicial'
          FocusControl = cxDBTextEdit6
        end
        object Label27: TLabel
          Left = 552
          Top = 20
          Width = 30
          Height = 13
          Caption = 'Actual'
          FocusControl = cxDBTextEdit7
        end
        object Label28: TLabel
          Left = 505
          Top = -2
          Width = 53
          Height = 13
          Caption = 'Calificaci'#243'n'
          FocusControl = cxDBTextEdit6
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 96
          Width = 200
          Height = 21
          DataField = 'MetodoPago'
          DataSource = DataSource
          TabOrder = 5
        end
        object cxDBLabel1: TcxDBLabel
          Left = 432
          Top = 96
          Height = 21
          Width = 200
        end
        object DBLookupComboBox5: TcxDBLookupComboBox
          Left = 16
          Top = 16
          DataBinding.DataField = 'Calificacion'
          DataBinding.DataSource = DataSource
          Properties.DropDownWidth = 400
          Properties.ListColumns = <
            item
              Width = 100
              FieldName = 'Identificador'
            end
            item
              Width = 300
              FieldName = 'Descripcion'
            end>
          TabOrder = 0
          Width = 200
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 224
          Top = 16
          Width = 200
          Height = 21
          DataField = 'Riesgo'
          DataSource = DataSource
          TabOrder = 1
        end
        object DBLookupComboBox6: TcxDBLookupComboBox
          Left = 16
          Top = 56
          DataBinding.DataField = 'Actividad1'
          DataBinding.DataSource = DataSource
          Properties.DropDownWidth = 400
          Properties.ListColumns = <
            item
              Width = 100
              FieldName = 'Identificador'
            end
            item
              Width = 300
              FieldName = 'Descripcion'
            end>
          TabOrder = 2
          Width = 200
        end
        object DBLookupComboBox7: TcxDBLookupComboBox
          Left = 224
          Top = 56
          DataBinding.DataField = 'Actividad2'
          DataBinding.DataSource = DataSource
          Properties.DropDownWidth = 400
          Properties.ListColumns = <
            item
              Width = 100
              FieldName = 'Identificador'
            end
            item
              Width = 300
              FieldName = 'Descripcion'
            end>
          TabOrder = 3
          Width = 200
        end
        object DBLookupComboBox8: TcxDBLookupComboBox
          Left = 432
          Top = 56
          DataBinding.DataField = 'Actividad3'
          DataBinding.DataSource = DataSource
          Properties.DropDownWidth = 400
          Properties.ListColumns = <
            item
              Width = 100
              FieldName = 'Identificador'
            end
            item
              Width = 300
              FieldName = 'Descripcion'
            end>
          TabOrder = 4
          Width = 200
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 224
          Top = 96
          DataBinding.DataField = 'NumCtaPagoCliente'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 200
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 465
          Top = 16
          DataBinding.DataField = 'CalificacionInicial'
          DataBinding.DataSource = dmPersona.dsMaster
          TabOrder = 8
          Width = 45
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 588
          Top = 16
          DataBinding.DataField = 'CalificacionActual'
          DataBinding.DataSource = dmPersona.dsMaster
          TabOrder = 9
          Width = 44
        end
        object cxGroupBox1: TcxGroupBox
          Left = 16
          Top = 131
          Caption = 'PLD'
          TabOrder = 10
          Height = 118
          Width = 616
          object Label29: TLabel
            Left = 16
            Top = 16
            Width = 88
            Height = 13
            Caption = 'Origen del recurso'
            FocusControl = cxDBTextEdit8
          end
          object Label30: TLabel
            Left = 272
            Top = 16
            Width = 92
            Height = 13
            Caption = 'Destino del recurso'
            FocusControl = cxDBTextEdit9
          end
          object Label31: TLabel
            Left = 16
            Top = 56
            Width = 69
            Height = 13
            Caption = 'Monto m'#225'ximo'
            FocusControl = cxDBTextEdit10
          end
          object Label32: TLabel
            Left = 292
            Top = 56
            Width = 126
            Height = 13
            Caption = 'Monto m'#225'ximo en efectivo'
            FocusControl = cxDBTextEdit11
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 16
            Top = 32
            DataBinding.DataField = 'PLDOrigenRecurso'
            DataBinding.DataSource = DataSource
            TabOrder = 0
            Width = 250
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 272
            Top = 32
            DataBinding.DataField = 'PLDDestinoRecurso'
            DataBinding.DataSource = DataSource
            TabOrder = 1
            Width = 250
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 16
            Top = 72
            DataBinding.DataField = 'PLDMontoMaximo'
            DataBinding.DataSource = DataSource
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 165
            Top = 72
            Caption = 'Pagara en efectivo'
            DataBinding.DataField = 'PLDPagarEfectivo'
            DataBinding.DataSource = DataSource
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 292
            Top = 72
            DataBinding.DataField = 'PLDMontoMaximoEfectivo'
            DataBinding.DataSource = DataSource
            TabOrder = 4
            Width = 121
          end
        end
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilio'
      ImageIndex = 1
      ExplicitHeight = 525
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefono'
      ImageIndex = 2
      ExplicitHeight = 525
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correo Electronico'
      ImageIndex = 3
      ExplicitHeight = 525
    end
    object tsContacto: TcxTabSheet
      Caption = 'Contactos'
      ImageIndex = 4
      ExplicitHeight = 525
    end
    object tsPerfil: TcxTabSheet
      Caption = 'Perfil'
      ImageIndex = 8
      ExplicitHeight = 525
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 7
      ExplicitHeight = 525
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 5
      ExplicitHeight = 525
    end
    object tsCSD: TcxTabSheet
      Caption = 'Sello digital'
      ImageIndex = 6
      ExplicitHeight = 525
    end
  end
  inherited pmlMain: TPanel
    Top = 646
    Width = 654
    ExplicitTop = 553
    ExplicitWidth = 654
    inherited btnCancel: TButton
      Left = 572
      ExplicitLeft = 572
    end
    inherited btnOk: TButton
      Left = 491
      ExplicitLeft = 491
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
    Left = 464
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 584
    Top = 8
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 590344
  end
end
