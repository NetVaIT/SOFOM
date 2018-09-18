inherited frmListaNotasCredito: TfrmListaNotasCredito
  BorderStyle = bsDialog
  Caption = 'Lista Notas Cr'#233'dito'
  ClientHeight = 428
  ClientWidth = 793
  ExplicitWidth = 799
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 793
    ExplicitTop = 343
    ExplicitWidth = 799
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 793
    ExplicitTop = 255
    ExplicitWidth = 799
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 793
    ExplicitTop = 299
    ExplicitWidth = 799
  end
  inherited pnlMaster: TPanel
    Width = 793
    Height = 229
    ExplicitWidth = 793
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 793
      Height = 229
      ExplicitWidth = 793
      ExplicitHeight = 229
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
          Width = 75
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
    Top = 346
    Width = 793
    ExplicitTop = 346
    ExplicitWidth = 793
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 793
    ExplicitTop = 302
    ExplicitWidth = 793
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 793
    ExplicitTop = 258
    ExplicitWidth = 793
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 793
    Visible = True
    ExplicitTop = 387
    ExplicitWidth = 793
    inherited btnClose: TButton
      Left = 708
      ExplicitLeft = 708
    end
    object BtnAceptar: TButton
      Left = 596
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = BtnAceptarClick
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
      BuiltInReportLink = True
    end
  end
end
