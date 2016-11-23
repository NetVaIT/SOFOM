inherited frmInstruccionesTiposDetalle: TfrmInstruccionesTiposDetalle
  BorderStyle = bsToolWindow
  Caption = 'Detalle'
  ClientHeight = 428
  ClientWidth = 645
  OnCreate = FormCreate
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
    Height = 224
    TabOrder = 7
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdInstruccionTipoDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipoDetalle'
          Visible = False
        end
        object tvMasterIdInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipo'
          Visible = False
        end
        object tvMasterIdMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdMovimientoTipo'
          Visible = False
        end
        object tvMasterMovimientoTipo: TcxGridDBColumn
          DataBinding.FieldName = 'MovimientoTipo'
          Width = 304
        end
        object tvMasterNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 304
        end
        object tvMasterValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          Width = 304
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 304
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
    TabOrder = 1
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
    TabOrder = 0
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
    TabOrder = 4
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    ExplicitTop = 387
    ExplicitWidth = 645
    inherited btnClose: TButton
      Left = 560
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
      BuiltInReportLink = True
    end
  end
end
