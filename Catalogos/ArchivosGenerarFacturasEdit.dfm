inherited frmArchivosGenerarFacturasEdit: TfrmArchivosGenerarFacturasEdit
  Caption = 'frmArchivosGenerarFacturasEdit'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    inherited tsGeneral: TcxTabSheet
      object Label1: TLabel
        Left = 24
        Top = 40
        Width = 56
        Height = 13
        Caption = 'ArchivoCSD'
        FocusControl = cxDBBlobEdit1
      end
      object Label2: TLabel
        Left = 24
        Top = 80
        Width = 54
        Height = 13
        Caption = 'ArchivoKEY'
        FocusControl = cxDBBlobEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 120
        Width = 27
        Height = 13
        Caption = 'Clave'
        FocusControl = cxDBTextEdit1
      end
      object cxDBBlobEdit1: TcxDBBlobEdit
        Left = 24
        Top = 56
        DataBinding.DataField = 'ArchivoCSD'
        DataBinding.DataSource = DataSource
        Properties.BlobEditKind = bekBlob
        TabOrder = 0
        Width = 249
      end
      object cxDBBlobEdit2: TcxDBBlobEdit
        Left = 24
        Top = 96
        DataBinding.DataField = 'ArchivoKEY'
        DataBinding.DataSource = DataSource
        Properties.BlobEditKind = bekBlob
        TabOrder = 1
        Width = 249
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 136
        DataBinding.DataField = 'Clave'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 249
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmArchivosGenerarFacturas.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
