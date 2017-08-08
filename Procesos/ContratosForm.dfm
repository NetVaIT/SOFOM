inherited frmContratos: TfrmContratos
  BorderStyle = bsToolWindow
  Caption = 'Contratos'
  ClientHeight = 676
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 432
    Width = 645
    Align = alTop
    ExplicitTop = 571
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 126
    Width = 645
    Align = alTop
    ExplicitTop = 293
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 279
    Width = 645
    Align = alTop
    ExplicitTop = 487
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 100
    Align = alTop
    ExplicitTop = 26
    ExplicitWidth = 645
    ExplicitHeight = 100
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 100
      ExplicitWidth = 645
      ExplicitHeight = 200
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdContrato: TcxGridDBColumn
          DataBinding.FieldName = 'IdContrato'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdContratoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdContratoTipo'
          Visible = False
        end
        object tvMasterIdContratoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdContratoEstatus'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 300
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 150
        end
        object tvMasterMontoAutorizado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoAutorizado'
        end
        object tvMasterDiaCorte: TcxGridDBColumn
          DataBinding.FieldName = 'DiaCorte'
          Width = 65
        end
        object tvMasterDiaVencimiento: TcxGridDBColumn
          DataBinding.FieldName = 'DiaVencimiento'
          Width = 106
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 150
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 435
    Width = 645
    Height = 200
    Align = alClient
    ExplicitTop = 535
    ExplicitWidth = 645
    ExplicitHeight = 100
  end
  inherited pnlDetail2: TPanel
    Top = 282
    Width = 645
    Height = 150
    Align = alTop
    ExplicitTop = 282
    ExplicitWidth = 645
    ExplicitHeight = 150
  end
  inherited pnlDetail1: TPanel
    Top = 129
    Width = 645
    Height = 150
    Align = alTop
    ExplicitTop = 129
    ExplicitWidth = 645
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Top = 635
    Width = 645
    ExplicitTop = 635
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
          ItemName = 'dxbbCrearAnexo'
        end>
    end
    object dxbbCrearAnexo: TdxBarButton
      Caption = 'Crear anexo'
      Category = 0
      Hint = 'Crea anexo de una cotizacion'
      Visible = ivAlways
      PaintStyle = psCaptionGlyph
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
      ReportDocument.CreationDate = 42683.590026041670000000
      BuiltInReportLink = True
    end
  end
end
