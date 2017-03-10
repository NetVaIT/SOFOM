inherited frmConaplicaciones: TfrmConaplicaciones
  BorderStyle = bsToolWindow
  Caption = 'Consulta Aplicaciones'
  ClientHeight = 580
  ClientWidth = 1019
  ExplicitWidth = 1025
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 507
    Width = 1019
    ExplicitTop = 536
    ExplicitWidth = 1025
  end
  inherited splDetail1: TSplitter
    Top = 264
    Width = 1019
    ExplicitTop = 293
    ExplicitWidth = 1025
  end
  inherited splDetail2: TSplitter
    Top = 469
    Width = 1019
    ExplicitLeft = -10
    ExplicitTop = 337
    ExplicitWidth = 1025
  end
  inherited pnlMaster: TPanel
    Top = 73
    Width = 1019
    Height = 191
    ExplicitTop = 72
    ExplicitWidth = 1025
    ExplicitHeight = 221
    inherited cxGrid: TcxGrid
      Width = 1019
      Height = 191
      ExplicitWidth = 1025
      ExplicitHeight = 221
      inherited tvMaster: TcxGridDBTableView
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 300
        end
        object tvMasterAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'Anexo'
          Width = 318
        end
        object tvMasterNoCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'NoCuentaXCobrar'
          Width = 101
        end
        object tvMasterFechaCXC: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCXC'
        end
        object tvMasterFechaAplicacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAplicacion'
        end
        object tvMasterFechaPago: TcxGridDBColumn
          DataBinding.FieldName = 'FechaPago'
        end
        object tvMasterSeriePago: TcxGridDBColumn
          DataBinding.FieldName = 'SeriePago'
          Width = 86
        end
        object tvMasterFolioPago: TcxGridDBColumn
          DataBinding.FieldName = 'FolioPago'
          Width = 75
        end
        object tvMasterimporte: TcxGridDBColumn
          DataBinding.FieldName = 'importe'
        end
        object tvMasterIdPagoAplicacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPagoAplicacion'
          Visible = False
        end
        object tvMasterIdPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPago'
          Visible = False
        end
        object tvMasterIdPersonaCliente: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaCliente'
          Visible = False
        end
        object tvMasterIdCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI'
          Visible = False
        end
        object tvMasterIDAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IDAnexo'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 510
    Width = 1019
    Height = 35
    ExplicitTop = 539
    ExplicitWidth = 1025
    ExplicitHeight = 35
  end
  inherited pnlDetail2: TPanel
    Top = 472
    Width = 1019
    Height = 35
    ExplicitTop = 501
    ExplicitWidth = 1025
    ExplicitHeight = 35
  end
  inherited pnlDetail1: TPanel
    Top = 267
    Width = 1019
    Height = 202
    ExplicitTop = 296
    ExplicitWidth = 1025
    ExplicitHeight = 202
  end
  inherited pnlClose: TPanel
    Top = 545
    Width = 1019
    Height = 35
    ExplicitTop = 574
    ExplicitWidth = 1025
    ExplicitHeight = 35
    inherited btnClose: TButton
      Left = 934
      ExplicitLeft = 940
    end
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 31
    Width = 1019
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 9
    object RdGrpSeleccion: TRadioGroup
      Left = 0
      Top = 0
      Width = 305
      Height = 42
      Align = alLeft
      Caption = 'Filtrar por Fecha de:'
      Columns = 4
      ItemIndex = 3
      Items.Strings = (
        'Aplicaci'#243'n'
        'Pago'
        'Cta X Cob'
        'Sin Filtro')
      TabOrder = 0
      OnClick = RdGrpSeleccionClick
      ExplicitHeight = 41
    end
    object PnlBusqueda: TPanel
      Left = 305
      Top = 0
      Width = 201
      Height = 42
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 1
      ExplicitHeight = 41
      object Label3: TLabel
        Left = 16
        Top = 2
        Width = 90
        Height = 13
        Caption = 'Cliente parecido a:'
      end
      object EdtNombre: TEdit
        Left = 15
        Top = 17
        Width = 163
        Height = 21
        TabOrder = 0
      end
    end
    object PnlFechas: TPanel
      Left = 506
      Top = 0
      Width = 447
      Height = 42
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 2
      ExplicitHeight = 41
      object Label4: TLabel
        Left = 21
        Top = 4
        Width = 30
        Height = 13
        Caption = 'Desde'
        Transparent = True
      end
      object Label5: TLabel
        Left = 181
        Top = 4
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Transparent = True
      end
      object SpdBtnConsulta: TSpeedButton
        Left = 331
        Top = 15
        Width = 25
        Height = 25
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F3333337F3333377F8F8F8F773
          333337333333373F3333078F8F8F870333337F333333337F333307F8F8F8F703
          33337F333333337F3333078F8F8F8703333373F333333373333377F8F8F8F773
          333337F3333337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = SpdBtnConsultaClick
      end
      object cxDtEdtInicio: TcxDateEdit
        Left = 16
        Top = 17
        TabOrder = 0
        Width = 145
      end
      object cxDtEdtFin: TcxDateEdit
        Left = 176
        Top = 17
        TabOrder = 1
        Width = 137
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmAplicacionesConsulta.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 107
    end
    inherited dxbTools: TdxBar
      DockedLeft = 238
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42738.400515763890000000
      BuiltInReportLink = True
    end
  end
end
