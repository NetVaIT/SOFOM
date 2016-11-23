inherited frmEstablecimientos: TfrmEstablecimientos
  BorderStyle = bsToolWindow
  Caption = 'Establecimientos'
  ClientHeight = 433
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 341
    Width = 645
    ExplicitTop = 365
  end
  inherited splDetail1: TSplitter
    Top = 53
    Width = 645
    ExplicitTop = 191
  end
  inherited splDetail2: TSplitter
    Top = 285
    Width = 645
    ExplicitTop = 264
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 22
    ExplicitHeight = 46
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 22
      ExplicitHeight = 46
      inherited tvMaster: TcxGridDBTableView
        Preview.Column = tvMasterDomicilio
        Preview.Visible = True
        object tvMasterIdEstablecimiento: TcxGridDBColumn
          DataBinding.FieldName = 'IdEstablecimiento'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterIdDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'IdDomicilio'
          Visible = False
        end
        object tvMasterDomicilio: TcxGridDBColumn
          DataBinding.FieldName = 'Domicilio'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 344
    Width = 645
    Height = 48
    ExplicitTop = 368
    ExplicitHeight = 48
  end
  inherited pnlDetail2: TPanel
    Top = 288
    Width = 645
    Height = 53
    ExplicitTop = 312
    ExplicitHeight = 53
  end
  inherited pnlDetail1: TPanel
    Top = 56
    Width = 645
    Height = 229
    ExplicitTop = 80
    ExplicitHeight = 229
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
