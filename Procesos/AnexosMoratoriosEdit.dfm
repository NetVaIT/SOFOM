inherited frmAnexosMoratoriosEdit: TfrmAnexosMoratoriosEdit
  Caption = 'Moratorio'
  ClientWidth = 220
  ExplicitWidth = 226
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 220
    ExplicitWidth = 220
    ClientRectRight = 218
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 216
      ExplicitHeight = 295
      object Label1: TLabel
        Left = 40
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 40
        Top = 64
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 40
        Top = 104
        Width = 23
        Height = 13
        Caption = 'Base'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 40
        Top = 144
        Width = 38
        Height = 13
        Caption = 'Importe'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 40
        Top = 184
        Width = 51
        Height = 13
        Caption = 'Descuento'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 40
        Top = 224
        Width = 45
        Height = 13
        Caption = 'Impuesto'
        FocusControl = cxDBTextEdit4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 40
        Top = 40
        Width = 121
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 0
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 40
        Top = 80
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 40
        Top = 120
        DataBinding.DataField = 'ImporteBase'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 40
        Top = 160
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 40
        Top = 200
        DataBinding.DataField = 'Descuento'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 40
        Top = 243
        DataBinding.DataField = 'Impuesto'
        DataBinding.DataSource = DataSource
        Enabled = False
        TabOrder = 5
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Width = 220
    ExplicitWidth = 220
    inherited btnCancel: TButton
      Left = 138
      ExplicitLeft = 138
    end
    inherited btnOk: TButton
      Left = 57
      ExplicitLeft = 57
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
