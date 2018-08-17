inherited frmMRPOCampoAdiEdit: TfrmMRPOCampoAdiEdit
  Caption = 'Edici'#243'n Campos adicionales'
  ClientHeight = 278
  ClientWidth = 423
  ExplicitWidth = 429
  ExplicitHeight = 307
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 423
    Height = 237
    ClientRectBottom = 233
    ClientRectRight = 419
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 430
      ExplicitHeight = 297
      object Label1: TLabel
        Left = 35
        Top = 30
        Width = 77
        Height = 13
        Caption = 'Campo adicional'
        FocusControl = cxDBTxtEdtCampo
      end
      object Label2: TLabel
        Left = 35
        Top = 87
        Width = 90
        Height = 13
        Caption = 'Condicion en texto'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel
        Left = 35
        Top = 146
        Width = 88
        Height = 13
        Caption = 'Ponderaci'#243'n extra'
        FocusControl = cxDBCalcEdit1
      end
      object cxCmbBxListaCampos: TcxComboBox
        Left = 195
        Top = 46
        TabOrder = 0
        Text = 'Lista Campos'
        Visible = False
        OnClick = cxCmbBxListaCamposClick
        Width = 137
      end
      object cxDBTxtEdtCampo: TcxDBTextEdit
        Left = 35
        Top = 46
        DataBinding.DataField = 'CampoEspecialAltoRiesgo'
        DataBinding.DataSource = DataSource
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 35
        Top = 103
        DataBinding.DataField = 'CondicionEnTexto'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 297
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 35
        Top = 162
        DataBinding.DataField = 'PonderacionExtra'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxBtnCampos: TcxButton
        Left = 162
        Top = 46
        Width = 25
        Height = 22
        OptionsImage.Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E31314E3131766D6AFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFF4E31
          3199C64E99C64E4E3131FFFFFFCAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CA
          C9C8776C6C4E3131A2A0A04E313199C64ECCF6A899C64E4E3131735C5C473030
          4730304730304730304730304730304730304E313199C64E4E313199C64ECCF6
          A899C64E4E3131FFFFFF473030EED4BAEED4BAEED4BAEED4BAEED4BAEED4BAEC
          D2B95C4141CFF6AC9CC854CCF6A899C64E4E3131FFFFFFFFFFFF473030FFFFFF
          FFEFE0FFEFE0FFEFE0FFEFE0FFEFE0FDEDDE755E5ED8F8BCD7F8BBA8CE684E31
          31CAC9C8CAC9C8FFFFFF513B3BFFFFFFFFEFE0F9E1C9F9E1C9F9E1C9F9E1C995
          662F897676DEF9C7DDF9C5D8F8BCA1CA5C4E3131CAC9C8FFFFFF5F4B4BFFFFFF
          9D723E986B3595662E95662EFFEFE095662F948383978686917F7F836E6E6D55
          557E7373FFFFFFFFFFFF655151FFFFFFFFF1E4FFF1E3FFF0E1FFEFE0FFEFE095
          662F95662E95662EEED4BA473030CAC9C8FFFFFFFFFFFFFFFFFF655151FFFFFF
          FFF1E4FFF1E3FFF0E1FFEFE0FFEFE0FFEFE0F9E1C9F9E1C9EED4BA473030CAC9
          C8FFFFFFFFFFFFFFFFFF6A5858FFFFFFFFF2E6FAE6D2FAE4CFF9E3CDF9E3CD98
          6A3495662E95662ED9C2AA473030CAC9C8FFFFFFFFFFFFFFFFFF766565FFFFFF
          B4936BB39168AE895EAA8457FFF2E6A57D4EFFFFFF95662ED9C2AA473030CAC9
          C8FFFFFFFFFFFFFFFFFF817171FFFFFFFFF5EBFFF5EBFFF4EAFFF4E9FFF4E9AF
          8C62A57D4E9A6D37EED4BA473030CAC9C8FFFFFFFFFFFFFFFFFF8A7B7BFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD6BC473030CAC9
          C8FFFFFFFFFFFFFFFFFFAC9E9E9689899689899487878F81818C7E7E8C7E7E88
          79797F6F6F726161624F4F786262FFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 4
        OnClick = cxBtnCamposClick
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 237
    Width = 423
    inherited btnCancel: TButton
      Left = 341
    end
    inherited btnOk: TButton
      Left = 260
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmMatrizRiesgo.ADODsCamposAdicionales
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  object dsAuxiliar: TDataSource
    DataSet = dmMatrizRiesgo.ADOQryAuxiliar
    Left = 370
    Top = 90
  end
end
