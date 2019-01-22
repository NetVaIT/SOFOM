inherited FrmUsuariosPerfilesEdt: TFrmUsuariosPerfilesEdt
  Caption = 'Perfiles de Usuarios'
  ClientHeight = 712
  ClientWidth = 1079
  ExplicitWidth = 1085
  ExplicitHeight = 741
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 1079
    Height = 671
    ExplicitWidth = 1079
    ExplicitHeight = 671
    ClientRectBottom = 669
    ClientRectRight = 1077
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = -14
      ExplicitTop = 42
      ExplicitWidth = 1075
      ExplicitHeight = 643
      object Label1: TLabel
        Left = 40
        Top = 48
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 40
        Top = 104
        Width = 63
        Height = 13
        Caption = 'PermisoMenu'
        FocusControl = cxDBTextEdit2
        OnClick = Label2Click
      end
      object Label3: TLabel
        Left = 282
        Top = 104
        Width = 70
        Height = 13
        Caption = 'PermisoOpcion'
        FocusControl = cxDBTextEdit3
      end
      object Label4: TLabel
        Left = 512
        Top = 48
        Width = 82
        Height = 13
        Caption = 'Permisos Funci'#243'n'
        FocusControl = cxDBTextEdit4
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 40
        Top = 64
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 401
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 40
        Top = 120
        DataBinding.DataField = 'PermisoMenu'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 282
        Top = 120
        DataBinding.DataField = 'PermisoOpcion'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 407
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 512
        Top = 64
        DataBinding.DataField = 'PermisosFuncion'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 177
      end
      object cxChckGrpMnCatalogos: TcxCheckGroup
        Tag = 1
        Left = 40
        Top = 201
        Caption = 'Cat'#225'logos'
        Properties.Items = <
          item
            Caption = 'Ubicaciones'
            Tag = 1
          end
          item
            Caption = 'Bancos'
            Tag = 2
          end
          item
            Caption = 'Monedas'
            Tag = 3
          end
          item
            Caption = 'Cotizaciones Monedas'
            Tag = 6
          end
          item
            Caption = 'Listas Restringidas'
            Tag = 5
          end
          item
            Caption = 'Pone Fecha Actual'
            Tag = 100
          end
          item
            Caption = 'Configura Alertas PLD'
            Tag = 29
          end
          item
            Caption = 'Matriz Riesgo'
            Tag = 61
          end
          item
            Caption = 'Puestos'
            Tag = 8
          end
          item
            Caption = 'Capacitaciones'
            Tag = 10
          end
          item
            Caption = 'Plazas Turnos'
            Tag = 4
          end
          item
            Caption = 'Establecimientos'
            Tag = 5
          end
          item
            Caption = 'Productos'
            Tag = 11
          end
          item
            Caption = 'Familias'
            Tag = 13
          end
          item
            Caption = 'Clientes'
            Tag = 22
          end
          item
            Caption = 'Proveedores'
            Tag = 23
          end
          item
            Caption = 'Emisor'
            Tag = 28
          end
          item
            Caption = 'Empleados'
            Tag = 21
          end
          item
            Caption = 'Personas'
            Tag = 20
          end
          item
            Caption = 'Perfiles'
            Tag = 65
          end>
        Properties.OnEditValueChanged = cxChckGrpMnCatalogosPropertiesEditValueChanged
        TabOrder = 4
        Height = 414
        Width = 201
      end
      object cxChckBxCatalogos: TcxCheckBox
        Tag = 1
        Left = 40
        Top = 176
        Caption = 'Cat'#225'logos                  |1000'
        TabOrder = 5
        OnClick = cxChckBxCatalogosClick
        Width = 121
      end
      object cxCheckBox1: TcxCheckBox
        Tag = 2
        Left = 282
        Top = 176
        Caption = 'Procesos                '
        TabOrder = 6
        OnClick = cxChckBxCatalogosClick
        Width = 121
      end
      object cxChckGrpProcesos: TcxCheckGroup
        Tag = 2
        Left = 282
        Top = 201
        Caption = 'Procesos'
        Properties.Items = <
          item
            Caption = 'Calculadora de Amortizaciones'
            Tag = 31
          end
          item
            Caption = 'Evaluaci'#243'n de Riesgo'
            Tag = 62
          end
          item
            Caption = 'Cotizaciones '
            Tag = 36
          end
          item
            Caption = 'Contratos'
            Tag = 30
          end
          item
            Caption = 'Cuentas por Cobrar '
            Tag = 33
          end
          item
            Caption = 'Facturaci'#243'n '
            Tag = 32
          end
          item
            Caption = 'Notas cr'#233'dito'
            Tag = 38
          end
          item
            Caption = 'Pagos por cliente'
            Tag = 63
          end
          item
            Caption = 'Pagos'
            Tag = 34
          end
          item
            Caption = 'CFDI de Pagos '
            Tag = 40
          end
          item
            Caption = 'Aplicaci'#243'n de Pagos'
            Tag = 35
          end
          item
            Caption = 'Seguimiento de Cobros'
            Tag = 37
          end
          item
            Caption = 'Alertas PLD'
            Tag = 39
          end>
        Properties.OnEditValueChanged = cxChckGrpMnCatalogosPropertiesEditValueChanged
        TabOrder = 7
        Height = 288
        Width = 185
      end
      object cxChckGrpReportes: TcxCheckGroup
        Tag = 3
        Left = 504
        Top = 201
        Caption = 'Reportes'
        Properties.Items = <
          item
            Caption = 'Expedientes recibidos'
            Tag = 55
          end
          item
            Caption = 'Informaci'#243'n Contratos'
            Tag = 52
          end
          item
            Caption = 'Colocaci'#243'n'
            Tag = 56
          end
          item
            Caption = 'Acumulado de colocaci'#243'n'
            Tag = 57
          end
          item
            Caption = 'Antig'#252'edad de saldos'
            Tag = 50
          end
          item
            Caption = 'Cobertura'
            Tag = 54
          end
          item
            Caption = 'Estado de cuenta'
            Tag = 51
          end
          item
            Caption = 'Reporte de Cartera'
            Tag = 53
          end
          item
            Caption = 'Aplicaciones mensuales'
            Tag = 60
          end
          item
            Caption = 'CFDI Contabilidad'
            Tag = 64
          end
          item
            Caption = 'Bur'#243' de cr'#233'dito'
            Tag = 58
          end>
        Properties.OnChange = cxChckGrpMnCatalogosPropertiesEditValueChanged
        TabOrder = 8
        Height = 248
        Width = 185
      end
      object cxCheckBox2: TcxCheckBox
        Tag = 3
        Left = 504
        Top = 176
        Caption = 'Reportes         '
        TabOrder = 9
        OnClick = cxChckBxCatalogosClick
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 671
    Width = 1079
    ExplicitTop = 671
    ExplicitWidth = 1079
    inherited btnCancel: TButton
      Left = 997
      ExplicitLeft = 997
    end
    inherited btnOk: TButton
      Left = 916
      ExplicitLeft = 916
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmUsuariosPerfiles.adodsMaster
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
