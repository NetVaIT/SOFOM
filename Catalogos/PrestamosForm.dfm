inherited frmPrestamos: TfrmPrestamos
  BorderStyle = bsToolWindow
  Caption = 'Prestamos'
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
    Align = alTop
    Visible = True
    ExplicitLeft = 24
    ExplicitTop = 264
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
        object tvMasterIdPrestamo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPrestamo'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
          Width = 304
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object tvMasterPorcentaje: TcxGridDBColumn
          DataBinding.FieldName = 'Porcentaje'
        end
        object tvMasterSaldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
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
    Visible = True
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
