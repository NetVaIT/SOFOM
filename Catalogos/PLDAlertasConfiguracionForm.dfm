inherited frmPLDAlertasConfiguracion: TfrmPLDAlertasConfiguracion
  Caption = 'frmPLDAlertasConfiguracion'
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
        object tvMasterIdPLDAlertaCofiguracion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlertaCofiguracion'
          Visible = False
        end
        object tvMasterIdPLDAlertaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPLDAlertaTipo'
          Visible = False
        end
        object tvMasterIdPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaTipo'
          Visible = False
        end
        object tvMasterIdMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdMetodoPago'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterPLDAlertaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'PLDAlertaTipo'
          Width = 303
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterMensaje: TcxGridDBColumn
          DataBinding.FieldName = 'Mensaje'
        end
        object tvMasterPersonaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaTipo'
        end
        object tvMasterMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'MetodoPago'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 118
        end
        object tvMasterAcumular: TcxGridDBColumn
          DataBinding.FieldName = 'Acumular'
          Width = 80
        end
      end
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
      ReportDocument.CreationDate = 43144.464985532410000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
