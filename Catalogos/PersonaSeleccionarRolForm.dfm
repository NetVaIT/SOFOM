inherited frmPersonaSeleccionarRol: TfrmPersonaSeleccionarRol
  Caption = 'Selecciona el rol deseado'
  ClientHeight = 246
  ClientWidth = 453
  ExplicitWidth = 459
  ExplicitHeight = 275
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 453
    Height = 205
    ExplicitWidth = 453
    ExplicitHeight = 205
    ClientRectBottom = 203
    ClientRectRight = 451
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 449
      ExplicitHeight = 175
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 26
        Height = 13
        Caption = 'Roles'
      end
      object Label2: TLabel
        Left = 24
        Top = 80
        Width = 107
        Height = 13
        Caption = 'Personas relacionadas'
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 24
        Top = 51
        DataBinding.DataField = 'IdRol'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdRol'
        Properties.ListColumns = <
          item
            FieldName = 'Rol'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsRoles
        TabOrder = 0
        Width = 400
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 24
        Top = 99
        DataBinding.DataField = 'IdPersonaRol'
        DataBinding.DataSource = dsParams
        Properties.KeyFieldNames = 'IdPersona'
        Properties.ListColumns = <
          item
            Width = 100
            FieldName = 'PersonaRelacionada'
          end
          item
            Width = 50
            FieldName = 'PorcentajeCalculo'
          end
          item
            Width = 50
            FieldName = 'Personas'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsPersonaRol
        TabOrder = 1
        Width = 400
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 205
    Width = 453
    ExplicitTop = 205
    ExplicitWidth = 453
    inherited btnOk: TButton
      Left = 290
      ExplicitLeft = 290
    end
    inherited btnCancel: TButton
      Left = 371
      ExplicitLeft = 371
    end
  end
  inherited dsParams: TDataSource
    DataSet = dxmParams
    Left = 64
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 96
    Top = 8
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
    DesignInfo = 589952
  end
  object adodsRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        IdRol, Descripcion AS Rol'#13#10'FROM            Roles'#13#10 +
      'WHERE        (IdRolTipo = 4)'#13#10
    Parameters = <>
    Left = 178
    Top = 4
    object adodsRolesIdRol: TAutoIncField
      FieldName = 'IdRol'
      ReadOnly = True
    end
    object adodsRolesRol: TStringField
      FieldName = 'Rol'
      Size = 50
    end
  end
  object dsRoles: TDataSource
    AutoEdit = False
    DataSet = adodsRoles
    Left = 234
    Top = 4
  end
  object adodsPersonaRol: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P2.IdPersona, P2.RazonSocial AS PersonaRelacionada, '#13#10'Per' +
      'sonasRoles.PorcentajeCalculo, COUNT(P1.IdPersona) AS Personas '#13#10 +
      'FROM PersonasRoles '#13#10'INNER JOIN Roles ON PersonasRoles.IdRol = R' +
      'oles.IdRol '#13#10'INNER JOIN Personas AS P1 ON PersonasRoles.IdPerson' +
      'a = P1.IdPersona '#13#10'INNER JOIN Personas AS P2 ON PersonasRoles.Id' +
      'PersonaRelacionada = P2.IdPersona '#13#10'WHERE P1.IdPersonaTitular IS' +
      ' NULL AND PersonasRoles.IdRolEstatus = 1 AND Roles.IdRolTipo = 4' +
      ' '#13#10'AND PersonasRoles.IdRol = :IdRol'#13#10'GROUP BY P2.IdPersona, P2.R' +
      'azonSocial, PersonasRoles.PorcentajeCalculo'#13#10
    DataSource = dsRoles
    MasterFields = 'IdRol'
    Parameters = <
      item
        Name = 'IdRol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 314
    Top = 4
    object adodsPersonaRolIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsPersonaRolPersonaRelacionada: TStringField
      FieldName = 'PersonaRelacionada'
      Size = 300
    end
    object adodsPersonaRolPorcentajeCalculo: TFMTBCDField
      FieldName = 'PorcentajeCalculo'
      Precision = 18
      Size = 6
    end
    object adodsPersonaRolPersonas: TIntegerField
      FieldName = 'Personas'
      ReadOnly = True
    end
  end
  object dsPersonaRol: TDataSource
    AutoEdit = False
    DataSet = adodsPersonaRol
    Left = 386
    Top = 4
  end
  object dxmParams: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 16
    Top = 13
    object dxmParamsIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object dxmParamsIdPersonaRol: TIntegerField
      FieldName = 'IdPersonaRol'
    end
  end
end
