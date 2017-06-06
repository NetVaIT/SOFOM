inherited frmBuroCreditoFiltro: TfrmBuroCreditoFiltro
  Caption = 'Buro de cr'#233'dito'
  ClientHeight = 169
  ClientWidth = 462
  ExplicitWidth = 468
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 462
    Height = 128
    ExplicitWidth = 462
    ExplicitHeight = 128
    ClientRectBottom = 126
    ClientRectRight = 460
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 458
      ExplicitHeight = 98
      object cxLabel1: TcxLabel
        Left = 20
        Top = 16
        Caption = 'Periodo mes'
        FocusControl = edtMonth
      end
      object edtMonth: TcxSpinEdit
        Left = 88
        Top = 12
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 1
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 20
        Top = 40
        Caption = 'Periodo a'#241'o'
        FocusControl = edtYear
      end
      object edtYear: TcxSpinEdit
        Left = 87
        Top = 39
        TabOrder = 3
        Value = 2017
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 20
        Top = 66
        Caption = 'Archivo'
        FocusControl = edtFile
      end
      object edtFile: TcxButtonEdit
        Left = 87
        Top = 66
        Properties.Buttons = <
          item
            Action = actSaveFile
            Default = True
            Kind = bkEllipsis
          end>
        TabOrder = 5
        Width = 350
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 128
    Width = 462
    ExplicitTop = 128
    ExplicitWidth = 462
    inherited btnCancel: TButton
      Left = 380
      ExplicitLeft = 380
    end
    inherited btnOk: TButton
      Left = 299
      ExplicitLeft = 299
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmBuroCredito.adodsMaster
  end
  inherited ActionList: TActionList
    object actSaveFile: TAction
      Hint = 'Grabar archivo'
      OnExecute = actSaveFileExecute
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object SaveDialog: TSaveDialog
    Left = 312
    Top = 65533
  end
end
