inherited frmCotizaciones: TfrmCotizaciones
  BorderStyle = bsToolWindow
  Caption = 'Solicitudes'
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
    Align = alTop
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
    Height = 224
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 224
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      ExplicitWidth = 645
      ExplicitHeight = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCotizacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacion'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdContratoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdContratoTipo'
          Visible = False
        end
        object tvMasterIdCotizacionEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionEstatus'
          Visible = False
        end
        object tvMasterIdCotizacionCausa: TcxGridDBColumn
          DataBinding.FieldName = 'IdCotizacionCausa'
          Visible = False
        end
        object tvMasterIdUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuario'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 100
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 300
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 300
        end
        object tvMasterTipoContrato: TcxGridDBColumn
          DataBinding.FieldName = 'TipoContrato'
          Width = 100
        end
        object tvMasterElaboracion: TcxGridDBColumn
          DataBinding.FieldName = 'Elaboracion'
        end
        object tvMasterVigencia: TcxGridDBColumn
          DataBinding.FieldName = 'Vigencia'
        end
        object tvMasterCausa: TcxGridDBColumn
          DataBinding.FieldName = 'Causa'
        end
        object tvMasterUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 80
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
    Align = alClient
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
  inherited DataSource: TDataSource
    DataSet = dmCotizaciones.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 128
    end
    inherited dxbEdit: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Insert1'
        end
        item
          Visible = True
          ItemName = 'Edit1'
        end
        item
          Visible = True
          ItemName = 'Delete1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxbbCambiarEstatus'
        end>
    end
    inherited dxbTools: TdxBar
      DockedLeft = 256
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
          ItemName = 'dxbbAmortizaciones'
        end>
    end
    object dxbbAmortizaciones: TdxBarButton
      Caption = 'Amortizaciones'
      Category = 0
      Visible = ivNever
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
    end
    object dxbbCambiarEstatus: TdxBarButton
      Caption = 'actCambiarEstatus'
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
  inherited PopupMenu: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Insert1'
      end
      item
        Visible = True
        ItemName = 'Edit1'
      end
      item
        Visible = True
        ItemName = 'Delete1'
      end
      item
        Visible = True
        ItemName = 'dxbbCambiarEstatus'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarSeparator1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end>
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42711.658349664350000000
      BuiltInReportLink = True
    end
  end
end
