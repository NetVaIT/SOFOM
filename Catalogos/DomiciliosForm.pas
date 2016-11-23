unit DomiciliosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxBar, Vcl.ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls;

type
  TfrmDomicilios = class(T_frmGrid)
    tvMasterIdDomicilio: TcxGridDBColumn;
    tvMasterCalle: TcxGridDBColumn;
    tvMasterNoExterior: TcxGridDBColumn;
    tvMasterNoInterior: TcxGridDBColumn;
    tvMasterColonia: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterIdPoblacion: TcxGridDBColumn;
    tvMasterIdMunicipio: TcxGridDBColumn;
    tvMasterIdEstado: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterEstado: TcxGridDBColumn;
    tvMasterMunicipio: TcxGridDBColumn;
    tvMasterPoblacion: TcxGridDBColumn;
    tvMasterCodigoPostal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDataSetPaises: TDataSet;
    FDataSetPoblaciones: TDataSet;
    FDataSetMunicipios: TDataSet;
    FDataSetEstados: TDataSet;
  public
    { Public declarations }
    property DataSetPaises: TDataSet read FDataSetPaises write FDataSetPaises;
    property DataSetEstados: TDataSet read FDataSetEstados write FDataSetEstados;
    property DataSetMunicipios: TDataSet read FDataSetMunicipios write FDataSetMunicipios;
    property DataSetPoblaciones: TDataSet read FDataSetPoblaciones write FDataSetPoblaciones;
  end;

implementation

{$R *.dfm}

uses DomiciliosDM, DomiciliosEdit;

procedure TfrmDomicilios.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmDomiciliosEdit.Create(Self);
end;

procedure TfrmDomicilios.FormShow(Sender: TObject);
begin
  inherited;
  TfrmDomiciliosEdit(gEditForm).DataSetPaises:= DataSetPaises;
  TfrmDomiciliosEdit(gEditForm).DataSetEstados:= DataSetEstados;
  TfrmDomiciliosEdit(gEditForm).DataSetMunicipios:= DataSetMunicipios;
  TfrmDomiciliosEdit(gEditForm).DataSetPoblaciones:= DataSetPoblaciones;
end;

end.
