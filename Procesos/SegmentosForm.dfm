inherited frmSegmentos: TfrmSegmentos
  Caption = 'Amortizaciones'
  ClientHeight = 600
  ClientWidth = 1000
  ExplicitWidth = 1000
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 515
    Width = 1000
    ExplicitTop = 515
    ExplicitWidth = 878
  end
  inherited splDetail1: TSplitter
    Top = 406
    Width = 1000
    ExplicitTop = 263
    ExplicitWidth = 878
  end
  inherited splDetail2: TSplitter
    Top = 471
    Width = 1000
    ExplicitTop = 471
    ExplicitWidth = 878
  end
  inherited pnlMaster: TPanel
    Top = 63
    Width = 1000
    Height = 343
    ExplicitTop = 63
    ExplicitWidth = 930
    ExplicitHeight = 343
    inherited cxGrid: TcxGrid
      Width = 1000
      Height = 343
      ExplicitWidth = 930
      ExplicitHeight = 343
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        OptionsData.Inserting = True
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvMasterSegmento: TcxGridDBColumn
          DataBinding.FieldName = 'Segmento'
          Visible = False
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
          Visible = False
        end
        object tvMasterSaldoInicial: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoInicial'
        end
        object tvMasterCapital: TcxGridDBColumn
          DataBinding.FieldName = 'Capital'
        end
        object tvMasterCapitalImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalImpuesto'
        end
        object tvMasterCapitalTotal: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalTotal'
        end
        object tvMasterInteres: TcxGridDBColumn
          DataBinding.FieldName = 'Interes'
        end
        object tvMasterInteresImpuesto: TcxGridDBColumn
          DataBinding.FieldName = 'InteresImpuesto'
        end
        object tvMasterInteresTotal: TcxGridDBColumn
          DataBinding.FieldName = 'InteresTotal'
        end
        object tvMasterImpactoISR: TcxGridDBColumn
          DataBinding.FieldName = 'ImpactoISR'
        end
        object tvMasterPago: TcxGridDBColumn
          DataBinding.FieldName = 'Pago'
        end
        object tvMasterPagoTotal: TcxGridDBColumn
          DataBinding.FieldName = 'PagoTotal'
        end
        object tvMasterSaldoFinal: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFinal'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 518
    Width = 1000
    ExplicitTop = 518
    ExplicitWidth = 930
  end
  inherited pnlDetail2: TPanel
    Top = 474
    Width = 1000
    ExplicitTop = 474
    ExplicitWidth = 930
  end
  inherited pnlDetail1: TPanel
    Top = 409
    Width = 1000
    Height = 62
    ExplicitTop = 409
    ExplicitWidth = 930
    ExplicitHeight = 62
  end
  inherited pnlClose: TPanel
    Top = 559
    Width = 1000
    ExplicitTop = 559
    ExplicitWidth = 930
    inherited btnClose: TButton
      Left = 915
      ExplicitLeft = 845
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      63
      0)
    object dxbValores: TdxBar [4]
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
          ItemName = 'edtFuturo'
        end
        item
          Visible = True
          ItemName = 'edtImpactoISR'
        end
        item
          Visible = True
          ItemName = 'edtFechaInicial'
        end
        item
          Visible = True
          ItemName = 'dxbbCalcular'
        end
        item
          Visible = True
          ItemName = 'EdtSegmentos'
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
      PaintStyle = psCaptionGlyph
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'Monto a financiar'
      Category = 0
      Hint = 'Monto a financiar'
      Visible = ivAlways
      ShowCaption = True
    end
    object edtMonto: TcxBarEditItem
      Caption = 'Monto'
      Category = 0
      Hint = 'Monto'
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
      Properties.DisplayFormat = ',0.00 %;-,0.00 %'
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
      Caption = 'Inicial'
      Category = 0
      Hint = 'Inicial'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      InternalEditValue = 0d
    end
    object edtFuturo: TcxBarEditItem
      Caption = 'Futuro'
      Category = 0
      Hint = 'Futuro'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCurrencyEditProperties'
      InternalEditValue = '0'
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxCurrencyEditProperties'
    end
    object edtImpactoISR: TcxBarEditItem
      Caption = 'Impacto ISR'
      Category = 0
      Hint = 'Impacto ISR'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCurrencyEditProperties'
      InternalEditValue = '0'
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
      ReportDocument.CreationDate = 42684.503633287030000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
