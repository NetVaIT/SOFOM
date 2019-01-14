unit SegIncidenciasProximasEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Data.Win.ADODB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB, Vcl.DBCtrls, cxCheckGroup,
  cxListBox, cxMemo, cxDBEdit, cxCheckBox, cxGroupBox, cxRadioGroup,
  Vcl.StdCtrls, cxLabel, cxDBLabel, Vcl.DBCGrids, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Menus, math, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TArrDinamico= array of integer;
  TFrmSegProximosContactos = class(TForm)
    PnlSoloIncidencias: TPanel;
    PnlFechas: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    SpdBtnFiltroDias: TSpeedButton;
    DtTmDesde: TcxDateEdit;
    DtTmHasta: TcxDateEdit;
    Pnlinferior: TPanel;
    DBCtrlGrdDatos: TDBCtrlGrid;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBEstado: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    PNLRegInci: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    C5: TcxDBDateEdit;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBChckBxPromPago: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    cxLSTBxIDDocs: TcxListBox;
    cxLstBxFolios: TcxListBox;
    cxChckLstBxCondiciones: TcxCheckGroup;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    PnlNavIncid: TPanel;
    SpdBtnMostrartodo: TSpeedButton;
    DBNavIncidencia: TDBNavigator;
    DSIncidencias: TDataSource;
    PpUpMnCopia: TPopupMenu;
    CrearCopia1: TMenuItem;
    AgregaIncidencia1: TMenuItem;
    PpUpMnFolios: TPopupMenu;
    EliminarFolio1: TMenuItem;
    cxChckGrpCalifica: TcxCheckGroup;
    cxDBRdGrpEstado: TcxDBRadioGroup;
    DSConIncidencias: TDataSource;
    DSCalificaciones: TDataSource;
    Splitter1: TSplitter;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel1: TPanel;
    PnlIncidenciaLista: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterIDIncidenciaCobranza: TcxGridDBColumn;
    tvMasterIDUsuario: TcxGridDBColumn;
    tvMasterIDPersonaCliente: TcxGridDBColumn;
    tvMasterIdIncidenciaEstado: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterFechaReg: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterProxcontacto: TcxGridDBColumn;
    tvMasterRegContacto: TcxGridDBColumn;
    tvMasterAcuerdo: TcxGridDBColumn;
    tvMasterCondiciones: TcxGridDBColumn;
    tvMasterPromesaPago: TcxGridDBColumn;
    tvMasterEstadoIncidencia: TcxGridDBColumn;
    tvMasterUsuarioReg: TcxGridDBColumn;
    tvMasterFoliosAsoc: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Splitter2: TSplitter;
    DSCXCPendientes: TDataSource;
    cxGridDBTableView1IdPersona: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1FechaVencimiento: TcxGridDBColumn;
    cxGridDBTableView1IdCuentaXCobrar: TcxGridDBColumn;
    cxGridDBTableView1Saldo: TcxGridDBColumn;
    cxGridDBTableView1IdCFDI: TcxGridDBColumn;
    cxGridDBTableView1Serie: TcxGridDBColumn;
    cxGridDBTableView1Folio: TcxGridDBColumn;
    cxGridDBTableView1Total: TcxGridDBColumn;
    cxGridDBTableView1SaldoDocumento: TcxGridDBColumn;
    cxGridDBTableView1IdAnexo: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    cxGridDBTableView1CapitalCobrado: TcxGridDBColumn;
    cxGridDBTableView1SaldoInsoluto: TcxGridDBColumn;
    cxChckBxFecha: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnMostrartodoClick(Sender: TObject);
    procedure AgregaIncidencia1Click(Sender: TObject);
    procedure EliminarFolio1Click(Sender: TObject);
    procedure cxChckLstBxCondicionesPropertiesChange(Sender: TObject);
    procedure SpdBtnFiltroDiasClick(Sender: TObject);
    procedure DSConIncidenciasStateChange(Sender: TObject);
    procedure DSConIncidenciasDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxChckGrpCalificaPropertiesChange(Sender: TObject);
  private
    ArrOpciones :TarrDinamico;
    fFiltroCalifica: String;
    function PoneFolios(ListaID: TcxlistBox): String;
    procedure poneAutorizacion(Permisos: integer;
      var ChckLstActual: TcxCheckGroup);
    procedure convierteBinADec(Numero: integer; var B: TArrDinamico);
    procedure CargaFolios(ListaF, ListaID: TcxlistBox);
    { Private declarations }
  public
    { Public declarations }
    property FiltroCalifica:String read fFiltroCalifica write FFiltroCalifica; //Ene 8/19
  end;

implementation

{$R *.dfm}

uses _ConectionDmod, SeguimientoCobranzaDM;

