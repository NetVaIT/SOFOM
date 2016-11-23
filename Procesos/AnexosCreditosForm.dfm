inherited frmAnexosCreditos: TfrmAnexosCreditos
  Caption = 'frmAnexosCreditos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdAnexoCredito: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoCredito'
          Visible = False
        end
        object tvMasterIdAnexo: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexo'
          Visible = False
        end
        object tvMasterIdAnexoCreditoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdAnexoCreditoEstatus'
          Visible = False
        end
        object tvMasterIdUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuario'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterMontoFiananciar: TcxGridDBColumn
          DataBinding.FieldName = 'MontoFiananciar'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
        end
        object tvMasterPlazo: TcxGridDBColumn
          DataBinding.FieldName = 'Plazo'
        end
        object tvMasterPagoMensual: TcxGridDBColumn
          DataBinding.FieldName = 'PagoMensual'
        end
        object tvMasterFechainicial: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha inicial'
        end
        object tvMasterFechadecorte: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha de corte'
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 150
        end
        object tvMasterUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
        end
      end
    end
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
      ReportDocument.CreationDate = 42697.479886030090000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
