inherited frmPersonasRolesDocumentos: TfrmPersonasRolesDocumentos
  Caption = 'frmPersonasRolesDocumentos'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    ExplicitTop = 260
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    ExplicitTop = 304
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdRolDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolDocumento'
          Visible = False
        end
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Visible = False
        end
        object tvMasterDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'Documento'
          Width = 600
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 307
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 263
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    ExplicitTop = 392
    ExplicitWidth = 645
    inherited btnClose: TButton
      ExplicitLeft = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasRolesDocumentos.adodsMaster
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
