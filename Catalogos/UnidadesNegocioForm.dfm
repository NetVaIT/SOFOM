inherited frmUnidadesNegocio: TfrmUnidadesNegocio
  BorderStyle = bsToolWindow
  Caption = 'Unidades de Negocio'
  ClientHeight = 380
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 437
    Width = 645
    Align = alTop
    ExplicitTop = 431
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 131
    Width = 645
    Align = alTop
    ExplicitLeft = -8
    ExplicitTop = 122
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 284
    Width = 645
    Align = alTop
    ExplicitTop = 278
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 100
    Align = alTop
    ExplicitHeight = 100
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 100
      ExplicitHeight = 100
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdUnidadNegocio: TcxGridDBColumn
          DataBinding.FieldName = 'IdUnidadNegocio'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 500
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 440
    Width = 645
    Height = 31
    Align = alClient
    ExplicitTop = 440
    ExplicitHeight = 31
  end
  inherited pnlDetail2: TPanel
    Top = 287
    Width = 645
    Height = 150
    Align = alTop
    ExplicitTop = 287
    ExplicitHeight = 150
  end
  inherited pnlDetail1: TPanel
    Top = 134
    Width = 645
    Height = 150
    Align = alTop
    ExplicitTop = 134
    ExplicitHeight = 150
  end
  inherited pnlClose: TPanel
    Top = 339
    Width = 645
    inherited btnClose: TButton
      Left = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPuestos.adodsMaster
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
