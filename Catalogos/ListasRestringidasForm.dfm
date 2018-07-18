inherited frmListasRestringidas: TfrmListasRestringidas
  BorderStyle = bsToolWindow
  Caption = 'Listas restringidas'
  ClientHeight = 428
  ClientWidth = 907
  ExplicitWidth = 913
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 907
    ExplicitTop = 343
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 907
    ExplicitTop = 255
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 907
    ExplicitTop = 299
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 907
    Height = 227
    ExplicitTop = 28
    ExplicitWidth = 674
    ExplicitHeight = 227
    inherited cxGrid: TcxGrid
      Width = 907
      Height = 227
      ExplicitWidth = 674
      ExplicitHeight = 227
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
    Width = 907
    ExplicitTop = 346
    ExplicitWidth = 674
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 907
    ExplicitTop = 302
    ExplicitWidth = 674
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 907
    ExplicitTop = 258
    ExplicitWidth = 674
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 907
    ExplicitTop = 387
    ExplicitWidth = 674
    inherited btnClose: TButton
      Left = 822
      ExplicitLeft = 589
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      28
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
          ItemName = 'dxBarButton8'
        end>
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 381
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtNombre'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end
        item
          Visible = True
          ItemName = 'dxBrBtnLPB'
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
    object dxBarButton8: TdxBarButton
      Action = dmListasRestringidas.actWeb
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBrBtnLPB: TdxBarButton
      Action = dmListasRestringidas.ActCargaLPB
      Category = 0
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
      BuiltInReportLink = True
    end
  end
end
