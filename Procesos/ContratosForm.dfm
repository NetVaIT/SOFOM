inherited frmContratos: TfrmContratos
  Caption = 'frmContratos'
  ClientHeight = 705
  ExplicitWidth = 651
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 537
    Align = alTop
    ExplicitTop = 571
  end
  inherited splDetail1: TSplitter
    Top = 231
    Align = alTop
    ExplicitTop = 293
  end
  inherited splDetail2: TSplitter
    Top = 384
    Align = alTop
    ExplicitTop = 487
  end
  inherited pnlMaster: TPanel
    Height = 200
    Align = alTop
    ExplicitHeight = 200
    inherited cxGrid: TcxGrid
      Height = 200
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
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 150
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 540
    Height = 124
    Align = alClient
    ExplicitTop = 574
  end
  inherited pnlDetail2: TPanel
    Top = 387
    Height = 150
    Align = alTop
    ExplicitTop = 387
    ExplicitHeight = 150
  end
  inherited pnlDetail1: TPanel
    Top = 234
    Height = 150
    Align = alTop
    ExplicitTop = 234
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Top = 664
    ExplicitTop = 615
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
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
      ReportDocument.CreationDate = 42683.590026041670000000
      BuiltInReportLink = True
    end
  end
end
