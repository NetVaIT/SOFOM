unit ListasRestringidasForm;

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
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxTextEdit, cxBarEditItem, cxCurrencyEdit;

type
  TfrmListasRestringidas = class(T_frmGrid)
    tvMasterIdListaRestringida: TcxGridDBColumn;
    tvMasterIdOrganismo: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdEstatus: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    tvMasterOrganismo: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterNombre: TcxGridDBColumn;
    tvMasterAlias: TcxGridDBColumn;
    edtNombre: TcxBarEditItem;
    dxBarButton8: TdxBarButton;
    dxBrBtnLPB: TdxBarButton;
    PnlConsulta: TPanel;
    RdGrpOrganismo: TRadioGroup;
    tvMasterFechaNacimiento: TcxGridDBColumn;
    tvMasterRFC: TcxGridDBColumn;
    tvMasterNoIdentificacion: TcxGridDBColumn;
    tvMasterDependencia: TcxGridDBColumn;
    tvMasterPuesto: TcxGridDBColumn;
    tvMasterComentarios: TcxGridDBColumn;
    tvMasterNacionalidad: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FActOrg: TBasicAction;
    function GetNombre: String;
    procedure SetNombre(const Value: String);
    function GetIdOrganismo: Integer;
    procedure SetIdOrganismo(const Value: Integer);
    procedure SetActOrg(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property Nombre: String read GetNombre write SetNombre;
    property IdOrganismo: Integer read GetIdOrganismo write SetIdOrganismo;  //Jul 19/18
    Property ActOrg:TBasicAction  read FActOrg write SetActOrg;
  end;

implementation

{$R *.dfm}

uses ListasRestringidasDM, ListasRestringidasEdit;

procedure TfrmListasRestringidas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm := TfrmListasRestringidasEdit.Create(Self);
  ApplyBestFit:= False;
//  Select IdOrganismo, Descripcion from Organismos O where Exists( Select distinct (IdOrganismo) from ListasRestringidas LR where Lr.Idorganismo=O.IdOrganismo )



end;

procedure TfrmListasRestringidas.FormShow(Sender: TObject);
begin
  inherited;
   ActOrg.Execute; //verificar
end;

function TfrmListasRestringidas.GetIdOrganismo: Integer;
var
  i,j:Integer;
  texto:String;
begin
  result:=-1; //no debe hacer nada si regresa este valor
  if RdGrpOrganismo.ItemIndex >0 then
  begin
    Texto:= RdGrpOrganismo.Items[RdGrpOrganismo.ItemIndex];
    i:= pos('(',Texto) ;
    j:= Pos(')',Texto);
    if i >0 then
    begin
      Texto:=Copy (TExto , i+1,j-(i+1));
      result:=StrToint(TExto); //DEbe solo tener el numero del idorganismo
    end;
  end;

end;

function TfrmListasRestringidas.GetNombre: String;
begin
  Result := edtNombre.EditValue;
end;

procedure TfrmListasRestringidas.SetActOrg(const Value: TBasicAction);
begin
  FActOrg := Value;

end;

procedure TfrmListasRestringidas.SetIdOrganismo(const Value: Integer);
begin

end;

procedure TfrmListasRestringidas.SetNombre(const Value: String);
begin
  edtNombre.EditValue := Value;
end;

end.
