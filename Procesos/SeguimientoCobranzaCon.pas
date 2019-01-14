unit SeguimientoCobranzaCon;

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
  Vcl.ExtCtrls, cxPropertiesStore, cxCheckGroup, cxBarEditItem, cxContainer,
  cxGroupBox, Vcl.Menus, cxButtons;

type
  TFrmSeguimientoCobranza = class(T_frmGrid)
    dxBrBtnSeguimiento: TdxBarButton;
    DSIncidencias: TDataSource;
    DSConIncidencias: TDataSource;
    DSCXCPendientes: TDataSource;
    DSClientes: TDataSource;
    dsConsulta: TDataSource;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterinteres: TcxGridDBColumn;
    dxBrBtnPorProximoCont: TdxBarButton;
    cxchckGrpCalificacion: TcxBarEditItem;
    DSCalificaciones: TDataSource;
    dxBarButton8: TdxBarButton;
    Panel1: TPanel;
    cxChckGrpCalifica: TcxCheckGroup;
    cxBtnBuscar: TcxButton;
    DSCXCPendXincidencia: TDataSource;
    procedure dxBrBtnSeguimientoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxChckGrpCalificaPropertiesChange(Sender: TObject);
    procedure cxBtnBuscarClick(Sender: TObject);
    procedure dxBrBtnPorProximoContClick(Sender: TObject);
  private
    { Private declarations }
    fFiltroCalifica: String;
    FactConsultar: TBasicAction;
    procedure SetFActConsultar(const Value: TBasicAction);
  public
    { Public declarations }
    property FiltroCalifica:String read fFiltroCalifica write FFiltroCalifica; //Ene 4/19
    property actConsultar:  TBasicAction read FactConsultar write SetFActConsultar;
  end;

var
  FrmSeguimientoCobranza: TFrmSeguimientoCobranza;

implementation

{$R *.dfm}

uses SeguimientoRegistroEd, SeguimientoCobranzaDM, SeguimientoNvoEdit,
  SegIncidenciasProximasEdit;

procedure TFrmSeguimientoCobranza.cxBtnBuscarClick(Sender: TObject);
begin
  inherited;
  actConsultar.Execute;
end;

procedure TFrmSeguimientoCobranza.cxChckGrpCalificaPropertiesChange(
  Sender: TObject);
var Total,i, val:integer;
begin
  fFiltroCalifica:='';
  for i:=0 to  cxChckGrpCalifica.properties.Items.Count -1  do    //???
  begin
    if (cxChckGrpCalifica.States[0]=cbsChecked)  and (i >0) then
    begin
      cxChckGrpCalifica.States[i]:=cbsUnChecked;
      fFiltroCalifica:='';
    end
    else  // El cero no esta marcado
    begin
      if (cxChckGrpCalifica.States[i]=cbsChecked)  then         // ChckLstBxCondiciones.Checked[i]
      begin
        if (i=1) then
          fFiltroCalifica:=' CalificacionActual is NULL '
        else
        if fFiltroCalifica='' then
          fFiltroCalifica:=' CalificacionActual='''+cxChckGrpCalifica.properties.Items[i].Caption+''' '
        else
          fFiltroCalifica:=fFiltroCalifica +' or  CalificacionActual='''+cxChckGrpCalifica.properties.Items[i].Caption+''' ';

      end;
    end;
  end;
end;

procedure TFrmSeguimientoCobranza.dxBrBtnPorProximoContClick(Sender: TObject);
var
  FrmSegProximosContactos: TFrmSegProximosContactos;
begin
  inherited;
  FrmSegProximosContactos:=TFrmSegProximosContactos.create(self);
  FrmSegProximosContactos.DSIncidencias:=dsincidencias;
  FrmSegProximosContactos.DSCXCPendientes:=DSCXCPendXincidencia;
  FrmSegProximosContactos.DSCalificaciones.DataSet:=DSCalificaciones.DataSet;//Ene 8/19
  FrmSegProximosContactos.ShowModal;
  FrmSegProximosContactos.Free;
end;

procedure TFrmSeguimientoCobranza.dxBrBtnSeguimientoClick(Sender: TObject);
var
  FrmSeguimientoNvoEdt:TFrmSeguimientoNvoEdt;
begin
  inherited;
  FrmSeguimientoNvoEdt:=TFrmSeguimientoNvoEdt.create(self);
  FrmSeguimientoNvoEdt.dsConsulta:=dsConsulta;
  FrmSeguimientoNvoEdt.DSIncidencias:=dsincidencias;
  FrmSeguimientoNvoEdt.DSCXCPendientes:=DSCXCPendientes;
  FrmSeguimientoNvoEdt.DSClientes:=dsclientes;
  FrmSeguimientoNvoEdt.DSConIncidencias:=DSConIncidencias;
  FrmSeguimientoNvoEdt.DSCalificaciones.DataSet:=DSCalificaciones.DataSet;//Ene 8/19 //En teoria no lo van a requerir
  FrmSeguimientoNvoEdt.ShowModal;
  FrmSeguimientoNvoEdt.Free;
end;

procedure TFrmSeguimientoCobranza.FormCreate(Sender: TObject);
begin
  inherited;
 // gEditForm:= TfrmEdSeguimiento.Create(Self);
  dsConsulta.DataSet.open;
  dsincidencias.DataSet.open;
  DSCXCPendientes.DataSet.open;
  //dsclientes.DataSet.open;
  DSConIncidencias.DataSet.open;
//  ApplyBestFit:=False;
end;

procedure TFrmSeguimientoCobranza.FormShow(Sender: TObject);
var
  i :integer;
begin
  i:=0;
  while cxChckGrpCalifica.properties.items.count > 0 do
  begin
   cxChckGrpCalifica.properties.items.delete(0);
  end;
  cxChckGrpCalifica.properties.items.add;
  cxChckGrpCalifica.properties.items[i].Caption:='Todos';
  DSCalificaciones.dataset.close;
  DSCalificaciones.dataset.open;
  while  not DSCalificaciones.dataset.eof do
  begin
    i:=  i+1;
    cxChckGrpCalifica.properties.items.add;
    if DSCalificaciones.dataset.fieldbyname('calificacionactual').isnull then
        cxChckGrpCalifica.properties.items[i].Caption:='Vacios'
    else
      cxChckGrpCalifica.properties.items[i].Caption:=DSCalificaciones.dataset.fieldbyname('calificacionactual').asstring ;
    DSCalificaciones.dataset.next;
  end;
end;


procedure TFrmSeguimientoCobranza.SetFActConsultar(const Value: TBasicAction);
begin
  FactConsultar := Value;
end;

end.
