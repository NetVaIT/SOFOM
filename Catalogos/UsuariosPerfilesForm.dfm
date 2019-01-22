inherited frmUsuariosPerfiles: TfrmUsuariosPerfiles
  Caption = 'frmUsuariosPerfiles'
  ClientWidth = 992
  ExplicitWidth = 992
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 992
    ExplicitWidth = 717
  end
  inherited splDetail1: TSplitter
    Width = 992
    ExplicitWidth = 717
  end
  inherited splDetail2: TSplitter
    Width = 992
    ExplicitWidth = 717
  end
  inherited pnlMaster: TPanel
    Width = 992
    ExplicitWidth = 717
    inherited cxGrid: TcxGrid
      Width = 992
      ExplicitWidth = 717
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdUsuarioPerfil: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioPerfil'
          Visible = False
        end
        object tvMasterDescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripcion'
          Width = 167
        end
        object tvMasterPermisoMenu: TcxGridDBColumn
          Caption = 'Permiso Menu'
          DataBinding.FieldName = 'PermisoMenu'
          Width = 180
        end
        object tvMasterPermisoOpcion: TcxGridDBColumn
          Caption = 'Permiso Opci'#243'n'
          DataBinding.FieldName = 'PermisoOpcion'
          Width = 300
        end
        object tvMasterPermisosFuncion: TcxGridDBColumn
          Caption = 'Permisos Funci'#243'n'
          DataBinding.FieldName = 'PermisosFuncion'
          Width = 282
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 992
    ExplicitWidth = 717
  end
  inherited pnlDetail2: TPanel
    Width = 992
    ExplicitWidth = 717
  end
  inherited pnlDetail1: TPanel
    Width = 992
    ExplicitWidth = 717
  end
  inherited pnlClose: TPanel
    Width = 992
    ExplicitWidth = 717
    inherited btnClose: TButton
      Left = 907
      ExplicitLeft = 632
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmUsuariosPerfiles.adodsMaster
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
      ReportDocument.CreationDate = 43482.470723344910000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
