inherited frmReestructurar: TfrmReestructurar
  Caption = 'Reestructurar'
  ClientWidth = 850
  ExplicitWidth = 850
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 850
    ExplicitWidth = 850
  end
  inherited splDetail1: TSplitter
    Width = 850
    ExplicitWidth = 850
  end
  inherited splDetail2: TSplitter
    Width = 850
    ExplicitWidth = 850
  end
  inherited pnlMaster: TPanel
    Width = 850
    ExplicitWidth = 850
    inherited cxGrid: TcxGrid
      Width = 850
      ExplicitWidth = 850
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterSaldo
          end
          item
            Kind = skSum
            Column = tvMasterSaldoDocumento
          end>
        OptionsData.Editing = True
        OptionsView.Footer = True
        object tvMasterIdCuentaXCobrar: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXCobrar'
          Visible = False
        end
        object tvMasterIdCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI'
          Visible = False
        end
        object tvMasterIdCFDIEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDIEstatus'
          Visible = False
        end
        object tvMasterFechaVencimiento: TcxGridDBColumn
          DataBinding.FieldName = 'FechaVencimiento'
          Width = 80
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 200
        end
        object tvMasterSaldo: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
          Width = 100
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 80
        end
        object tvMasterUUID: TcxGridDBColumn
          DataBinding.FieldName = 'UUID'
          Width = 247
        end
        object tvMasterSaldoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoDocumento'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Kind = bkEllipsis
              Visible = False
            end>
          Width = 100
        end
        object tvMasterCFDIFormaPago: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIFormaPago'
          Visible = False
          Width = 160
        end
        object tvMasterCFDIMetodoPago: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIMetodoPago'
          Visible = False
          Width = 160
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 850
    ExplicitWidth = 850
  end
  inherited pnlDetail2: TPanel
    Width = 850
    ExplicitWidth = 850
  end
  inherited pnlDetail1: TPanel
    Width = 850
    ExplicitWidth = 850
  end
  inherited pnlClose: TPanel
    Width = 850
    ExplicitWidth = 850
    inherited btnClose: TButton
      Left = 765
      ExplicitLeft = 765
    end
    object btnCXCTermino: TcxButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'CxC termino'
      TabOrder = 1
    end
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
      ReportDocument.CreationDate = 43441.425158275480000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
