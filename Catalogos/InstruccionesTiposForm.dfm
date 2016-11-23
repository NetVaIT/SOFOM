inherited frmInstruccionesTipos: TfrmInstruccionesTipos
  BorderStyle = bsToolWindow
  Caption = 'Tipo de instrucciones'
  ClientHeight = 450
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 365
    Width = 645
    ExplicitTop = 377
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 289
    Width = 645
    Align = alTop
    Visible = True
    ExplicitTop = 289
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 321
    Width = 645
    ExplicitTop = 333
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 258
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 258
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 258
      ExplicitWidth = 645
      ExplicitHeight = 258
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdInstruccionTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdInstruccionTipo'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterTipoNombre: TcxGridDBColumn
          DataBinding.FieldName = 'TipoNombre'
          PropertiesClassName = 'TcxRadioGroupProperties'
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'RFC'
              Value = '0'
            end
            item
              Caption = 'Nombre'
              Value = '1'
            end
            item
              Caption = 'Nombre (PMN)'
              Value = '2'
            end>
        end
        object tvMasterIncluirGrupo: TcxGridDBColumn
          DataBinding.FieldName = 'IncluirGrupo'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 91
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 368
    Width = 645
    ExplicitTop = 368
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 324
    Width = 645
    ExplicitTop = 324
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 292
    Width = 645
    Height = 29
    Align = alClient
    Visible = True
    ExplicitTop = 292
    ExplicitWidth = 645
    ExplicitHeight = 29
  end
  inherited pnlClose: TPanel
    Top = 409
    Width = 645
    ExplicitTop = 409
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
