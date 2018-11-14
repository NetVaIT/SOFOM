inherited frmCFDICPRelacionados: TfrmCFDICPRelacionados
  BorderStyle = bsToolWindow
  Caption = 'Complemento de pago relacionados'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCFDIComplementoPagoRelacionado: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIComplementoPagoRelacionado'
          Visible = False
        end
        object tvMasterIdCFDIComplementoPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIComplementoPago'
          Visible = False
        end
        object tvMasterIdCFDIAsociado: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIAsociado'
          Visible = False
        end
        object tvMasterUUID: TcxGridDBColumn
          DataBinding.FieldName = 'UUID'
        end
        object tvMasterSerie: TcxGridDBColumn
          DataBinding.FieldName = 'Serie'
          Width = 100
        end
        object tvMasterFolio: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 100
        end
        object tvMasterMonedaDR: TcxGridDBColumn
          DataBinding.FieldName = 'MonedaDR'
          Width = 55
        end
        object tvMasterTipoCambioDR: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCambioDR'
        end
        object tvMasterMetodoPagoDR: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPagoDR'
          Width = 83
        end
        object tvMasterNumParcialidad: TcxGridDBColumn
          DataBinding.FieldName = 'NumParcialidad'
          Width = 108
        end
        object tvMasterImpSaldoAnt: TcxGridDBColumn
          DataBinding.FieldName = 'ImpSaldoAnt'
          Width = 130
        end
        object tvMasterImpPagado: TcxGridDBColumn
          DataBinding.FieldName = 'ImpPagado'
          Width = 130
        end
        object tvMasterImpSaldoInsoluto: TcxGridDBColumn
          DataBinding.FieldName = 'ImpSaldoInsoluto'
          Width = 130
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 43264.552412129630000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited cxpsGrid: TcxPropertiesStore
    Components = <
      item
        Component = tvMaster
        Properties.Strings = (
          'OptionsView.Footer'
          'OptionsView.GroupByBox'
          'OptionsView.GroupFooters')
      end
      item
        Component = tvMasterFolio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDIAsociado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDIComplementoPago
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDIComplementoPagoRelacionado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImpPagado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImpSaldoAnt
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterImpSaldoInsoluto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMetodoPagoDR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterMonedaDR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterNumParcialidad
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSerie
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTipoCambioDR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterUUID
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end>
  end
end
