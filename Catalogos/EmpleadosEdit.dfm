inherited frmEmpleadosEdit: TfrmEmpleadosEdit
  Caption = 'Empleado'
  ClientHeight = 185
  ClientWidth = 314
  ExplicitHeight = 213
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 314
    Height = 144
    ClientRectBottom = 142
    ClientRectRight = 312
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 19
        Height = 13
        Caption = 'NSS'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 168
        Top = 8
        Width = 122
        Height = 13
        Caption = 'Fecha de Ingreso al IMSS'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 17
        Top = 56
        Width = 84
        Height = 13
        Caption = 'Fecha de Ingreso'
        FocusControl = cxDBDateEdit2
      end
      object Label4: TLabel
        Left = 169
        Top = 56
        Width = 68
        Height = 13
        Caption = 'Fecha de Baja'
        FocusControl = cxDBDateEdit3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 24
        DataBinding.DataField = 'NSS'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 168
        Top = 24
        DataBinding.DataField = 'FechaIngresoIMSS'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 17
        Top = 72
        DataBinding.DataField = 'FechaIngreso'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 169
        Top = 72
        DataBinding.DataField = 'FechaBaja'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 144
    Width = 314
    inherited btnOk: TButton
      Left = 151
    end
    inherited btnCancel: TButton
      Left = 232
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmEmpleados.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
