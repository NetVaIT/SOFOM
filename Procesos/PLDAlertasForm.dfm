inherited frmPLDAlertas: TfrmPLDAlertas
  Caption = 'frmPLDAlertas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitTop = 26
    ExplicitHeight = 258
    inherited cxGrid: TcxGrid
      Height = 258
      ExplicitHeight = 258
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPLDAlerta: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlerta'
          Visible = False
        end
        object tvMasterIdPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdPago'
          Visible = False
        end
        object tvMasterIdPLDOperacionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDOperacionTipo'
          Visible = False
        end
        object tvMasterIdPLDAlertaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlertaTipo'
          Visible = False
        end
        object tvMasterIdPLDAlertaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlertaEstatus'
          Visible = False
        end
        object tvMasterFechaDeteccion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaDeteccion'
        end
        object tvMasterFechaPago: TcxGridDBColumn
          DataBinding.FieldName = 'FechaPago'
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 300
        end
        object tvMasterFolioPago: TcxGridDBColumn
          DataBinding.FieldName = 'FolioPago'
          Visible = False
        end
        object tvMasterSeriePago: TcxGridDBColumn
          DataBinding.FieldName = 'SeriePago'
          Visible = False
          Width = 64
        end
        object tvMasterMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPago'
        end
        object tvMasterImportePago: TcxGridDBColumn
          DataBinding.FieldName = 'ImportePago'
        end
        object tvMasterOperacionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'OperacionTipo'
          Width = 300
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 300
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 300
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 500
        end
        object tvMasterRazon: TcxGridDBColumn
          DataBinding.FieldName = 'Razon'
          Width = 500
        end
        object tvMasterR24: TcxGridDBColumn
          DataBinding.FieldName = 'R24'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPLDAlertas.adodsMaster
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
      ReportDocument.CreationDate = 42899.653800057880000000
      BuiltInReportLink = True
    end
  end
end
