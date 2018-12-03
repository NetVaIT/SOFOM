unit SeguimientoRegistroEd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.CheckLst,  Vcl.DBCGrids, Vcl.Mask,  Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Data.DB,Data.Win.ADODB, Vcl.Menus, Math, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils;

type
  TArrDinamico= array of integer;
  TFrmSeguimientoRegistro = class(TForm)
    Panel1: TPanel;
    PnlNav: TPanel;
    DBLkupCmbBxClientes: TDBLookupComboBox;
    Label2: TLabel;
    SpdBtnLimpiar: TSpeedButton;
    EdtTextoCliente: TEdit;
    SpdBtnConsultarx: TSpeedButton;
    PnlGrids: TPanel;
    PnlSoloIncidencias: TPanel;
    DBGrid1: TDBGrid;
    PnlFechas: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    SpdBtnRegreso: TSpeedButton;
    SpdBtnFiltroDias: TSpeedButton;
    GridDatos: TDBGrid;
    Pnlinferior: TPanel;
    DBCtrlGrdDatos: TDBCtrlGrid;
    Label9: TLabel;
    DBText7: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText9: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    Label14: TLabel;
    DBText12: TDBText;
    DBTxtAcuerdo: TDBText;
    Label15: TLabel;
    DBTxtEstado: TDBText;
    PNLRegInci: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBText14: TDBText;
    Label18: TLabel;
    DBText15: TDBText;
    Label19: TLabel;
    DBText16: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBText17: TDBText;
    DBMemo1: TDBMemo;
    DBRdGrpEstado: TDBRadioGroup;
    DBEdit1: TDBEdit;
    LstBxFolios: TListBox;
    LSTBxIDDocs: TListBox;
    ChckLstBxCondiciones: TCheckListBox;
    DBChckBxPtomPago: TDBCheckBox;
    PnlNavIncid: TPanel;
    SpdBtnMostrartodo: TSpeedButton;
    DBNavIncidencia: TDBNavigator;
    Splitter1: TSplitter;
    dsConsulta: TDataSource;
    DSIncidencias: TDataSource;
    DBGrdFactPend: TDBGrid;
    DSCXCPendientes: TDataSource;
    DSClientes: TDataSource;
    SpdBtncontactoHoy: TSpeedButton;
    SpdBtnContacto: TSpeedButton;
    DSConIncidencias: TDataSource;
    PpUpMnFolios: TPopupMenu;
    EliminarFolio1: TMenuItem;
    PpUpMnCopia: TPopupMenu;
    CrearCopia1: TMenuItem;
    AgregaIncidencia1: TMenuItem;
    C5: TcxDBDateEdit;
    DtTmDesde: TcxDateEdit;
    DtTmHasta: TcxDateEdit;
    PnlSuc: TPanel;
    DBCtrlGrdContacto: TDBCtrlGrid;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    ImgFuncE: TImage;
    ImgFunG: TImage;
    ImgCancFun: TImage;
    DBEdtTelCont1: TDBEdit;
    DBEdtContacto: TDBEdit;
    DBCtrlGrid2: TDBCtrlGrid;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    ImgEditar: TImage;
    ImgAcepta: TImage;
    ImgCanSuc: TImage;
    DBEdTel1: TDBEdit;
    DSFuncXCli: TDataSource;
    DSDatosSuc: TDataSource;
    procedure SpdBtnConsultarxClick(Sender: TObject);
    procedure SpdBtnLimpiarClick(Sender: TObject);
    procedure SpdBtncontactoHoyClick(Sender: TObject);
    procedure SpdBtnRegresoClick(Sender: TObject);
    procedure SpdBtnMostrartodoClick(Sender: TObject);
    procedure EliminarFolio1Click(Sender: TObject);
    procedure DBGrdFactPendDblClick(Sender: TObject);
    procedure SpdBtnFiltroDiasClick(Sender: TObject);
    procedure DSIncidenciasStateChange(Sender: TObject);
    procedure ChckLstBxCondicionesClick(Sender: TObject);
    procedure DSIncidenciasDataChange(Sender: TObject; Field: TField);
    procedure DBCtrlGrdDatosPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormCreate(Sender: TObject);
    procedure CrearCopia1Click(Sender: TObject);
    procedure AgregaIncidencia1Click(Sender: TObject);
    procedure DSCXCPendientesDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnContactoClick(Sender: TObject);
    procedure ImgAceptaClick(Sender: TObject);
    procedure ImgCanSucClick(Sender: TObject);
    procedure ImgFunGClick(Sender: TObject);
    procedure ImgCancFunClick(Sender: TObject);
    procedure DBCtrlGrdContactoPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure ImgFuncEClick(Sender: TObject);
  private
    { Private declarations }
    ArrOpciones :TarrDinamico;//Array of integer;
    function PoneFolios(ListaID: TlistBox):String;
    procedure CargaFolios(ListaF, ListaID: TlistBox);
    procedure poneAutorizacion(Permisos: integer;
      var ChckLstActual: TCheckListBox);
     procedure convierteBinADec(Numero: integer; var B: TArrDinamico);
  public
    { Public declarations }

  end;

