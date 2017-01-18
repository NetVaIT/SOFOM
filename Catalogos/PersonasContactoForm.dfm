inherited frmPersonasContacto: TfrmPersonasContacto
  Caption = 'frmPersonasContacto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaContacto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaContacto'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdContacto: TcxGridDBColumn
          DataBinding.FieldName = 'IdContacto'
          Visible = False
        end
        object tvMasterContacto: TcxGridDBColumn
          DataBinding.FieldName = 'Contacto'
        end
        object tvMasterPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
        end
        object tvMasterPrincipal: TcxGridDBColumn
          DataBinding.FieldName = 'Principal'
          Width = 105
        end
        object tvMasterApoderadoLegal: TcxGridDBColumn
          DataBinding.FieldName = 'ApoderadoLegal'
          Width = 105
        end
        object tvMasterRepresentanteLegal: TcxGridDBColumn
          DataBinding.FieldName = 'RepresentanteLegal'
          Width = 105
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
      ReportDocument.CreationDate = 42741.451573425930000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
