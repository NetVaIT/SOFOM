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
  TelefonosDM, EmailsDM;

type
  TfrmPersonasContactoEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    tsDomicilio: TcxTabSheet;
    tsTelefono: TcxTabSheet;
    tsCorreo: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dmPersonasDomicilios : TdmPersonasDomicilios;
    dmTelefonos : TdmTelefonos;
    dmEmails : TdmEmails;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PersonasContactoDM;

procedure TfrmPersonasContactoEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmPersonasDomicilios := TdmPersonasDomicilios.Create(nil);
  dmTelefonos := TdmTelefonos.Create(nil);
  dmEmails := TdmEmails.Create(nil);
end;

procedure TfrmPersonasContactoEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmPersonasDomicilios);
  FreeAndNil(dmTelefonos);
  FreeAndNil(dmEmails);
end;

procedure TfrmPersonasContactoEdit.FormShow(Sender: TObject);
var
  IdContacto : Integer;
begin
  inherited;
  IdContacto := DataSource.DataSet.FieldByName('IdContacto').AsInteger;
  dmPersonasDomicilios.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmPersonasDomicilios.ShowModule(tsDomicilio,'');
  dmTelefonos.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmTelefonos.ShowModule(tsTelefono,'');
  dmEmails.adodsMaster.Parameters.ParamByName('IdPersona').Value := IdContacto;
  dmEmails.ShowModule(tsCorreo,'');
end;

end.
