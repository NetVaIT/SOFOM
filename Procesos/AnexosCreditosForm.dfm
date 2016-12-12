inherited frmAnexosCreditos: TfrmAnexosCreditos
  Caption = 'frmAnexosCreditos'
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
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 150
        end
        object tvMasterFechaInicial: TcxGridDBColumn
          DataBinding.FieldName = 'FechaInicial'
        end
        object tvMasterFechaCorte: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCorte'
        end
        object tvMasterMontoFiananciar: TcxGridDBColumn
          DataBinding.FieldName = 'MontoFiananciar'
          Width = 110
        end
        object tvMasterValorResidual: TcxGridDBColumn
          DataBinding.FieldName = 'ValorResidual'
        end
        object tvMasterImpactoISR: TcxGridDBColumn
          DataBinding.FieldName = 'ImpactoISR'
        end
        object tvMasterTasaAnual: TcxGridDBColumn
          DataBinding.FieldName = 'TasaAnual'
          Width = 110
        end
        object tvMasterPlazo: TcxGridDBColumn
          DataBinding.FieldName = 'Plazo'
          Width = 110
        end
        object tvMasterPagoMensual: TcxGridDBColumn
          DataBinding.FieldName = 'PagoMensual'
          Width = 110
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 110
        end
        object tvMasterUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 110
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
          ItemName = 'dxbbPreAmortizaciones'
        end
        item
          Visible = True
          ItemName = 'dxbbGenAmortizaciones'
        end>
    end
    object dxbbPreAmortizaciones: TdxBarButton
      Action = dmContratos.actPreAmortizaciones
      Category = 0
    end
    object dxbbGenAmortizaciones: TdxBarButton
      Action = dmContratos.actGenAmortizaciones
      Category = 0
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
      ReportDocument.CreationDate = 42697.479886030090000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