procedure TFrmSegProximosContactos.AgregaIncidencia1Click(Sender: TObject);
begin
  if DSConIncidencias.DataSet.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Guarde los cambios del registro actual para realizar la copia');
  end
  else
  begin
    PNLRegInci.Visible:=true;
    DBNavIncidencia.Visible:= PNLRegInci.Visible;

    DSConIncidencias.DataSet.insert;
  end;
end;

procedure TFrmSegProximosContactos.DSConIncidenciasDataChange(Sender: TObject;
  Field: TField);
begin
  CargaFolios(cxLstBxFolios,cxLSTBxIDDocs);
  if not (DsConIncidencias.state in [dsedit,dsInsert])then
    poneAutorizacion(DSConIncidencias.DataSet.FieldByName('Condiciones').ASinteger, cxChckLstBxCondiciones);
end;

procedure TFrmSegProximosContactos.DSConIncidenciasStateChange(Sender: TObject);
begin
  cxChckLstBxCondiciones.Properties.ReadOnly:= not (DSConIncidencias.dataset.State in [dsinsert, dsEdit]) ;
  if DsConIncidencias.Dataset.Active then //Ene 9/19
     CargaFolios(cxLstBxFolios,cxLSTBxIDDocs);

  EliminarFolio1.Enabled:= DSConIncidencias.State in [dsEdit,dsinsert];
end;

procedure TFrmSegProximosContactos.CargaFolios(ListaF, ListaID: TcxlistBox);
var texto, Parte :string;   // , SerFol
    i:integer;
begin
  ListaF.Clear;
  ListaID.Clear;
  Texto:=DsConIncidencias.Dataset.FieldByName('FoliosAsoc').AsString;

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

procedure TFrmSegProximosContactos.convierteBinADec(Numero: integer;
  var B: TArrDinamico);
var
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



