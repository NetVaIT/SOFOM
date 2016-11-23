inherited frmPlazasTurnos: TfrmPlazasTurnos
  BorderStyle = bsToolWindow
  Caption = 'Turnos'
  ClientHeight = 433
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 348
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
    ExplicitTop = 260
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
    ExplicitTop = 304
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPlazaTurno: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlazaTurno'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterHoraEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'HoraEntrada'
          PropertiesClassName = 'TcxTimeEditProperties'
        end
        object tvMasterHoraSalida: TcxGridDBColumn
          DataBinding.FieldName = 'HoraSalida'
          PropertiesClassName = 'TcxTimeEditProperties'
        end
        object tvMasterHoraAlimentosInicio: TcxGridDBColumn
          DataBinding.FieldName = 'HoraAlimentosInicio'
          PropertiesClassName = 'TcxTimeEditProperties'
        end
        object tvMasterHoraAlimentosFin: TcxGridDBColumn
          DataBinding.FieldName = 'HoraAlimentosFin'
          PropertiesClassName = 'TcxTimeEditProperties'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
    ExplicitTop = 307
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
    ExplicitTop = 263
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
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
