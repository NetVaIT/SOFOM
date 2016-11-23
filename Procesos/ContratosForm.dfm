inherited frmContratos: TfrmContratos
  Caption = 'frmContratos'
  ClientHeight = 656
  ExplicitWidth = 651
  ExplicitHeight = 656
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 571
  end
  inherited splDetail1: TSplitter
    Align = alTop
    ExplicitTop = 293
  end
  inherited splDetail2: TSplitter
    Top = 487
    Align = alTop
  end
  inherited pnlMaster: TPanel
    Align = alTop
    inherited cxGrid: TcxGrid
      ExplicitTop = -3
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
    Top = 574
  end
  inherited pnlDetail2: TPanel
    Top = 490
    Height = 81
    Align = alClient
  end
  inherited pnlDetail1: TPanel
    Height = 200
    Align = alTop
    ExplicitHeight = 200
  end
  inherited pnlClose: TPanel
    Top = 615
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
