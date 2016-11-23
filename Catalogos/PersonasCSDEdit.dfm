inherited frmPersonasCSDEdit: TfrmPersonasCSDEdit
  Caption = 'Certificado de sello digital'
  ClientHeight = 334
  ClientWidth = 418
  ExplicitWidth = 424
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 418
    Height = 293
    ExplicitWidth = 418
    ExplicitHeight = 208
    ClientRectBottom = 291
    ClientRectRight = 416
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 414
      ExplicitHeight = 263
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 59
        Height = 13
        Caption = 'Archivo CER'
      end
      object Label2: TLabel
        Left = 16
        Top = 159
        Width = 27
        Height = 13
        Caption = 'Clave'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 16
        Top = 199
        Width = 57
        Height = 13
        Caption = 'Vencimiento'
      end
      object btnUpdateFileCER: TSpeedButton
        Left = 375
        Top = 30
        Width = 23
        Height = 22
      end
      object Label4: TLabel
        Left = 16
        Top = 77
        Width = 57
        Height = 13
        Caption = 'Archivo KEY'
      end
      object btnUpdateFileKEY: TSpeedButton
        Left = 375
        Top = 91
        Width = 23
        Height = 22
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 172
        DataBinding.DataField = 'Clave'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 382
      end
      object cxDBLabel1: TcxDBLabel
        Left = 14
        Top = 30
        DataBinding.DataField = 'ArchivoCER'
        DataBinding.DataSource = DataSource
        Height = 45
        Width = 355
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 16
        Top = 215
        DataBinding.DataField = 'Vencimiento'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 145
      end
      object cxDBLabel2: TcxDBLabel
        Left = 14
        Top = 91
        DataBinding.DataField = 'ArchivoKEY'
        DataBinding.DataSource = DataSource
        Height = 45
        Width = 355
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 293
    Width = 418
    ExplicitTop = 208
    ExplicitWidth = 418
    inherited btnCancel: TButton
      Left = 336
      ExplicitLeft = 336
    end
    inherited btnOk: TButton
      Left = 255
      ExplicitLeft = 255
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
