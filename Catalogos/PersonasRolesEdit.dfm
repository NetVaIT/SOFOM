inherited frmPersonaRolesEdit: TfrmPersonaRolesEdit
  Caption = 'Rol Asignado'
  ClientHeight = 414
  ClientWidth = 789
  OnDestroy = FormDestroy
  ExplicitWidth = 795
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 789
    Height = 373
    ExplicitLeft = -88
    ExplicitTop = -6
    ExplicitWidth = 789
    ExplicitHeight = 373
    ClientRectBottom = 371
    ClientRectRight = 787
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 785
      ExplicitHeight = 343
      object pnlRol: TPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 177
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 15
          Height = 13
          Caption = 'Rol'
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 97
          Height = 13
          Caption = 'Persona relacionada'
        end
        object Label3: TLabel
          Left = 16
          Top = 88
          Width = 36
          Height = 13
          Caption = 'Estatus'
        end
        object Label4: TLabel
          Left = 256
          Top = 88
          Width = 26
          Height = 13
          Caption = 'Clase'
        end
        object Label5: TLabel
          Left = 16
          Top = 136
          Width = 82
          Height = 13
          Caption = 'Fecha de ingreso'
          FocusControl = cxDBDateEdit1
        end
        object Label6: TLabel
          Left = 162
          Top = 136
          Width = 68
          Height = 13
          Caption = 'Fecha de baja'
          FocusControl = cxDBDateEdit2
        end
        object Label9: TLabel
          Left = 464
          Top = 134
          Width = 89
          Height = 13
          Caption = 'Porcentaje Calculo'
          FocusControl = cxDBTextEdit2
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 15
          Top = 23
          DataBinding.DataField = 'Rol'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdRol'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          TabOrder = 0
          Width = 210
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 15
          Top = 63
          DataBinding.DataField = 'PersonaRelacionada'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdPersona'
          Properties.ListColumns = <
            item
              FieldName = 'RazonSocial'
            end>
          TabOrder = 1
          Width = 522
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 15
          Top = 103
          DataBinding.DataField = 'RolEstatus'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdRolEstatus'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          TabOrder = 2
          Width = 210
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 255
          Top = 103
          DataBinding.DataField = 'RolClase'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdRolClase'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          TabOrder = 3
          Width = 210
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 151
          DataBinding.DataField = 'FechaIngreso'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 161
          Top = 151
          DataBinding.DataField = 'FechaBaja'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 312
          Top = 152
          Caption = 'Calcular'
          DataBinding.DataField = 'Calcular'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 464
          Top = 150
          DataBinding.DataField = 'PorcentajeCalculo'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 121
        end
      end
      object pnlProveedor: TPanel
        Left = 0
        Top = 177
        Width = 785
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object dbchkFacturar: TcxDBCheckBox
          Left = 16
          Top = 3
          Caption = 'Facturar'
          DataBinding.DataField = 'Facturar'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
      end
      object pnlEmpleado: TPanel
        Left = 0
        Top = 203
        Width = 785
        Height = 86
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object Label7: TLabel
          Left = 16
          Top = 3
          Width = 31
          Height = 13
          Caption = 'N.S.S.'
          FocusControl = cxDBTextEdit1
        end
        object Label8: TLabel
          Left = 16
          Top = 43
          Width = 119
          Height = 13
          Caption = 'Fecha de alta al I.M.S.S.'
          FocusControl = cxDBDateEdit3
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 19
          DataBinding.DataField = 'NSS'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 169
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 16
          Top = 59
          DataBinding.DataField = 'FechaAltaIMSS'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
      end
      object pnlOutsourcing: TPanel
        Left = 0
        Top = 289
        Width = 785
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object Label10: TLabel
          Left = 16
          Top = 4
          Width = 126
          Height = 13
          Caption = 'Registro Patronal I.M.S.S.'
          FocusControl = cxDBTextEdit3
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 20
          DataBinding.DataField = 'RegistroPatronalIMSS'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 126
        end
      end
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 1
    end
    object tsExpedienteDigital: TcxTabSheet
      Caption = 'Expediente Digital'
      ImageIndex = 1
      ExplicitLeft = -46
      ExplicitTop = 24
    end
    object tsCuentas: TcxTabSheet
      Caption = 'Cuentas Contables'
      ImageIndex = 2
    end
    object tsCXCConceptos: TcxTabSheet
      Caption = 'Conceptos CXC'
      ImageIndex = 1
    end
    object tsEstatus: TcxTabSheet
      Caption = 'Estatus'
      ImageIndex = 6
    end
  end
  inherited pmlMain: TPanel
    Top = 373
    Width = 789
    ExplicitTop = 373
    ExplicitWidth = 789
    inherited btnCancel: TButton
      Left = 707
      ExplicitLeft = 707
    end
    inherited btnOk: TButton
      Left = 626
      ExplicitLeft = 626
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersona.adodsPersonaRoles
    Left = 192
    Top = 56
  end
  inherited ActionList: TActionList
    Left = 240
    Top = 56
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 5833032
  end
end
