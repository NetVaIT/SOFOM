inherited frmListaNotasCredito: TfrmListaNotasCredito
  Caption = 'frmListaNotasCredito'
  ClientWidth = 799
  ExplicitWidth = 799
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 799
  end
  inherited splDetail1: TSplitter
    Width = 799
  end
  inherited splDetail2: TSplitter
    Width = 799
  end
  inherited pnlMaster: TPanel
    Width = 799
    ExplicitTop = 26
    ExplicitHeight = 258
    inherited cxGrid: TcxGrid
      Width = 799
      Height = 258
      ExplicitHeight = 258
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI'
          Visible = False
        end
        object tvMasterIdCFDITipoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDITipoDocumento'
          Visible = False
        end
        object tvMasterIdPersonaReceptor: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaReceptor'
          Visible = False
        end
        object tvMasterIdCFDIEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIEstatus'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterIdClienteDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdClienteDomicilio'
          Visible = False
        end
        object tvMasterSerie: TcxGridDBColumn
          DataBinding.FieldName = 'Serie'
        end
        object tvMasterFolio: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 107
        end
        object tvMasterSubTotal: TcxGridDBColumn
          DataBinding.FieldName = 'SubTotal'
        end
        object tvMasterTotalImpuestoTrasladado: TcxGridDBColumn
          Caption = 'Total IVA'
          DataBinding.FieldName = 'TotalImpuestoTrasladado'
          Width = 84
        end
        object tvMasterTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 124
        end
        object tvMasterSaldoDocumento: TcxGridDBColumn
          Caption = 'Saldo Documento'
          DataBinding.FieldName = 'SaldoDocumento'
        end
        object tvMasterObservaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
          Visible = False
        end
        object tvMasterSaldoFactoraje: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFactoraje'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 799
  end
  inherited pnlDetail2: TPanel
    Width = 799
  end
  inherited pnlDetail1: TPanel
    Width = 799
  end
  inherited pnlClose: TPanel
    Width = 799
    ExplicitTop = 422
    ExplicitWidth = 799
    inherited btnClose: TButton
      Left = 714
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPagos.ADODtStCFDINotaCredito
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 2
    end
    inherited dxbEdit: TdxBar
      Visible = False
    end
    inherited dxbTools: TdxBar
      DockedLeft = 132
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
      ReportDocument.CreationDate = 42913.417505358800000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
