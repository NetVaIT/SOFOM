unit PuestosEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar,
  PuestosPerfilesDM, PlazasDM, PuestosCapacitacionesDM;

type
  TfrmPuestosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    tsPerfil: TcxTabSheet;
    tsBateriaCapacitacion: TcxTabSheet;
    tsPlazas: TcxTabSheet;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dmPuestosPerfiles: TdmPuestosPerfiles;
    dmPlazas: TdmPlazas;
    dmPuestosCapacitaciones: TdmPuestosCapacitaciones;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PuestosDM;

procedure TfrmPuestosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmPuestosPerfiles := TdmPuestosPerfiles.Create(nil);
  dmPlazas:= TdmPlazas.Create(nil);
  dmPuestosCapacitaciones:= TdmPuestosCapacitaciones.Create(nil);
end;

procedure TfrmPuestosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmPuestosPerfiles);
  FreeAndNil(dmPlazas);
  FreeAndNil(dmPuestosCapacitaciones);
end;

procedure TfrmPuestosEdit.FormShow(Sender: TObject);
begin
  inherited;
  // Perfiles
  dmPuestosPerfiles.MasterSource := DataSource;
  dmPuestosPerfiles.MasterFields:= 'IdPuesto';
  dmPuestosPerfiles.ShowModule(tsPerfil,'');
  // Plazas
  dmPlazas.MasterSource := DataSource;
  dmPlazas.MasterFields:= 'IdPuesto';
  dmPlazas.ShowModule(tsPlazas,'');
  // Capacitacion
  dmPuestosCapacitaciones.MasterSource:= DataSource;
  dmPuestosCapacitaciones.ShowModule(tsBateriaCapacitacion);
end;

end.
