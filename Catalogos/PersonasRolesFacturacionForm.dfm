inherited frmPersonasRolesFacturacion: TfrmPersonasRolesFacturacion
  Caption = 'frmPersonasRolesFacturacion'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPersonaRolFacturacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRolFacturacion'
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
        object tvMasterArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
          Width = 300
        end
        object tvMasterClave: TcxGridDBColumn
          DataBinding.FieldName = 'Clave'
          Width = 300
        end
        object tvMasterVencimientoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'VencimientoDocumento'
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
