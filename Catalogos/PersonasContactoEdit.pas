unit PersonasContactoEdit;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxDBEdit, Vcl.StdCtrls, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.ExtCtrls, cxPC, PersonasDomiciliosDM,
  TelefonosDM, EmailsDM, PersonasDocumentosDM;

type
  TfrmPersonasContactoEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    tsDomicilio: TcxTabSheet;
    tsTelefono: TcxTabSheet;
    tsCorreo: TcxTabSheet;
    tsDocumentos: TcxTabSheet;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dmDomicilios: TdmPersonasDomicilios;
    dmTelefonos: TdmTelefonos;
    dmEmails: TdmEmails;
    dmDocumentos: TdmPersonasDocumentos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PersonasContactoDM;

procedure TfrmPersonasContactoEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmDomicilios := TdmPersonasDomicilios.Create(nil);
  dmTelefonos := TdmTelefonos.Create(nil);
  dmEmails := TdmEmails.Create(nil);
  dmDocumentos:= TdmPersonasDocumentos.Create(nil);
end;

procedure TfrmPersonasContactoEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmDomicilios);
  FreeAndNil(dmTelefonos);
  FreeAndNil(dmEmails);
  FreeAndNil(dmDocumentos);
end;

procedure TfrmPersonasContactoEdit.FormShow(Sender: TObject);
var
  IdContacto : Integer;
begin
  inherited;
  IdContacto := DataSource.DataSet.FieldByName('IdContacto').AsInteger;
  dmDomicilios.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmDomicilios.ShowModule(tsDomicilio,'');
  dmTelefonos.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmTelefonos.ShowModule(tsTelefono,'');
  dmEmails.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmEmails.ShowModule(tsCorreo,'');
  dmDocumentos.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmDocumentos.ShowModule(tsDocumentos,'');
//  dmDocumentos.MasterSource := DataSource;
//  dmDocumentos.MasterFields := 'IdContacto';
//  dmDocumentos.MasterIndexFieldnames := 'IdPersona';
//  dmDocumentos.ShowModule(tsDocumentos,'');
end;

end.