var
  FrmSeguimientoRegistro: TFrmSeguimientoRegistro;

implementation

{$R *.dfm}

uses SeguimientoCobranzaDM, _ConectionDmod;

procedure TFrmSeguimientoRegistro.ChckLstBxCondicionesClick(Sender: TObject);
var Total,i, val:integer;
begin
  inherited;
  if DSIncidencias.State in [dsinsert,dsedit] then
  begin

    Total:=0;
    for i:=0 to  ChckLstBxCondiciones.Count -1  do
    begin
      if ChckLstBxCondiciones.Checked[i] then
      begin
         Val:=Round(Power(2,i));
        Total:=Total + val;
      end;
    end;
    //Debe estar en edicion
    DSIncidencias.DataSet.FieldByName('Condiciones').ASinteger:=Total;
  end;
end;

procedure TFrmSeguimientoRegistro.convierteBinADec(Numero: integer;
  var B: TArrDinamico);
var                                    //  Copiado desde Cobranza
  aux,i:integer;
  cadena:String;
begin

   i:=0;
   while numero >1 do
   begin
     aux:=numero mod 2;
     numero:= numero div 2;
     SetLength(B,i+1);
     B[i]:=aux;
     inc(i);
   end;
   SetLength(B,i+1);
   B[i]:=numero;

   for i:= high(B) downto 0 do
   begin
     cadena:=Cadena + intTostr(B[i]);
   end;
 //  showmessage(Cadena);


end;

procedure TFrmSeguimientoRegistro.CrearCopia1Click(Sender: TObject);
begin
  //Pendiente
end;

procedure TFrmSeguimientoRegistro.DBCtrlGrdContactoPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
(*  if DBCtrlGrdContacto.PanelIndex=index then

    ImgFuncE.Visible:= (DSFuncXCli.dataset.fieldbyName('Contacto').asString<>'') or
                     (DSFuncXCli.dataset.fieldbyName('telContacto').asString<>'') ;*)

end;

procedure TFrmSeguimientoRegistro.DBCtrlGrdDatosPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if dsIncidencias.DataSet.FieldByName('EstadoIncidencia').asString='Abierta' then
     DBTxtEstado.Font.Color:=clGreen
  else if dsIncidencias.DataSet.FieldByName('EstadoIncidencia').asString='Cerrada' then
     DBTxtEstado.font.Color:= clRed
  else if dsIncidencias.DataSet.FieldByName('EstadoIncidencia').asString='Cancelada' then  //No debe existir feb 15/17
     DBTxtEstado.Color:=clRed;
end;

