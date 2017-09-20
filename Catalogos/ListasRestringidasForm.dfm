inherited frmListasRestringidas: TfrmListasRestringidas
  BorderStyle = bsToolWindow
  Caption = 'Listas restringidas'
  ClientHeight = 428
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitTop = 26
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdListaRestringida: TcxGridDBColumn
          DataBinding.FieldName = 'IdListaRestringida'
          Visible = False
        end
        object tvMasterIdOrganismo: TcxGridDBColumn
          DataBinding.FieldName = 'IdOrganismo'
          Visible = False
        end
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstatus'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 100
        end
        object tvMasterOrganismo: TcxGridDBColumn
          DataBinding.FieldName = 'Organismo'
          Width = 200
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 200
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 300
        end
        object tvMasterAlias: TcxGridDBColumn
          DataBinding.FieldName = 'Alias'
          Width = 300
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    ExplicitTop = 346
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    ExplicitTop = 302
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    ExplicitTop = 258
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
      ExplicitLeft = 560
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbFilter: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtNombre'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object edtNombre: TcxBarEditItem
      Caption = 'Nombre'
      Category = 0
      Hint = 'Nombre'
      Visible = ivAlways
      ShowCaption = True
      Width = 200
      PropertiesClassName = 'TcxTextEditProperties'
      InternalEditValue = nil
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
      ReportDocument.CreationDate = 42776.465400173610000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
