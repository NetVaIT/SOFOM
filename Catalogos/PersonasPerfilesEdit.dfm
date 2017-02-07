inherited frmPersonasPerfilesEdit: TfrmPersonasPerfilesEdit
  Caption = 'Perfil'
  ClientHeight = 443
  ExplicitWidth = 444
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Height = 402
    ExplicitHeight = 402
    ClientRectBottom = 400
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 372
      object Label1: TLabel
        Left = 16
        Top = 88
        Width = 29
        Height = 13
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 128
        Width = 58
        Height = 13
        Caption = 'Clasificacion'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 168
        Width = 29
        Height = 13
        Caption = 'Cargo'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 16
        Top = 208
        Width = 50
        Height = 13
        Caption = 'Institucion'
        FocusControl = cxDBTextEdit3
      end
      object Label5: TLabel
        Left = 16
        Top = 248
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 95
        Height = 13
        Caption = 'Documento Adjunto'
      end
      object btnUpdateFile: TSpeedButton
        Left = 375
        Top = 43
        Width = 23
        Height = 22
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 104
        DataBinding.DataField = 'Fecha'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 144
        DataBinding.DataField = 'Clasificacion'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 353
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 16
        Top = 184
        DataBinding.DataField = 'Cargo'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 353
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 224
        DataBinding.DataField = 'Institucion'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 353
      end
      object cxDBMemo1: TcxDBMemo
        Left = 16
        Top = 267
        DataBinding.DataField = 'Observaciones'
        DataBinding.DataSource = DataSource
        TabOrder = 5
        Height = 89
        Width = 353
      end
      object cxDBLabel1: TcxDBLabel
        Left = 16
        Top = 43
        DataBinding.DataField = 'Documento'
        DataBinding.DataSource = DataSource
        Height = 49
        Width = 353
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 402
    ExplicitTop = 402
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
