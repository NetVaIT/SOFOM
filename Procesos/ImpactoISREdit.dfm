inherited frmImpactoISREdit: TfrmImpactoISREdit
  Caption = 'Impacto ISR'
  ClientHeight = 368
  ClientWidth = 587
  ExplicitWidth = 593
  ExplicitHeight = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 587
    Height = 327
    ClientRectBottom = 325
    ClientRectRight = 585
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 27
      ExplicitWidth = 690
      ExplicitHeight = 307
      object pnlMaster: TPanel
        Left = 0
        Top = 0
        Width = 583
        Height = 209
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 8
        ExplicitWidth = 434
        object cxGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 583
          Height = 209
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          ExplicitWidth = 434
          object tvMaster: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DataSource
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = tvMasterMeses
              end
              item
                Kind = skSum
                Column = tvMasterCapitalTotal
              end
              item
                Kind = skSum
                Column = tvMasterFiscal
              end
              item
                Kind = skSum
                Column = tvMasterFinanciera
              end
              item
                Kind = skSum
                Column = tvMasterDiferencia
              end
              item
                Kind = skSum
                Column = tvMasterISR
              end
              item
                Kind = skSum
                Column = tvMasterKe
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            object tvMasterRecId: TcxGridDBColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
            end
            object tvMasterMeses: TcxGridDBColumn
              DataBinding.FieldName = 'Meses'
            end
            object tvMasterCapitalTotal: TcxGridDBColumn
              DataBinding.FieldName = 'CapitalTotal'
              Visible = False
              Width = 100
            end
            object tvMasterFiscal: TcxGridDBColumn
              DataBinding.FieldName = 'Fiscal'
              Width = 100
            end
            object tvMasterFinanciera: TcxGridDBColumn
              DataBinding.FieldName = 'Financiera'
              Width = 100
            end
            object tvMasterDiferencia: TcxGridDBColumn
              DataBinding.FieldName = 'Diferencia'
              Width = 100
            end
            object tvMasterISR: TcxGridDBColumn
              DataBinding.FieldName = 'ISR'
              Width = 100
            end
            object tvMasterKe: TcxGridDBColumn
              DataBinding.FieldName = 'Ke'
              Width = 100
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = tvMaster
          end
        end
      end
      object cxLabel1: TcxLabel
        Left = 351
        Top = 216
        Caption = 'Primer vencimiento'
        FocusControl = edtFecha
      end
      object edtFecha: TcxDateEdit
        Left = 451
        Top = 215
        Enabled = False
        TabOrder = 2
        Width = 121
      end
      object edtDepreciacion: TcxCurrencyEdit
        Left = 451
        Top = 242
        Enabled = False
        Properties.DisplayFormat = '0.00 %;-0.00 %'
        Properties.EditFormat = '0.00;-0.00'
        TabOrder = 4
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 380
        Top = 243
        Caption = 'Depreciacion'
        FocusControl = edtDepreciacion
      end
      object cxLabel3: TcxLabel
        Left = 382
        Top = 270
        Caption = 'Impacto ISR'
        FocusControl = edtImpactoISR
      end
      object edtImpactoISR: TcxCurrencyEdit
        Left = 451
        Top = 269
        Enabled = False
        Properties.ReadOnly = False
        TabOrder = 6
        Width = 121
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 327
    Width = 587
    inherited btnCancel: TButton
      Left = 505
    end
    inherited btnOk: TButton
      Left = 424
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmImpactoISR.dxmdDepreciacion
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
