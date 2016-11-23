inherited frmPlazaTurno: TfrmPlazaTurno
  Caption = 'Turno de Plaza'
  ClientHeight = 263
  ClientWidth = 371
  ExplicitWidth = 377
  ExplicitHeight = 291
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 371
    Height = 222
    ClientRectBottom = 220
    ClientRectRight = 369
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 64
        Height = 13
        Caption = 'Hora Entrada'
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 54
        Height = 13
        Caption = 'Hora Salida'
      end
      object Label5: TLabel
        Left = 227
        Top = 96
        Width = 100
        Height = 13
        Caption = 'Hora Alimentos Inicio'
      end
      object Label6: TLabel
        Left = 227
        Top = 136
        Width = 89
        Height = 13
        Caption = 'Hora Alimentos Fin'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 73
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 332
      end
      object cxDBTimeEdit1: TcxDBTimeEdit
        Left = 16
        Top = 109
        DataBinding.DataField = 'HoraEntrada'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 121
      end
      object cxDBTimeEdit2: TcxDBTimeEdit
        Left = 16
        Top = 149
        DataBinding.DataField = 'HoraSalida'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTimeEdit3: TcxDBTimeEdit
        Left = 227
        Top = 109
        DataBinding.DataField = 'HoraAlimentosInicio'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTimeEdit4: TcxDBTimeEdit
        Left = 227
        Top = 149
        DataBinding.DataField = 'HoraAlimentosFin'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 222
    Width = 371
    inherited btnOk: TButton
      Left = 208
    end
    inherited btnCancel: TButton
      Left = 289
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
