inherited frmPersonasRoles: TfrmPersonasRoles
  BorderStyle = bsToolWindow
  Caption = 'Roles'
  ClientHeight = 433
  ClientWidth = 645
  Visible = True
  ExplicitWidth = 651
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 348
    Width = 645
    ExplicitTop = 389
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 260
    Width = 645
    ExplicitTop = 301
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 304
    Width = 645
    ExplicitTop = 345
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 229
    ExplicitWidth = 645
    ExplicitHeight = 229
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 229
      ExplicitWidth = 645
      ExplicitHeight = 229
      inherited tvMaster: TcxGridDBTableView
        Styles.OnGetContentStyle = tvMasterStylesGetContentStyle
        object tvMasterIdPersonaRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRol'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaRelacionada'
          Visible = False
        end
        object tvMasterIdRol: TcxGridDBColumn
          DataBinding.FieldName = 'IdRol'
          Visible = False
        end
        object tvMasterIdRolEsquemaPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolEsquemaPago'
          Visible = False
        end
        object tvMasterIdRolEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolEstatus'
          Visible = False
        end
        object tvMasterIdRolClase: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolClase'
          Visible = False
        end
        object tvMasterIdRolTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdRolTipo'
          Visible = False
        end
        object tvMasterRol: TcxGridDBColumn
          DataBinding.FieldName = 'Rol'
        end
        object tvMasterPersonaRelacionada: TcxGridDBColumn
          DataBinding.FieldName = 'PersonaRelacionada'
          Width = 304
        end
        object tvMasterRolEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'RolEstatus'
          Width = 104
        end
        object tvMasterRolClase: TcxGridDBColumn
          DataBinding.FieldName = 'RolClase'
          Width = 104
        end
        object tvMasterFechaIngreso: TcxGridDBColumn
          DataBinding.FieldName = 'FechaIngreso'
        end
        object tvMasterFechaBaja: TcxGridDBColumn
          DataBinding.FieldName = 'FechaBaja'
        end
        object tvMasterFacturar: TcxGridDBColumn
          DataBinding.FieldName = 'Facturar'
          Visible = False
        end
        object tvMasterCalcular: TcxGridDBColumn
          DataBinding.FieldName = 'Calcular'
          Visible = False
        end
        object tvMasterPorcentajeCalculo: TcxGridDBColumn
          DataBinding.FieldName = 'PorcentajeCalculo'
          Visible = False
        end
        object tvMasterRegistroPatronalIMSS: TcxGridDBColumn
          DataBinding.FieldName = 'RegistroPatronalIMSS'
          Visible = False
        end
        object tvMasterNSS: TcxGridDBColumn
          DataBinding.FieldName = 'NSS'
          Visible = False
        end
        object tvMasterFechaAltaIMSS: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAltaIMSS'
          Visible = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 351
    Width = 645
    ExplicitTop = 351
    ExplicitWidth = 645
  end
  inherited pnlDetail2: TPanel
    Top = 307
    Width = 645
    ExplicitTop = 307
    ExplicitWidth = 645
  end
  inherited pnlDetail1: TPanel
    Top = 263
    Width = 645
    ExplicitTop = 263
    ExplicitWidth = 645
  end
  inherited pnlClose: TPanel
    Top = 392
    Width = 645
    ExplicitTop = 392
    ExplicitWidth = 645
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
    object cxsRol: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
