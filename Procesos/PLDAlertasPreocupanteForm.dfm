inherited frmPLDAlertasPreocupante: TfrmPLDAlertasPreocupante
  Caption = 'Agregar alerta'
  ClientHeight = 464
  ExplicitWidth = 444
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 423
    ExplicitHeight = 423
    ClientRectBottom = 421
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 434
      ExplicitHeight = 395
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 434
        Height = 92
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 7
          Width = 29
          Height = 13
          Caption = 'Fecha'
          FocusControl = cxDBDateEdit1
        end
        object Label4: TLabel
          Left = 16
          Top = 52
          Width = 85
          Height = 13
          Caption = 'Tipo de operaci'#243'n'
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 23
          DataBinding.DataField = 'FechaDeteccion'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object cmbOperacionTipo: TcxDBLookupComboBox
          Left = 16
          Top = 65
          DataBinding.DataField = 'IdPLDOperacionTipo'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdPLDOperacionTipo'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          Properties.ListSource = dsOperacionTipo
          TabOrder = 1
          Width = 400
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 233
        Width = 434
        Height = 152
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Label11: TLabel
          Left = 16
          Top = 3
          Width = 54
          Height = 13
          Caption = 'Descripci'#243'n'
        end
        object cxDBMemo1: TcxDBMemo
          Left = 16
          Top = 19
          DataBinding.DataField = 'Mensaje'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Height = 120
          Width = 400
        end
      end
      object pnlContrado: TPanel
        Left = 0
        Top = 137
        Width = 434
        Height = 96
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label13: TLabel
          Left = 16
          Top = 8
          Width = 43
          Height = 13
          Caption = 'Contrato'
        end
        object Label2: TLabel
          Left = 16
          Top = 53
          Width = 79
          Height = 13
          Caption = 'Fecha operaci'#243'n'
          FocusControl = cxDBDateEdit2
        end
        object Label5: TLabel
          Left = 144
          Top = 53
          Width = 30
          Height = 13
          Caption = 'Monto'
          FocusControl = cxDBTextEdit2
        end
        object Label6: TLabel
          Left = 271
          Top = 53
          Width = 78
          Height = 13
          Caption = 'Metodo de pago'
        end
        object cmbAnexo: TcxDBLookupComboBox
          Left = 16
          Top = 24
          DataBinding.DataField = 'IdAnexo'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdAnexo'
          Properties.ListColumns = <
            item
              FieldName = 'Contrato'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsAnexos
          TabOrder = 0
          Width = 400
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 16
          Top = 69
          DataBinding.DataField = 'FechaOperacion'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 144
          Top = 69
          DataBinding.DataField = 'Monto'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cmbMetodosPago: TcxDBLookupComboBox
          Left = 271
          Top = 69
          DataBinding.DataField = 'IdMetodoPago'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdMetodoPago'
          Properties.ListColumns = <
            item
              FieldName = 'Descripcion'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsMetodosPago
          TabOrder = 3
          Width = 145
        end
      end
      object pnlPersona: TPanel
        Left = 0
        Top = 92
        Width = 434
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 16
          Top = 6
          Width = 131
          Height = 13
          Caption = 'Persona (cliente/empleado)'
        end
        object cmbCliente: TcxDBLookupComboBox
          Left = 16
          Top = 21
          DataBinding.DataField = 'IdPersona'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'IdPersona'
          Properties.ListColumns = <
            item
              FieldName = 'Persona'
            end>
          Properties.ListSource = dsClientes
          TabOrder = 0
          Width = 400
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 423
    ExplicitTop = 423
  end
  inherited DataSource: TDataSource
    DataSet = dmPLDAlertas.dxmdAlerta
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = dmPLDAlertas.adoqPersonas
    Left = 328
    Top = 8
  end
  object dsAnexos: TDataSource
    AutoEdit = False
    DataSet = dmPLDAlertas.adoqAnexos
    Left = 384
    Top = 8
  end
  object dsOperacionTipo: TDataSource
    AutoEdit = False
    DataSet = dmPLDAlertas.adoqOperacionTipo
    Left = 298
    Top = 66
  end
  object dsMetodosPago: TDataSource
    AutoEdit = False
    DataSet = dmPLDAlertas.adoqMetodosPago
    Left = 370
    Top = 58
  end
end
