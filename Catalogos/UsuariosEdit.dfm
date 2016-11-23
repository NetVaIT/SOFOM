inherited frmUsuariosEdit: TfrmUsuariosEdit
  Caption = 'Usuario'
  ClientHeight = 334
  ClientWidth = 480
  ExplicitWidth = 486
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 480
    Height = 293
    ExplicitWidth = 480
    ExplicitHeight = 293
    ClientRectBottom = 291
    ClientRectRight = 478
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 476
      ExplicitHeight = 263
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label2: TLabel
        Left = 24
        Top = 48
        Width = 92
        Height = 13
        Caption = 'Estatus del Usuario'
      end
      object Label3: TLabel
        Left = 24
        Top = 88
        Width = 25
        Height = 13
        Caption = 'Login'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 128
        Width = 46
        Height = 13
        Caption = 'Password'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 24
        Top = 168
        Width = 115
        Height = 13
        Caption = 'Login Servidor (Interva)'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel
        Left = 24
        Top = 208
        Width = 136
        Height = 13
        Caption = 'Password Servidor (Interva)'
        FocusControl = cxDBTextEdit4
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 104
        DataBinding.DataField = 'Login'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 144
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 24
        Top = 144
        DataBinding.DataField = 'Password'
        DataBinding.DataSource = DataSource
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 1
        Width = 144
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 184
        DataBinding.DataField = 'LoginServidor'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 144
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 24
        Top = 224
        DataBinding.DataField = 'PasswordServidor'
        DataBinding.DataSource = DataSource
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 3
        Width = 144
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 23
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 4
        Width = 434
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 23
        Top = 63
        DataBinding.DataField = 'UsuarioEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 5
        Width = 145
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 293
    Width = 480
    ExplicitTop = 293
    ExplicitWidth = 480
    inherited btnOk: TButton
      Left = 317
      ExplicitLeft = 317
    end
    inherited btnCancel: TButton
      Left = 398
      ExplicitLeft = 398
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
