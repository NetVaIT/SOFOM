inherited frmPLDAlertasPreocupante: TfrmPLDAlertasPreocupante
  Caption = 'Agregar alerta preocupante'
  ClientHeight = 397
  ExplicitWidth = 444
  ExplicitHeight = 426
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 356
    ClientRectBottom = 354
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 434
      ExplicitHeight = 297
      object Label11: TLabel
        Left = 18
        Top = 51
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label1: TLabel
        Left = 18
        Top = 8
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object cxDBMemo1: TcxDBMemo
        Left = 18
        Top = 67
        DataBinding.DataField = 'Mensaje'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Height = 249
        Width = 400
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 18
        Top = 24
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 0
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 356
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