procedure TFrmSeguimientoRegistro.DBGrdFactPendDblClick(Sender: TObject);
begin
  //Luego habilitar
  if dsincidencias.dataset.State in [dsinsert, dsEdit] then
  begin
    if LSTBxIDDocs.Items.IndexOf(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString)=-1 then
    begin
      LSTBxIDDocs.Items.Add(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString);
      LSTBxFolios.Items.Add(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString);// mientras Feb 15/17 DSCXCPendientes.DataSet.FieldByName('Serie').AsString+' '+DSCXCPendientes.DataSet.FieldByName('Folio').AsString );
    end;

    DsIncidencias.Dataset.FieldByName('FoliosAsoc').AsString:=PoneFolios(LSTBxIDDocs);
  end;
end;

procedure TFrmSeguimientoRegistro.DSCXCPendientesDataChange(Sender: TObject;
  Field: TField);
begin
  DBGrdFactPend.Hint:='Capital Cobrado: '+DSCXCPendientes.DataSet.FieldByName('CapitalCobrado').asString+' Saldo Insoluto: '+DSCXCPendientes.DataSet.FieldByName('SaldoInsoluto').asString;

end;

procedure TFrmSeguimientoRegistro.DSIncidenciasDataChange(Sender: TObject;
  Field: TField);
begin
  CargaFolios(LstBxFolios,LSTBxIDDocs);
  if not (DsIncidencias.state in [dsedit,dsInsert])then
    poneAutorizacion(DSIncidencias.DataSet.FieldByName('Condiciones').ASinteger, ChckLstBxCondiciones);
end;

procedure TFrmSeguimientoRegistro.poneAutorizacion(Permisos: integer;
  var ChckLstActual: TCheckListBox);
var
  i:integer;
begin
  SetLength(ArrOpciones,0);   //Se colocaron aca locales
  convierteBinADec(Permisos,ArrOpciones);

  if (High(ArrOpciones) = -1) or((High(ArrOpciones) = 0)and (ArrOpciones[0]=0))then
  begin
    for i:=0 to  ChckLstActual.Count -1   do
       ChckLstActual.Checked[i]:=False;
  end
  else
  begin
    for i:=0 to  ChckLstActual.Count -1   do
       ChckLstActual.Checked[i]:=ArrOpciones[i]=1;
  end;

end;

procedure TFrmSeguimientoRegistro.DSIncidenciasStateChange(Sender: TObject);
begin
  CargaFolios(LstBxFolios,LSTBxIDDocs);
  if  PnlNav.Visible then
   SpdBtncontactoHoy.Enabled:= DSIncidencias.State in [dsbrowse];
  if PnlSoloIncidencias.Visible then
   SpdBtnRegreso.Enabled := DSIncidencias.State in [dsbrowse];
  EliminarFolio1.Enabled:= DSIncidencias.State in [dsEdit,dsinsert];
end;

procedure TFrmSeguimientoRegistro.AgregaIncidencia1Click(Sender: TObject);
begin
//Pendiente
end;

procedure TFrmSeguimientoRegistro.CargaFolios(ListaF,ListaID: TlistBox);
var texto, Parte :string;   // , SerFol
    i:integer;
begin
  ListaF.Clear;
  ListaID.Clear;
  Texto:=DsIncidencias.Dataset.FieldByName('FoliosAsoc').AsString;

  while Length(Texto)>0 do
  begin
     i:=Pos('/',Texto);
    Texto:= Copy(Texto,i+1,length(Texto)-i);//Siempre sera el primero
    i:=Pos('/',Texto);
    Parte:=Copy(Texto,1,i-1);
    if Parte<>'' then
    begin
      ListaID.Items.Add(Parte);
   //   SerFol:=Dmppal.SacaSerFol(StrToint(Parte));
      ListaF.Items.Add(Parte);
    end;


    //Buscar en tabla sacar demastdatos y colocar en otra lista
  end;
end;

procedure TFrmSeguimientoRegistro.EliminarFolio1Click(Sender: TObject);
var I:Integer;
begin
  inherited;
  //Luego habilitar
  if DSIncidencias.dataset.State in [dsinsert, dsEdit] then
  begin
    if LSTBxFolios.Items.Count >0 then
    begin
      i:= LSTBxFolios.ItemIndex;
      LSTBxFolios.Items.Delete(i);
      LSTBxIDDocs.Items.Delete(i);
      DsIncidencias.Dataset.FieldByName('FoliosAsoc').AsString:=PoneFolios(LSTBxIDDocs); //Verificar
    end;
  end;


