object FrmSegProximosContactos: TFrmSegProximosContactos
  Left = 0
  Top = 0
  Caption = 'Seguimienrto por Pr'#243'ximos Contactos'
  ClientHeight = 805
  ClientWidth = 1339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 389
    Width = 1339
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 0
    ExplicitWidth = 368
  end
  object PnlSoloIncidencias: TPanel
    Left = 0
    Top = 0
    Width = 1339
    Height = 389
    Align = alClient
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 783
      Top = 81
      Width = 2
      Height = 307
      Align = alRight
      ExplicitLeft = 569
      ExplicitTop = 87
      ExplicitHeight = 216
    end
    object PnlFechas: TPanel
      Left = 1
      Top = 1
      Width = 1337
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label26: TLabel
        Left = 358
        Top = 44
        Width = 34
        Height = 13
        Caption = 'Desde:'
      end
      object Label27: TLabel
        Left = 533
        Top = 44
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object SpdBtnFiltroDias: TSpeedButton
        Left = 787
        Top = 38
        Width = 29
        Height = 26
        Hint = 'Buscar por Fecha contacto'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpdBtnFiltroDiasClick
      end
      object DtTmDesde: TcxDateEdit
        Left = 397
        Top = 38
        TabOrder = 0
        Width = 130
      end
      object DtTmHasta: TcxDateEdit
        Left = 567
        Top = 38
        TabOrder = 1
        Width = 123
      end
      object cxChckGrpCalifica: TcxCheckGroup
        Left = 18
        Top = 11
        Caption = 'Filtro por Calificaci'#243'n Actual'
        Properties.Columns = 2
        Properties.Items = <>
        Properties.OnChange = cxChckGrpCalificaPropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.BorderStyle = ebsNone
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 2
        Height = 69
        Width = 323
      end
      object cxChckBxFecha: TcxCheckBox
        Left = 696
        Top = 40
        Caption = 'Usar Fecha'
        State = cbsChecked
        TabOrder = 3
        Width = 88
      end
    end
    object Panel2: TPanel
      Left = 785
      Top = 81
      Width = 553
      Height = 307
      Align = alRight
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 29
        Width = 551
        Height = 277
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSCXCPendientes
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.GroupByBox = False
          object cxGridDBTableView1IdCuentaXCobrar: TcxGridDBColumn
            DataBinding.FieldName = 'IdCuentaXCobrar'
            Width = 101
          end
          object cxGridDBTableView1IdPersona: TcxGridDBColumn
            DataBinding.FieldName = 'IdPersona'
            Visible = False
          end
          object cxGridDBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
          end
          object cxGridDBTableView1Saldo: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo'
          end
          object cxGridDBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 300
          end
          object cxGridDBTableView1FechaVencimiento: TcxGridDBColumn
            DataBinding.FieldName = 'FechaVencimiento'
          end
          object cxGridDBTableView1IdCFDI: TcxGridDBColumn
            DataBinding.FieldName = 'IdCFDI'
            Visible = False
          end
          object cxGridDBTableView1Serie: TcxGridDBColumn
            DataBinding.FieldName = 'Serie'
          end
          object cxGridDBTableView1Folio: TcxGridDBColumn
            DataBinding.FieldName = 'Folio'
          end
          object cxGridDBTableView1Total: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
          end
          object cxGridDBTableView1SaldoDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'SaldoDocumento'
          end
          object cxGridDBTableView1IdAnexo: TcxGridDBColumn
            DataBinding.FieldName = 'IdAnexo'
            Visible = False
          end
          object cxGridDBTableView1CapitalCobrado: TcxGridDBColumn
            DataBinding.FieldName = 'CapitalCobrado'
            Visible = False
          end
          object cxGridDBTableView1SaldoInsoluto: TcxGridDBColumn
            DataBinding.FieldName = 'SaldoInsoluto'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 551
        Height = 28
        Align = alTop
        Alignment = taLeftJustify
        Caption = '        Cuentas por cobrar pendientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object PnlIncidenciaLista: TPanel
      Left = 1
      Top = 81
      Width = 782
      Height = 307
      Align = alClient
      TabOrder = 2
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 780
        Height = 28
        Align = alTop
        Alignment = taLeftJustify
        Caption = '        Registro de seguimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object SpeedButton2: TSpeedButton
          Left = 523
          Top = 5
          Width = 23
          Height = 22
          Hint = 'MostrarTodo'
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpdBtnMostrartodoClick
        end
      end
      object cxGrid: TcxGrid
        Left = 1
        Top = 29
        Width = 780
        Height = 277
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfStandard
        object tvMaster: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSConIncidencias
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.GroupByBox = False
          object tvMasterIDIncidenciaCobranza: TcxGridDBColumn
            DataBinding.FieldName = 'IDIncidenciaCobranza'
            Visible = False
          end
          object tvMasterIDUsuario: TcxGridDBColumn
            DataBinding.FieldName = 'IDUsuario'
            Visible = False
          end
          object tvMasterIDPersonaCliente: TcxGridDBColumn
            DataBinding.FieldName = 'IDPersonaCliente'
            Visible = False
          end
          object tvMasterIdIncidenciaEstado: TcxGridDBColumn
            DataBinding.FieldName = 'IdIncidenciaEstado'
            Visible = False
          end
          object tvMasterIdAnexo: TcxGridDBColumn
            DataBinding.FieldName = 'IdAnexo'
            Visible = False
          end
          object tvMasterFechaReg: TcxGridDBColumn
            Caption = 'Fecha Registro'
            DataBinding.FieldName = 'FechaReg'
            Width = 81
          end
          object tvMasterCliente: TcxGridDBColumn
            DataBinding.FieldName = 'Cliente'
            Width = 516
          end
          object tvMasterProxcontacto: TcxGridDBColumn
            DataBinding.FieldName = 'Proxcontacto'
          end
          object tvMasterRegContacto: TcxGridDBColumn
            DataBinding.FieldName = 'RegContacto'
            Width = 255
          end
          object tvMasterAcuerdo: TcxGridDBColumn
            DataBinding.FieldName = 'Acuerdo'
          end
          object tvMasterCondiciones: TcxGridDBColumn
            DataBinding.FieldName = 'Condiciones'
          end
          object tvMasterPromesaPago: TcxGridDBColumn
            DataBinding.FieldName = 'PromesaPago'
          end
          object tvMasterEstadoIncidencia: TcxGridDBColumn
            DataBinding.FieldName = 'EstadoIncidencia'
          end
          object tvMasterUsuarioReg: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioReg'
          end
          object tvMasterFoliosAsoc: TcxGridDBColumn
            DataBinding.FieldName = 'FoliosAsoc'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = tvMaster
        end
      end
    end
  end
  object Pnlinferior: TPanel
    Left = 0
    Top = 392
    Width = 1339
    Height = 413
    Align = alBottom
    TabOrder = 1
    object DBCtrlGrdDatos: TDBCtrlGrid
      Left = 775
      Top = 35
      Width = 563
      Height = 377
      Align = alClient
      Color = 16776176
      DataSource = DSConIncidencias
      PanelHeight = 94
      PanelWidth = 546
      ParentColor = False
      TabOrder = 0
      RowCount = 4
      object Label9: TLabel
        Left = 10
        Top = 3
        Width = 91
        Height = 13
        Caption = 'Fecha Registro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 11
        Top = 19
        Width = 90
        Height = 13
        Caption = 'CXC asociados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 241
        Top = 3
        Width = 44
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 257
        Top = 35
        Width = 99
        Height = 13
        Caption = 'Se contact'#243' con:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 377
        Top = 3
        Width = 81
        Height = 13
        Caption = 'Pr'#243'x.Contacto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 11
        Top = 35
        Width = 52
        Height = 13
        Caption = 'Registr'#243':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 11
        Top = 51
        Width = 52
        Height = 13
        Caption = 'Acuerdo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBEstado: TcxDBLabel
        Left = 287
        Top = 1
        DataBinding.DataField = 'EstadoIncidencia'
        DataBinding.DataSource = DSConIncidencias
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 87
      end
      object cxDBLabel8: TcxDBLabel
        Left = 462
        Top = 1
        DataBinding.DataField = 'Proxcontacto'
        DataBinding.DataSource = DSConIncidencias
        Height = 21
        Width = 139
      end
      object cxDBLabel9: TcxDBLabel
        Left = 362
        Top = 33
        DataBinding.DataField = 'RegContacto'
        DataBinding.DataSource = DSConIncidencias
        Height = 21
        Width = 139
      end
      object cxDBLabel10: TcxDBLabel
        Left = 107
        Top = 2
        DataBinding.DataField = 'FechaReg'
        DataBinding.DataSource = DSConIncidencias
        Height = 21
        Width = 128
      end
      object cxDBLabel11: TcxDBLabel
        Left = 107
        Top = 18
        DataBinding.DataField = 'FoliosAsoc'
        DataBinding.DataSource = DSConIncidencias
        Height = 21
        Width = 438
      end
      object cxDBLabel12: TcxDBLabel
        Left = 66
        Top = 33
        DataBinding.DataField = 'RegContacto'
        DataBinding.DataSource = DSConIncidencias
        Height = 20
        Width = 139
      end
      object cxDBLabel13: TcxDBLabel
        Left = 66
        Top = 51
        DataBinding.DataField = 'Acuerdo'
        DataBinding.DataSource = DSConIncidencias
        Properties.WordWrap = True
        Height = 45
        Width = 508
      end
    end
    object PNLRegInci: TPanel
      Left = 1
      Top = 35
      Width = 774
      Height = 377
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label16: TLabel
        Left = 25
        Top = 15
        Width = 40
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 23
        Top = 40
        Width = 52
        Height = 13
        Caption = 'Registra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 437
        Top = 128
        Width = 90
        Height = 13
        Caption = 'CXC asociadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 256
        Top = 77
        Width = 85
        Height = 13
        Caption = 'Pr'#243'x.Contacto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 24
        Top = 130
        Width = 52
        Height = 13
        Caption = 'Acuerdo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 23
        Top = 78
        Width = 99
        Height = 13
        Caption = 'Se contact'#243' con:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 26
        Top = 250
        Width = 74
        Height = 13
        Caption = 'Condiciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object C5: TcxDBDateEdit
        Left = 254
        Top = 96
        DataBinding.DataField = 'Proxcontacto'
        DataBinding.DataSource = DSConIncidencias
        TabOrder = 0
        Width = 121
      end
      object cxDBLabel6: TcxDBLabel
        Left = 71
        Top = 13
        DataBinding.DataField = 'FechaReg'
        DataBinding.DataSource = DSConIncidencias
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 87
      end
      object cxDBLabel7: TcxDBLabel
        Left = 81
        Top = 39
        DataBinding.DataField = 'UsuarioReg'
        DataBinding.DataSource = DSConIncidencias
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGreen
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 263
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 23
        Top = 96
        DataBinding.DataField = 'RegContacto'
        DataBinding.DataSource = DSConIncidencias
        TabOrder = 3
        Width = 217
      end
      object cxDBChckBxPromPago: TcxDBCheckBox
        Left = 384
        Top = 96
        Caption = 'Promesa Pago'
        DataBinding.DataField = 'PromesaPago'
        DataBinding.DataSource = DSConIncidencias
        TabOrder = 4
        Width = 121
      end
      object cxDBMemo1: TcxDBMemo
        Left = 26
        Top = 148
        DataBinding.DataField = 'Acuerdo'
        DataBinding.DataSource = DSConIncidencias
        TabOrder = 5
        Height = 95
        Width = 403
      end
      object cxLSTBxIDDocs: TcxListBox
        Left = 435
        Top = 147
        Width = 82
        Height = 95
        ItemHeight = 13
        PopupMenu = PpUpMnFolios
        TabOrder = 6
      end
      object cxLstBxFolios: TcxListBox
        Left = 523
        Top = 148
        Width = 87
        Height = 94
        ItemHeight = 13
        TabOrder = 7
        Visible = False
      end
      object cxChckLstBxCondiciones: TcxCheckGroup
        Left = 26
        Top = 269
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Cobro directo por Asesor'
          end
          item
            Caption = 'Condicionada'
          end
          item
            Caption = 'En Aclaraci'#243'n'
          end
          item
            Caption = 'Rechazada por el Cliente'
          end
          item
            Caption = 'Falta Autorizaci'#243'n'
          end
          item
            Caption = 'Cobro Dif'#237'cil'
          end>
        Properties.OnChange = cxChckLstBxCondicionesPropertiesChange
        Style.Color = clNavy
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 8
        Height = 62
        Width = 303
      end
      object cxDBLabel14: TcxDBLabel
        Left = 26
        Top = 337
        DataBinding.DataField = 'Condiciones'
        DataBinding.DataSource = DSConIncidencias
        Height = 21
        Width = 306
      end
      object cxDBLabel15: TcxDBLabel
        Left = 351
        Top = 262
        DataBinding.DataField = 'FoliosAsoc'
        DataBinding.DataSource = DSConIncidencias
        Properties.WordWrap = True
        Height = 76
        Width = 78
      end
      object cxDBRdGrpEstado: TcxDBRadioGroup
        Left = 435
        Top = 19
        Caption = 'Estado incidencia'
        Ctl3D = True
        DataBinding.DataField = 'IdIncidenciaEstado'
        DataBinding.DataSource = DSIncidencias
        ParentCtl3D = False
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'Abierta'
            Value = '1'
          end
          item
            Caption = 'Cerrada'
            Value = '2'
          end>
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfStandard
        Style.IsFontAssigned = True
        StyleDisabled.BorderStyle = ebsNone
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 11
        Height = 51
        Width = 153
      end
    end
    object PnlNavIncid: TPanel
      Left = 1
      Top = 1
      Width = 1337
      Height = 34
      Align = alTop
      TabOrder = 2
      object SpdBtnMostrartodo: TSpeedButton
        Left = 419
        Top = 2
        Width = 23
        Height = 22
        Hint = 'MostrarTodo'
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
          0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
          00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
          00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
          F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
          F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
          FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
          0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
          00337777FFFF77FF7733EEEE0000000003337777777777777333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpdBtnMostrartodoClick
      end
      object DBNavIncidencia: TDBNavigator
        Left = 24
        Top = 3
        Width = 228
        Height = 25
        DataSource = DSConIncidencias
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        Hints.Strings = (
          'First record'
          'Prior record'
          'Next record'
          'Last record'
          'Agregar Incidencia'
          'Eliminar Incidencia'
          'Modificar Incidencia'
          'Guardar Cambios'
          'Cancelar Cambios '
          'Actualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object DSIncidencias: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtStIncidencias
    Left = 475
    Top = 117
  end
  object PpUpMnCopia: TPopupMenu
    Left = 352
    Top = 372
    object CrearCopia1: TMenuItem
      Caption = 'Crear &Copia'
    end
    object AgregaIncidencia1: TMenuItem
      Caption = '&Agrega Incidencia'
      OnClick = AgregaIncidencia1Click
    end
  end
  object PpUpMnFolios: TPopupMenu
    Left = 480
    Top = 540
    object EliminarFolio1: TMenuItem
      Bitmap.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      Caption = 'Eliminar Folio'
      OnClick = EliminarFolio1Click
    end
  end
  object DSConIncidencias: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtStIncidenciaXFecha
    OnStateChange = DSConIncidenciasStateChange
    OnDataChange = DSConIncidenciasDataChange
    Left = 663
    Top = 117
  end
  object DSCalificaciones: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADOQryConCalificacion
    Left = 891
    Top = 29
  end
  object DSCXCPendientes: TDataSource
    AutoEdit = False
    DataSet = dmSeguimientoCobranza.ADODtStCXCPendientes
    Left = 1124
    Top = 173
  end
end
