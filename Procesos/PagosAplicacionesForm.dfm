inherited frmPagosAplicaciones: TfrmPagosAplicaciones
  BorderStyle = bsToolWindow
  Caption = 'Aplicaciones'
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
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterIDCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDI'
          Visible = False
        end
        object tvMasterFechaAplicacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAplicacion'
        end
        object tvMasterImporteFactoraje: TcxGridDBColumn
          DataBinding.FieldName = 'ImporteFactoraje'
          Visible = False
        end
        object tvMasterCXCFechaVencimiento: TcxGridDBColumn
          DataBinding.FieldName = 'CXCFechaVencimiento'
        end
        object tvMasterAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'Anexo'
          Width = 300
        end
        object tvMasterCXCDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'CXCDescripcion'
          Width = 300
        end
        object tvMasterCFDISerie: TcxGridDBColumn
          DataBinding.FieldName = 'CFDISerie'
        end
        object tvMasterCFDIFolio: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIFolio'
        end
        object tvMasterUUID: TcxGridDBColumn
          DataBinding.FieldName = 'UUID'
        end
        object tvMasterCFDIMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIMoneda'
          Width = 70
        end
        object tvMasterCFDIMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIMetodoPago'
          Width = 110
        end
        object tvMasterCFDIParcialidad: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIParcialidad'
          Width = 76
        end
        object tvMasterCFDISaldoAnterior: TcxGridDBColumn
          DataBinding.FieldName = 'CFDISaldoAnterior'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterCFDISaldoInsoluto: TcxGridDBColumn
          DataBinding.FieldName = 'CFDISaldoInsoluto'
        end
        object tvMasterIdCFDIPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIPago'
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
      ReportDocument.CreationDate = 43264.700645682870000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