end;


procedure TFrmSeguimientoRegistro.FormCreate(Sender: TObject);
begin
  DtTmDesde.Date:=_DmConection.LaFechaActual;//May 26/17 Date;
  DtTmHasta.Date:=_DmConection.LaFechaActual+1;//date+1; //Jun 30/17
  dsDatossuc.DataSet.open;
  DSFuncXCli.DataSet.open;
end;

procedure TFrmSeguimientoRegistro.ImgAceptaClick(Sender: TObject);
begin
  dsDatossuc.DataSet.post;
  ImgAcepta.Visible:=False;
  ImgEditar.Visible:=True;
  DBEdTel1.Visible:=false;
   ImgCanSuc.Visible:=False;
end;

procedure TFrmSeguimientoRegistro.ImgCancFunClick(Sender: TObject);
begin
  DSFuncXCli.DataSet.Cancel;
  DBEdtContacto.Visible:=False;
  DBEdtTelCont1.Visible:=False;
  ImgFuncE.Visible:=true;
  ImgCancFun.Visible:=False;
  ImgFunG.Visible:=False;
end;

procedure TFrmSeguimientoRegistro.ImgCanSucClick(Sender: TObject);
begin
  dsDatossuc.DataSet.Cancel;
  ImgAcepta.Visible:=False;
  ImgCanSuc.Visible:=False;
  ImgEditar.Visible:=True;
  DBEdTel1.Visible:=false;
end;