procedure TFrmSegProximosContactos.cxChckGrpCalificaPropertiesChange(
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

procedure TFrmSegProximosContactos.cxChckLstBxCondicionesPropertiesChange(
  Sender: TObject);       //Ene 8/19
var Total,i, val:integer;
begin
  inherited;
  if DSConIncidencias.State in [dsinsert,dsedit] then       //2  Ok
  begin
    Total:=0;
    for i:=0 to  cxChckLstBxCondiciones.properties.Items.Count -1  do    //???
    begin
      if cxChckLstBxCondiciones.States[i]=cbsChecked then         // ChckLstBxCondiciones.Checked[i]
      begin
        Val:=Round(Power(2,i));
        Total:=Total + val;
      end;
    end;
    //Debe estar en edicion
    DSConIncidencias.DataSet.FieldByName('Condiciones').ASinteger:=Total;
  end;

end;

procedure TFrmSegProximosContactos.cxGridDBTableView1DblClick(Sender: TObject);
begin
 //Luego habilitar
  if dsConincidencias.dataset.State in [dsinsert, dsEdit] then
  begin
    if cxLSTBxIDDocs.Items.IndexOf(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString)=-1 then
    begin
      cxLSTBxIDDocs.Items.Add(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString);
      cxLSTBxFolios.Items.Add(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString);// mientras Feb 15/17 DSCXCPendientes.DataSet.FieldByName('Serie').AsString+' '+DSCXCPendientes.DataSet.FieldByName('Folio').AsString );
    end;

    dsConincidencias.Dataset.FieldByName('FoliosAsoc').AsString:=PoneFolios(cxLSTBxIDDocs); //Ajustar
  end;
end;

procedure TFrmSegProximosContactos.poneAutorizacion(Permisos: integer;
  var ChckLstActual: TcxCheckGroup);
var
  i:integer;
begin
  SetLength(ArrOpciones,0);   //Se colocaron aca locales
  convierteBinADec(Permisos,ArrOpciones);

  if (High(ArrOpciones) = -1) or((High(ArrOpciones) = 0)and (ArrOpciones[0]=0))then
  begin
    for i:=0 to  ChckLstActual.Properties.Items.Count -1   do
      // ChckLstActual.Checked[i]:=False;   if cxChckLstBxCondiciones.States[i]=cbsChecked then
     ChckLstActual.States[i]:=cbsunChecked
  end
  else
  begin
    for i:=0 to  ChckLstActual.Properties.Items.Count -1   do
    begin
     //  ChckLstActual.Checked[i]:=ArrOpciones[i]=1;
     if  ArrOpciones[i]=1  then
       ChckLstActual.States[i]:=cbsChecked
     else
       ChckLstActual.States[i]:=cbsunChecked;

    end;
  end;

end;
procedure TFrmSegProximosContactos.EliminarFolio1Click(Sender: TObject);
var I:Integer;
begin
  inherited;
  //Luego habilitar
  if DSConIncidencias.dataset.State in [dsinsert, dsEdit] then
  begin
    if cxLstBxFolios.Items.Count >0 then
    begin
      i:= cxLstBxFolios.ItemIndex;
      cxLstBxFolios.Items.Delete(i);
      cxLSTBxIDDocs.Items.Delete(i);
      DsConIncidencias.Dataset.FieldByName('FoliosAsoc').AsString:=PoneFolios(cxLSTBxIDDocs); //Verificar
    end;
  end;


end;

function TFrmSegProximosContactos.PoneFolios(ListaID: TcxlistBox): String;
var
   FoliosTxt:String;
   i:Integer;
begin
  FoliosTxt:='/';
  for i:=0 to ListaID.Items.Count-1 do
  begin
    FoliosTxt:=FoliosTxt+ListaID.Items[i]+'/';
  end;

  if FoliosTxt='/' then
     FoliosTxt:='';

  Result:=FoliosTxt;

end;

procedure TFrmSegProximosContactos.FormCreate(Sender: TObject);
var
   base1, where ,orden:String;
begin
  DtTmDesde.Date:=_DmConection.LaFechaActual;//May 26/17 Date;
  DtTmHasta.Date:=_DmConection.LaFechaActual+1;//date+1; //Jun 30/17

  Base1:= 'select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, '+
  'IdIncidenciaEstado, IdAnexo, FechaReg, FoliosAsoc, RegContacto, Acuerdo, '+
  'Proxcontacto, Condiciones, PromesaPago from IncidenciasCobranza ';
  where :='where IdIncidenciaEstado=1  and ProxContacto>=:FecIni and ProxContacto<=:FecFin';  //Solo abiertos .. verificar si todos?? feb 16/17

   orden:=' order by FechaReg desc';

//  PnlSoloIncidencias.Align:=alClient;
//  PnlSoloIncidencias.Visible:=True;
//  PnlNav.Visible:=not  PnlSoloIncidencias.Visible;
 // GridDatos.Visible:=not  PnlSoloIncidencias.Visible;
 // DBGrdFactPend.Visible:=not  PnlSoloIncidencias.Visible;
  TAdoDAtaset(dsConincidencias.DataSet).close;
  TAdoDAtaset(dsConincidencias.DataSet).CommandText:=BAse1+ where +orden;



  DBNavIncidencia.VisibleButtons:=[nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];

//  TAdoDAtaset(dsincidencias.DataSet).DataSource:=nil;


  TAdoDAtaset(dsConincidencias.DataSet).Open;
  DBCtrlGrdDatos.Visible:=False;
  agregaIncidencia1.Enabled:=False;
  DSConIncidenciasStateChange(DSConIncidencias);    //1
  SpdBtnMostrartodo.Visible:=False;
end;

procedure TFrmSegProximosContactos.FormShow(Sender: TObject);
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
  DSCXCPendientes.DataSet.Open;
end;

procedure TFrmSegProximosContactos.SpdBtnFiltroDiasClick(Sender: TObject);
var
   TXTSQL, Orden,whereTXT, FEchaTxt,SQLExistsTXT:String;
   idREgAct:Integer;
begin
  idREgAct:=-1;

  TXTSQL:='select IDIncidenciaCobranza, IDUsuario, IDPersonaCliente, IdIncidenciaEstado,'
         +' IdAnexo, FechaReg, FoliosAsoc, RegContacto, Acuerdo, Proxcontacto, '
         +' Condiciones, PromesaPago from IncidenciasCobranza ';
  SQLExistsTXT:=' and  Exists (Select * from  Personas P where P.IDPersona=IDPersonaCliente ';
  if FiltroCalifica<>'' then
    SQLExistsTXT:=SQLExistsTXT+' and ('+FiltroCalifica+'))'
  else
     SQLExistsTXT:='';
  whereTXT:= ' where IdIncidenciaEstado=1 ';         // and CXC.IDCuentaXCobrarRestructura is null
  if cxChckBxFecha.State=cbsChecked then
    FechaTxt:= ' and Proxcontacto>=:FecIni  and ProxContacto<=:FecFin '
  else
    FechaTxt:= ' ';


  orden :=' order by FechaReg desc';           //Ene 9/19


  TAdoDAtaset(dsConIncidencias.DataSet).Close;
  TAdoDAtaset(dsConIncidencias.DataSet).CommandText:= TXTSQL + wheretxt + FechaTxt+SQLExistsTXT+ orden;
 // Showmessage(TXTSQL + wheretxt + FechaTxt+SQLExistsTXT+ orden);
  if  FechaTxt<>' ' then
  begin
    TAdoDAtaset(dsConIncidencias.DataSet).Parameters.ParamByName('FecIni').value:=DtTmDesde.Date;
    TAdoDAtaset(dsConIncidencias.DataSet).Parameters.ParamByName('FecFin').VAlue:=DtTmHasta.Date;
  end;

  TAdoDAtaset(dsConIncidencias.DataSet).open;

end;

procedure TFrmSegProximosContactos.SpdBtnMostrartodoClick(Sender: TObject);
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

end;

end.
