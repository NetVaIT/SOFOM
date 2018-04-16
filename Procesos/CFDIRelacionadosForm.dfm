inherited frmCFDIRelacionados: TfrmCFDIRelacionados
  Caption = 'frmCFDIRelacionados'
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
        OptionsData.Editing = True
        OptionsData.Inserting = True
        object tvMasterIdCFDIRelacionado: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIRelacionado'
          Visible = False
        end
        object tvMasterIDCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDI'
          Visible = False
        end
        object tvMasterIDCFDIAsociado: TcxGridDBColumn
          DataBinding.FieldName = 'IDCFDIAsociado'
          Visible = False
        end
        object tvMasterCFDIAsociado: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIAsociado'
        end
        object tvMasterUUID: TcxGridDBColumn
          DataBinding.FieldName = 'UUID'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmCFDIRelacionados.adodsMaster
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
      ReportDocument.CreationDate = 43165.499007245370000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
