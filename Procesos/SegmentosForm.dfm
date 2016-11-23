inherited frmSegmentos: TfrmSegmentos
  Caption = 'frmSegmentos'
  ClientWidth = 878
  ExplicitWidth = 878
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 878
    ExplicitWidth = 878
  end
  inherited splDetail1: TSplitter
    Top = 263
    Width = 878
    Align = alTop
    ExplicitTop = 263
    ExplicitWidth = 878
  end
  inherited splDetail2: TSplitter
    Width = 878
    ExplicitWidth = 878
  end
  inherited pnlMaster: TPanel
    Top = 63
    Width = 878
    Height = 200
    Align = alTop
    ExplicitTop = 63
    ExplicitWidth = 878
    ExplicitHeight = 200
    inherited cxGrid: TcxGrid
      Width = 878
      Height = 200
      ExplicitWidth = 878
      ExplicitHeight = 200
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        OptionsData.Inserting = True
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvMasterSegmento: TcxGridDBColumn
          DataBinding.FieldName = 'Segmento'
          Width = 80
        end
        object tvMasterValorPresente: TcxGridDBColumn
          DataBinding.FieldName = 'ValorPresente'
          Width = 80
        end
        object tvMasterPlazoIni: TcxGridDBColumn
          DataBinding.FieldName = 'PlazoIni'
        end
        object tvMasterPlazoFin: TcxGridDBColumn
          DataBinding.FieldName = 'PlazoFin'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
          Width = 80
        end
        object tvMasterPagoMensual: TcxGridDBColumn
          DataBinding.FieldName = 'PagoMensual'
          Width = 80
        end
        object tvMasterValorFuturo: TcxGridDBColumn
          DataBinding.FieldName = 'ValorFuturo'
          Width = 80
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 878
    ExplicitWidth = 878
  end
  inherited pnlDetail2: TPanel
    Width = 878
    ExplicitWidth = 878
  end
  inherited pnlDetail1: TPanel
    Top = 266
    Width = 878
    Height = 62
    Align = alClient
    Visible = True
    ExplicitTop = 266
    ExplicitWidth = 878
    ExplicitHeight = 62
  end
  inherited pnlClose: TPanel
    Width = 878
    ExplicitWidth = 878
    inherited btnClose: TButton
      Left = 793
      ExplicitLeft = 793
    end
  end
  inherited DataSource: TDataSource
    AutoEdit = True
    DataSet = dmAmortizaciones.dxmSegmentos
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      63
      0)
    inherited dxbTools: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxbbPreview'
        end
        item
          Visible = True
          ItemName = 'dxbbCalcular'
        end>
    end
    object dxBarManagerBar1: TdxBar [4]
      Caption = 'Valores'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 32
      DockingStyle = dsTop
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtMonto'
        end
        item
          Visible = True
          ItemName = 'edtTasaAnual'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edtPlazo'
        end
        item
          Visible = True
          ItemName = 'EdtSegmentos'
        end
        item
          Visible = True
          ItemName = 'edtFechaInicial'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbbCalcular: TdxBarButton
      Caption = 'Calcular'
      Category = 0
      Visible = ivAlways
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'Monto a financiar'
      Category = 0
      Hint = 'Monto a financiar'
      Visible = ivAlways
      ShowCaption = True
    end
    object edtMonto: TcxBarEditItem
      Caption = 'Monto a financiar'
      Category = 0
      Hint = 'Monto a financiar'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCurrencyEditProperties'
      InternalEditValue = 0c
    end
    object edtTasaAnual: TcxBarEditItem
      Caption = 'Tasa anual'
      Category = 0
      Hint = 'Tasa anual'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCurrencyEditProperties'
      InternalEditValue = 0c
    end
    object edtPlazo: TcxBarEditItem
      Caption = 'Plazo'
      Category = 0
      Hint = 'Plazo'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
    end
    object EdtSegmentos: TcxBarEditItem
      Caption = 'Segmentos'
      Category = 0
      Hint = 'Segmentos'
      Visible = ivNever
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
    end
    object edtFechaInicial: TcxBarEditItem
      Caption = 'Fecha inicial'
      Category = 0
      Hint = 'Fecha inicial'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      InternalEditValue = 0d
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
      ReportDocument.CreationDate = 42684.503633287040000000
      BuiltInReportLink = True
    end
  end
end
