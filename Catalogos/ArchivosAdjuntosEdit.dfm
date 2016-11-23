inherited frmArchivosAdjuntosEdit: TfrmArchivosAdjuntosEdit
  Caption = 'frmArchivosAdjuntosEdit'
  ClientHeight = 245
  ClientWidth = 439
  ExplicitWidth = 445
  ExplicitHeight = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 439
    Height = 204
    ExplicitHeight = 220
    ClientRectBottom = 202
    ClientRectRight = 437
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 434
      ExplicitHeight = 190
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Descripcion'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 36
        Height = 13
        Caption = 'Archivo'
        FocusControl = cxDBBlobEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 32
        DataBinding.DataField = 'Descripcion'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 401
      end
      object cxDBBlobEdit1: TcxDBBlobEdit
        Left = 16
        Top = 72
        DataBinding.DataField = 'Archivo'
        DataBinding.DataSource = DataSource
        Properties.BlobEditKind = bekBlob
        TabOrder = 1
        Width = 401
      end
      object Button1: TButton
        Left = 16
        Top = 121
        Width = 75
        Height = 25
        Caption = 'Cargar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 104
        Top = 121
        Width = 75
        Height = 25
        Caption = 'Bajar'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 204
    Width = 439
    ExplicitTop = 220
    inherited btnOk: TButton
      Left = 276
    end
    inherited btnCancel: TButton
      Left = 357
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmArchivosAdjuntos.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object OpenDialog1: TOpenDialog
    Left = 322
    Top = 132
  end
  object SaveDialog1: TSaveDialog
    Left = 378
    Top = 132
  end
end
