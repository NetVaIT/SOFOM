inherited frmUsuarios: TfrmUsuarios
  BorderStyle = bsToolWindow
  Caption = 'Usuarios'
  ClientHeight = 428
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 343
    Width = 645
  end
  inherited splDetail1: TSplitter
    Top = 255
    Width = 645
  end
  inherited splDetail2: TSplitter
    Top = 299
    Width = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 224
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 224
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuario'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
        end
        object tvMasterIdUsuarioEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdUsuarioEstatus'
          Visible = False
        end
        object tvMasterUsuarioEstatus: TcxGridDBColumn
          Caption = 'Estatus del Usuario'
          DataBinding.FieldName = 'UsuarioEstatus'
        end
        object tvMasterLogin: TcxGridDBColumn
          DataBinding.FieldName = 'Login'
        end
        object tvMasterPassword: TcxGridDBColumn
          DataBinding.FieldName = 'Password'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          Visible = False
        end
        object tvMasterLoginServidor: TcxGridDBColumn
          DataBinding.FieldName = 'LoginServidor'
        end
        object tvMasterPasswordServidor: TcxGridDBColumn
          DataBinding.FieldName = 'PasswordServidor'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 346
    Width = 645
  end
  inherited pnlDetail2: TPanel
    Top = 302
    Width = 645
  end
  inherited pnlDetail1: TPanel
    Top = 258
    Width = 645
  end
  inherited pnlClose: TPanel
    Top = 387
    Width = 645
    inherited btnClose: TButton
      Left = 560
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmUsuarios.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
end