procedure TFrmSeguimientoRegistro.ImgFuncEClick(Sender: TObject);
begin
{ DSFuncXCli.DataSet.Edit;
  DBEdtContacto.Visible:=True;
  DBEdtTelCont1.Visible:=true;
  ImgFuncE.Visible:=False;
  ImgCancFun.Visible:=true;
  ImgFunG.Visible:=true;  //Mientras mar 3/17}
end;

procedure TFrmSeguimientoRegistro.ImgFunGClick(Sender: TObject);
begin
  DSFuncXCli.DataSet.Post;
  DBEdtContacto.Visible:=False;
  DBEdtTelCont1.Visible:=False;
  ImgFuncE.Visible:=true;
  ImgCancFun.Visible:=False;
  ImgFunG.Visible:=False;
end;

function TFrmSeguimientoRegistro.PoneFolios(ListaID: TlistBox): String;
var
   FoliosTxt:String;
   i:Integer;
begin
  FoliosTxt:='/';
  for i:=0 to ListaID.Count-1 do
  begin
    FoliosTxt:=FoliosTxt+ListaID.Items[i]+'/';
  end;

  if FoliosTxt='/' then
     FoliosTxt:='';

  Result:=FoliosTxt;

end;

procedure TFrmSeguimientoRegistro.SpdBtnConsultarxClick(Sender: TObject);
var
  Texto,base1,Agrupacion, XCliente,XAtiende:String;//   XPropCta,BSuma,
 // i:integer;
begin

  inherited;

  XCliente:='';

  XAtiende:='';

  Base1:= 'select CxC.IdPersona,P.RazonSocial,Sum(CXC.Saldo) as Saldo , sum(CXC.Interes) as interes from CuentasXCobrar CXC, Personas P'
           +' where p.idpersona=Cxc.IdPersona  and Saldo>0.01'        //jun 23/17 0.00001
           +' and CXC.IDCuentaXCobrarRestructura is null '; //<-- Para separar  las nuevas Nov 28/18

  if DBLkupCmbBxClientes.Text<>'' then
    XCliente:=' and CxC.IdPersona ='+intToSTR(DBLkupCmbBxClientes.KeyValue);


//  if DBLkupCBxAtiende.Text<>'' then
//     XAtiende:=' and C.IDempleado='''+DBLkupCBxAtiende.KeyValue+'''';

    Agrupacion:=' Group by cxC.IdPersona, P.RazonSocial';


  Texto:='';
  if EDtTextoCliente.Text <>'' then
     Texto:=' and P.RazonSocial like ''%'+ EDtTextoCliente.Text+'%''';

  dsconsulta.DataSet.close;
  TAdoDataSet(dsconsulta.DataSet).CommandText:=  Base1+ XCliente+Texto + Agrupacion;
 (* dmppal.SQLQrySaldosClientes.sql.Clear;
  dmppal.SQLQrySaldosClientes.sql.Add(Base1);
  dmppal.SQLQrySaldosClientes.sql.Add(Base2+XGrupo+XCliente+XPropCta+XAtiende);
  dmppal.SQLQrySaldosClientes.sql.Add(Base3 +Texto+ Filtro);
  dmppal.SQLQrySaldosClientes.sql.Add(Agrupacion);

   *)

  dsconsulta.DataSet.open;
  //
end;

procedure TFrmSeguimientoRegistro.SpdBtnContactoClick(Sender: TObject);
begin
   pnlSuc.Visible:= SpdBtnContacto.Down;
  if DSDatosSuc.State=dsEdit then
  begin
    ImgCanSucClick(ImgCanSuc);
    //DSDatosSuc.dataset.Cancel;
  end;
  if DSFuncXCli.State=dsEdit then
     ImgCancFunClick(ImgCancFun);
//    DSFuncXCli.dataset.Cancel;

end;

procedure TFrmSeguimientoRegistro.SpdBtncontactoHoyClick(Sender: TObject);
var
   base1, where ,orden:String;
begin
  Base1:= 'select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, '+
  'IdIncidenciaEstado, IdAnexo, FechaReg, FoliosAsoc, RegContacto, Acuerdo, '+
  'Proxcontacto, Condiciones, PromesaPago from IncidenciasCobranza ';
  where :='where IdIncidenciaEstado=1  and ProxContacto>=:FecIni and ProxContacto<=:FecFin';  //Solo abiertos .. verificar si todos?? feb 16/17

   orden:=' order by FechaReg desc';

  PnlSoloIncidencias.Align:=alClient;
  PnlSoloIncidencias.Visible:=True;
  PnlNav.Visible:=not  PnlSoloIncidencias.Visible;
  GridDatos.Visible:=not  PnlSoloIncidencias.Visible;
  DBGrdFactPend.Visible:=not  PnlSoloIncidencias.Visible;
  TAdoDAtaset(dsincidencias.DataSet).close;
  TAdoDAtaset(dsincidencias.DataSet).CommandText:=BAse1+ where +orden;

//  dsConIncidencias.DataSet.Close;
//  TAdoDAtaset(dsConIncidencias.DataSet).Parameters.ParamByName('FecIni').Value:=DtTmDesde.Date;
//  TAdoDAtaset(dsConIncidencias.DataSet).Parameters.ParamByName('FecFin').Value:=DtTmHasta.Date;
//  dsConIncidencias.DataSet.open;

  DBNavIncidencia.VisibleButtons:=[nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
 // TAdoDAtaset(dsincidencias.DataSet).MasterFields:='';
  TAdoDAtaset(dsincidencias.DataSet).DataSource:=nil;


 // TAdoDAtaset(dsincidencias.DataSet).MasterFields:='IdIncidenciaCobranza';

 // TAdoDAtaset(dsincidencias.DataSet).DataSource:=DSConIncidencias;      // dsConsulta
 // TAdoDAtaset(dsincidencias.DataSet).MasterFields:='IdIncidenciaCobranza';//  dsConsulta
  TAdoDAtaset(dsincidencias.DataSet).Open;
  DBCtrlGrdDatos.Visible:=False;
  agregaIncidencia1.Enabled:=False;
  DSIncidenciasStateChange(DSIncidencias);
  SpdBtnMostrartodo.Visible:=False;
end;

procedure TFrmSeguimientoRegistro.SpdBtnFiltroDiasClick(Sender: TObject);
begin        //era dsConIncidencias
  TAdoDAtaset(dsIncidencias.DataSet).Close;
  TAdoDAtaset(dsIncidencias.DataSet).Parameters.ParamByName('FecIni').value:=DtTmDesde.Date;
  TAdoDAtaset(dsIncidencias.DataSet).Parameters.ParamByName('FecFin').VAlue:=DtTmHasta.Date;
  TAdoDAtaset(dsIncidencias.DataSet).open;

end;

procedure TFrmSeguimientoRegistro.SpdBtnLimpiarClick(Sender: TObject);
begin
  DBLkupCmbBxClientes.keyValue:='';
end;

procedure TFrmSeguimientoRegistro.SpdBtnMostrartodoClick(Sender: TObject);
var
   TXTSQL, Orden,where :String;
   idREgAct:Integer;
begin
  idREgAct:=-1;
  TXTSQL:='select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, IdIncidenciaEstado,'
         +' IdAnexo, FechaReg, FoliosAsoc, RegContacto, Acuerdo, Proxcontacto, '
         +' Condiciones, PromesaPago from IncidenciasCobranza where IdPersonaCliente=:IdPersona ';
  where:= ' and IdIncidenciaEstado=1   ';
  orden :=' order by FechaReg desc';
  if not Dsincidencias.DataSet.eof then
    idREgAct:= Dsincidencias.DataSet.fieldbyname('IDIncidenciaCobranza').asinteger;

  Dsincidencias.DataSet.Close;
  if SpdBtnMostrartodo.Down then //Sin filtro
  begin
    TADoDAtaset(Dsincidencias.DataSet).CommandText:= TXTSQL +orden;
    TADoDAtaset(Dsincidencias.DataSet).Open;
  end
  else
  begin
    TADoDAtaset(Dsincidencias.DataSet).CommandText:= TXTSQL +where +orden;
    TADoDAtaset(Dsincidencias.DataSet).Open;
  end;
  if idREgAct<>-1 then
     TADoDAtaset(Dsincidencias.DataSet).locate('IDIncidenciaCobranza',idregAct,[]);

 // Dsincidencias.DataSet.Filtered:=not SpdBtnMostrartodo.Down;
end;

procedure TFrmSeguimientoRegistro.SpdBtnRegresoClick(Sender: TObject);
var
   base1, where ,orden:String;
begin
  Base1:= 'select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, '+
  'IdIncidenciaEstado, IdAnexo, FechaReg, FoliosAsoc, RegContacto, Acuerdo, '+
  'Proxcontacto, Condiciones, PromesaPago from IncidenciasCobranza ';
  where :='where IdIncidenciaEstado=1  and IdPersonaCliente=:IDPersona';  //Solo abiertos .. verificar si todos?? feb 16/17

   orden:=' order by FechaReg desc';

  PnlSoloIncidencias.Visible:=False;
  PnlNav.Visible:=not  PnlSoloIncidencias.Visible;
  GridDatos.Visible:=not  PnlSoloIncidencias.Visible;
  DBGrdFactPend.Visible:=not  PnlSoloIncidencias.Visible;
  TAdoDAtaset(dsincidencias.DataSet).Close;
  TAdoDAtaset(dsincidencias.DataSet).CommandText:= BAse1+ where +orden;

  //TAdoDAtaset(dsConsulta.DataSet).DataSource:=Nil; //??
  TAdoDAtaset(dsincidencias.DataSet).MasterFields:='IDPersona';
  TAdoDAtaset(dsincidencias.DataSet).DataSource:=DSConsulta;


  TAdoDAtaset(dsincidencias.DataSet).Open;

  DBNavIncidencia.VisibleButtons:=[nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
  DBCtrlGrdDatos.Visible:=True;
  agregaIncidencia1.Enabled:=true;
  SpdBtnMostrartodo.Visible:=true;
  DSIncidenciasStateChange(DSIncidencias);
end;

end.
