unit PersonasRolesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, PersonasDM,
  CuentasContablesPersonasRolesDM, cxCheckBox, cxDBEdit, PersonasRolesFacturacionDM,
  PersonasRolesCuentasBancariasDM, PersonasRolesDocumentosDM,
  PersonasRolesCXCConceptosDM, PersonasRolesEstatusDM;

type
  TfrmPersonaRolesEdit = class(T_frmEdit)
    tsCuentas: TcxTabSheet;
    pnlRol: TPanel;
    pnlProveedor: TPanel;
    pnlEmpleado: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    dbchkFacturar: TcxDBCheckBox;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label8: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    tsCuentasBancarias: TcxTabSheet;
    tsExpedienteDigital: TcxTabSheet;
    cxDBCheckBox1: TcxDBCheckBox;
    Label9: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    pnlOutsourcing: TPanel;
    Label10: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    tsCXCConceptos: TcxTabSheet;
    tsEstatus: TcxTabSheet;
    procedure actPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    dmPersonasRolesCuentasBancarias: TdmPersonasRolesCuentasBancarias;
    dmPersonasRolesDocumentos: TdmPersonasRolesDocumentos;
    dmPersonasRolesEstatus: TdmPersonasRolesEstatus;
//    dmCtasCtablesPersonasRoles: TdmCuentasContablesPersonasRoles;
//    dmPersonasRolesFacturacion: TdmPersonasRolesFacturacion;
//    dmPersonaRolesCXCConceptos : TdmPersonaRolesCXCConceptos;
    procedure SetRol(const Value: TPRol);
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

procedure TfrmPersonaRolesEdit.actPostExecute(Sender: TObject);
begin
  DataSet.FieldByName('IdRolEsquemaPago').Value := 0;
  inherited;
end;

procedure TfrmPersonaRolesEdit.FormCreate(Sender: TObject);
begin
  inherited;
  Descripcion:= 'Rol';
//  dmCtasCtablesPersonasRoles := TdmCuentasContablesPersonasRoles.Create(nil);
//  dmPersonasRolesFacturacion := TdmPersonasRolesFacturacion.Create(nil);
  dmPersonasRolesCuentasBancarias := TdmPersonasRolesCuentasBancarias.Create(nil);
  dmPersonasRolesDocumentos := TdmPersonasRolesDocumentos.Create(nil);
//  dmPersonaRolesCXCConceptos := TdmPersonaRolesCXCConceptos.Create(nil);
  dmPersonasRolesEstatus:=  TdmPersonasRolesEstatus.Create(nil);
end;

procedure TfrmPersonaRolesEdit.FormDestroy(Sender: TObject);
begin
  inherited;
//  FreeAndNil(dmCtasCtablesPersonasRoles);
//  FreeAndNil(dmPersonasRolesFacturacion);
  FreeAndNil(dmPersonasRolesCuentasBancarias);
  FreeAndNil(dmPersonasRolesDocumentos);
//  FreeAndNil(dmPersonaRolesCXCConceptos);
  FreeAndNil(dmPersonasRolesEstatus);
end;

procedure TfrmPersonaRolesEdit.FormShow(Sender: TObject);
begin
  inherited;
  if DataSource.DataSet.State in [dsInsert] then
    cxDBLookupComboBox1.EditValue := Rol;
  pnlEmpleado.Visible := False;
  pnlOutsourcing.Visible := False;
  pnlProveedor.Visible := False;
  tsCuentas.TabVisible := False;
  tsCuentasBancarias.TabVisible := False;
  tsCXCConceptos.TabVisible := False;
//  tsDocumentosFacturar.TabVisible := False;
  tsExpedienteDigital.TabVisible := False;
  case DataSource.DataSet.FieldByName('IdRolTipo').AsInteger of
    1: begin // Dueño de proceso
        tsCuentas.TabVisible := True;
        tsCuentasBancarias.TabVisible := True;
//        tsDocumentosFacturar.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    2: begin // Outsourcing
        pnlProveedor.Visible := True;
        pnlOutsourcing.Visible := True;
        tsCuentasBancarias.TabVisible := True;
//        tsDocumentosFacturar.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    3: begin // Cliente
        tsCuentas.TabVisible := True;
        tsCuentasBancarias.TabVisible := True;
        tsCXCConceptos.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    4: begin // Proveedor
        pnlProveedor.Visible := True;
        tsCuentas.TabVisible := True;
        tsCuentasBancarias.TabVisible := True;
//        tsDocumentosFacturar.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    5: begin // Empleado
        pnlEmpleado.Visible := True;
        tsCuentasBancarias.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    6: begin // Socio
        tsCuentas.TabVisible := True;
        tsCuentasBancarias.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    7: begin // Autoridad
        tsCuentas.TabVisible := True;
        tsCuentasBancarias.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
    8: begin // Comisionista
        tsCuentas.TabVisible := True;
        tsCuentasBancarias.TabVisible := True;
        tsExpedienteDigital.TabVisible := True;
       end;
  end;
  dmPersonasRolesCuentasBancarias.MasterSource := DataSource;
  dmPersonasRolesCuentasBancarias.MasterFields := 'IdPersonaRol';
  dmPersonasRolesCuentasBancarias.PersonaAct := DataSet.FieldByName('IdPersona').Value;
  dmPersonasRolesCuentasBancarias.ShowModule(tsCuentasBancarias,'');
  dmPersonasRolesDocumentos.MasterSource := DataSource;
  dmPersonasRolesDocumentos.MasterFields := 'IdPersonaRol';
  dmPersonasRolesDocumentos.ShowModule(tsExpedienteDigital,'');
//  if tsDocumentosFacturar.TabVisible = True then
//  begin
//    dmPersonasRolesFacturacion.MasterSource := DataSource;
//    dmPersonasRolesFacturacion.MasterFields := 'IdPersonaRol';
//    dmPersonasRolesFacturacion.ShowModule(tsDocumentosFacturar,'');
//  end;
//  dmCtasCtablesPersonasRoles.MasterSource := DataSource;
//  dmCtasCtablesPersonasRoles.MasterFields := 'IdPersonaRol';
//  dmCtasCtablesPersonasRoles.ShowModule(tsCuentas,'');
//  dmPersonaRolesCXCConceptos.MasterSource:= DataSource;
//  dmPersonaRolesCXCConceptos.ShowModule(tsCXCConceptos);
  dmPersonasRolesEstatus.MasterSource := DataSource;
  dmPersonasRolesEstatus.MasterFields := 'IdPersonaRol';
  dmPersonasRolesEstatus.ShowModule(tsEstatus,'');
end;

procedure TfrmPersonaRolesEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
end;

end.
