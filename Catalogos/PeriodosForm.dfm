inherited frmPeriodos: TfrmPeriodos
  BorderStyle = bsToolWindow
  Caption = 'Periodos'
  ClientHeight = 433
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodo'
          Visible = False
        end
        object tvMasterIdPeriodoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodoTipo'
          Visible = False
        end
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
        end
        object tvMasterPeriodoTipo: TcxGridDBColumn
          Caption = 'Tipo de Periodo'
          DataBinding.FieldName = 'PeriodoTipo'
        end
        object tvMasterIdPeriodoEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdPeriodoEstatus'
          Visible = False
        end
        object tvMasterPeriodoEstatus: TcxGridDBColumn
          Caption = 'Estatus Periodo'
          DataBinding.FieldName = 'PeriodoEstatus'
        end
        object tvMasterFechaInicio: TcxGridDBColumn
          Caption = 'Fecha Inicio'
          DataBinding.FieldName = 'FechaInicio'
        end
        object tvMasterFechaFin: TcxGridDBColumn
          Caption = 'Fecha Fin'
          DataBinding.FieldName = 'FechaFin'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterMes: TcxGridDBColumn
          DataBinding.FieldName = 'Mes'
        end
        object tvMasterAnio: TcxGridDBColumn
          Caption = 'A'#241'o'
          DataBinding.FieldName = 'Anio'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    inherited btnClose: TButton
      Left = 560
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.Visibles = (
      False)
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
          ItemName = 'dxbbCalculaPeriodo'
        end>
    end
    object dxbbCalculaPeriodo: TdxBarButton
      Category = 0
      Visible = ivAlways
      ImageIndex = 13
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
