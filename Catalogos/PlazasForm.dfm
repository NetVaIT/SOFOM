inherited frmPlazas: TfrmPlazas
  Caption = 'frmPlazas'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPlaza: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlaza'
          Visible = False
        end
        object tvMasterIdPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuesto'
          Visible = False
        end
        object tvMasterIdPersonaEmpleado: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaEmpleado'
          Visible = False
        end
        object tvMasterIdPlazaTurno: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlazaTurno'
          Visible = False
        end
        object tvMasterIdUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdUbicacion'
          Visible = False
        end
        object tvMasterIdPlazaTemporalidadTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdPlazaTemporalidadTipo'
          Visible = False
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 200
        end
        object tvMasterSalarioBase: TcxGridDBColumn
          DataBinding.FieldName = 'SalarioBase'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object tvMasterEmpleado: TcxGridDBColumn
          DataBinding.FieldName = 'Empleado'
          Width = 150
        end
        object tvMasterTurnos: TcxGridDBColumn
          DataBinding.FieldName = 'Turnos'
          Width = 150
        end
        object tvMasterUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ubicacion'
          Width = 150
        end
        object tvMasterTemporalidad: TcxGridDBColumn
          DataBinding.FieldName = 'Temporalidad'
          Width = 150
        end
        object tvMasterFechaCreacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCreacion'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPlazas.adodsMaster
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
end
