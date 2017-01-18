inherited frmContratosEdit: TfrmContratosEdit
  Caption = 'Contrato'
  ClientHeight = 441
  ClientWidth = 794
  OnDestroy = FormDestroy
  ExplicitWidth = 800
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 794
    Height = 400
    ExplicitWidth = 794
    ExplicitHeight = 400
    ClientRectBottom = 398
    ClientRectRight = 792
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 790
      ExplicitHeight = 370
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 61
        Height = 13
        Caption = 'Identificador'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel
        Left = 32
        Top = 104
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBLookupComboBox1
      end
      object Label4: TLabel
        Left = 32
        Top = 144
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = DBLookupComboBox2
      end
      object Label5: TLabel
        Left = 32
        Top = 184
        Width = 52
        Height = 13
        Caption = 'Autorizado'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label6: TLabel
        Left = 32
        Top = 304
        Width = 36
        Height = 13
        Caption = 'Estatus'
        FocusControl = DBLookupComboBox3
      end
      object Label7: TLabel
        Left = 32
        Top = 223
        Width = 60
        Height = 13
        Caption = 'Dia de Corte'
        FocusControl = cxDBSpinEdit1
      end
      object Label8: TLabel
        Left = 32
        Top = 263
        Width = 90
        Height = 13
        Caption = 'Dia de Vencimiento'
        FocusControl = cxDBSpinEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 40
        DataBinding.DataField = 'Identificador'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 32
        Top = 80
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 120
        Width = 304
        Height = 21
        DataField = 'Cliente'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 32
        Top = 160
        Width = 304
        Height = 21
        DataField = 'Tipo'
        DataSource = DataSource
        TabOrder = 3
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 32
        Top = 200
        DataBinding.DataField = 'MontoAutorizado'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 32
        Top = 320
        Width = 121
        Height = 21
        DataField = 'Estatus'
        DataSource = DataSource
        TabOrder = 7
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 32
        Top = 239
        DataBinding.DataField = 'DiaCorte'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBSpinEdit
        Left = 32
        Top = 279
        DataBinding.DataField = 'DiaVencimiento'
        DataBinding.DataSource = DataSource
        TabOrder = 6
        Width = 121
      end
    end
    object tsDocumentos: TcxTabSheet
      Caption = 'Documentos'
      ImageIndex = 1
    end
  end
  inherited pmlMain: TPanel
    Top = 400
    Width = 794
    ExplicitTop = 400
    ExplicitWidth = 794
    inherited btnCancel: TButton
      Left = 712
      ExplicitLeft = 712
    end
    inherited btnOk: TButton
      Left = 631
      ExplicitLeft = 631
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
