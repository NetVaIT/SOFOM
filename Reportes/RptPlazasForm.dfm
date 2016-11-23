inherited frmRptPlazas: TfrmRptPlazas
  Caption = 'frmRptPlazas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = True
        object tvMasterOutsourcing: TcxGridDBColumn
          DataBinding.FieldName = 'Outsourcing'
          Visible = False
          GroupIndex = 0
        end
        object tvMasterGerencia: TcxGridDBColumn
          DataBinding.FieldName = 'Gerencia'
          Visible = False
          GroupIndex = 1
        end
        object tvMasterDepartamento: TcxGridDBColumn
          DataBinding.FieldName = 'Departamento'
          Visible = False
          GroupIndex = 2
        end
        object tvMasterPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
          Visible = False
          GroupIndex = 3
        end
        object tvMasterCategoriaPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'CategoriaPuesto'
        end
        object tvMasterPuestoSuperior: TcxGridDBColumn
          DataBinding.FieldName = 'PuestoSuperior'
        end
        object tvMasterCreacionPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'CreacionPuesto'
        end
        object tvMasterPlaza: TcxGridDBColumn
          DataBinding.FieldName = 'Plaza'
        end
        object tvMasterTurno: TcxGridDBColumn
          DataBinding.FieldName = 'Turno'
        end
        object tvMasterTemporalidad: TcxGridDBColumn
          DataBinding.FieldName = 'Temporalidad'
        end
        object tvMasterClasePlaza: TcxGridDBColumn
          DataBinding.FieldName = 'ClasePlaza'
        end
        object tvMasterUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ubicacion'
        end
        object tvMasterEmpleado: TcxGridDBColumn
          DataBinding.FieldName = 'Empleado'
        end
        object tvMasterSalarioBase: TcxGridDBColumn
          DataBinding.FieldName = 'SalarioBase'
        end
        object tvMasterCreacionPlaza: TcxGridDBColumn
          DataBinding.FieldName = 'CreacionPlaza'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmRptPlazas.adodsMaster
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
