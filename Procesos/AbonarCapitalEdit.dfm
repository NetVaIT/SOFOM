inherited frmAbonarCapitalEdit: TfrmAbonarCapitalEdit
  Caption = 'Abonar al capital'
  ClientHeight = 380
  ClientWidth = 694
  ExplicitWidth = 700
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 694
    Height = 339
    ExplicitWidth = 694
    ExplicitHeight = 339
    ClientRectBottom = 337
    ClientRectRight = 692
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 30
      ExplicitWidth = 690
      ExplicitHeight = 309
      object cxLabel3: TcxLabel
        Left = 453
        Top = 218
        Caption = 'Fecha'
        FocusControl = edtFecha
      end
      object edtFecha: TcxDateEdit
        Left = 529
        Top = 217
        Enabled = False
        TabOrder = 2
        Width = 121
      end
      object cxLabel4: TcxLabel
        Left = 453
        Top = 245
        Caption = 'Importe'
      end
      object edtImporte: TcxCalcEdit
        Left = 529
        Top = 244
        EditValue = 0.000000000000000000
        Properties.DisplayFormat = '$ ,0.00'
        TabOrder = 4
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 453
        Top = 272
        Caption = 'Tipo'
      end
      object cbxTipo: TcxComboBox
        Left = 529
        Top = 271
        Properties.Items.Strings = (
          'Reducir cuota'
          'Reducir plazo')
        TabOrder = 6
        Text = 'Reducir cuota'
        Width = 121
      end
      object pnlMaster: TPanel
        Left = 0
        Top = 0
        Width = 690
        Height = 209
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 690
          Height = 209
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          object tvMaster: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataSource
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            object tvMasterIdContrato: TcxGridDBColumn
              DataBinding.FieldName = 'IdContrato'
              Visible = False
            end
            object tvMasterIdPersona: TcxGridDBColumn
              DataBinding.FieldName = 'IdPersona'
              Visible = False
            end
            object tvMasterIdContratoTipo: TcxGridDBColumn
              DataBinding.FieldName = 'IdContratoTipo'
              Visible = False
            end
            object tvMasterIdAnexo: TcxGridDBColumn
              DataBinding.FieldName = 'IdAnexo'
              Visible = False
            end
            object tvMasterContrato: TcxGridDBColumn
              DataBinding.FieldName = 'Contrato'
            end
            object tvMasterAnexo: TcxGridDBColumn
              DataBinding.FieldName = 'Anexo'
              Width = 124
            end
            object tvMasterCliente: TcxGridDBColumn
              DataBinding.FieldName = 'Cliente'
              Width = 282
            end
            object tvMasterSaldoInsoluto: TcxGridDBColumn
              DataBinding.FieldName = 'SaldoInsoluto'
              Width = 113
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = tvMaster
          end
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 339
    Width = 694
    ExplicitTop = 343
    ExplicitWidth = 694
    DesignSize = (
      694
      41)
    inherited btnCancel: TButton
      Left = 612
      ExplicitLeft = 612
    end
    inherited btnOk: TButton
      Left = 531
      ExplicitLeft = 531
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
