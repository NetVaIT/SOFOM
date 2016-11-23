inherited frmPersonasRolesDocumentosEdit: TfrmPersonasRolesDocumentosEdit
  Caption = 'Documento'
  ClientHeight = 196
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 224
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 416
    Height = 155
    ExplicitWidth = 416
    ExplicitHeight = 155
    ClientRectBottom = 153
    ClientRectRight = 414
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 412
      ExplicitHeight = 125
      object Label1: TLabel
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
    Top = 155
    Width = 416
    ExplicitTop = 155
    ExplicitWidth = 416
    inherited btnOk: TButton
      Left = 253
      ExplicitLeft = 253
    end
    inherited btnCancel: TButton
      Left = 334
      ExplicitLeft = 334
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonasRolesDocumentos.adodsMaster
    Left = 144
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
