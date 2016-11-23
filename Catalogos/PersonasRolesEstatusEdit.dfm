inherited frmPersonasRolesEstatusEdit: TfrmPersonasRolesEstatusEdit
  Caption = 'frmPersonasRolesEstatusEdit'
  ClientHeight = 205
  ExplicitWidth = 444
  ExplicitHeight = 234
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 164
    ClientRectBottom = 162
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 40
        Top = 32
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 40
        Top = 72
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 40
        Top = 48
        Width = 304
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 40
        Top = 88
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 164
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
