unit SeguimientoNvoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxDBEdit, Vcl.StdCtrls,
  cxButtons, cxLabel, cxDBLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.DBCGrids, Vcl.Buttons, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar, Vcl.CheckLst, cxCheckGroup,
  cxListBox, cxMemo, cxCheckBox, cxGroupBox, cxRadioGroup,math, Data.Win.ADODB;

type
  TArrDinamico= array of integer;
  TFrmSeguimientoNvoEdt = class(TForm)
    PnlNav: TPanel;
    Label2: TLabel;
    PnlSuc: TPanel;
    DBCtrlGrdContacto: TDBCtrlGrid;
    Label3: TLabel;
    Label4: TLabel;
    ImgFuncE: TImage;
    ImgFunG: TImage;
    ImgCancFun: TImage;
    DBCtrlGrid2: TDBCtrlGrid;
    Label5: TLabel;
    Label6: TLabel;
    ImgEditar: TImage;
    ImgAcepta: TImage;
    ImgCanSuc: TImage;
    cxEdtTextoCliente: TcxTextEdit;
    cxDBLkupCmbBxClientes: TcxDBLookupComboBox;
    cxDBLblClienteAct: TcxDBLabel;
    cxBtnLimpiar: TcxButton;
    cxBtnConsultar: TcxButton;
    cxBtnContacto: TcxButton;
    cxDBEdTel1: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    cxDBEdtContacto: TcxDBTextEdit;
    cxDBEdtTelCont1: TcxDBTextEdit;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    DSConIncidencias: TDataSource;
    DSIncidencias: TDataSource;
    DSFuncXCli: TDataSource;
    DSDatosSuc: TDataSource;
    DSCXCPendientes: TDataSource;
    DSClientes: TDataSource;
    dsConsulta: TDataSource;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterSerie: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterCapitalCobrado: TcxGridDBColumn;
    tvMasterSaldoInsoluto: TcxGridDBColumn;
    tvMasterIdCFDI: TcxGridDBColumn;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    Pnlinferior: TPanel;
    DBCtrlGrdDatos: TDBCtrlGrid;
    Label9: TLabel;
    Label10: TLabel;
    LblEstado: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PNLRegInci: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    C5: TcxDBDateEdit;
    PnlNavIncid: TPanel;
    SpdBtnMostrartodo: TSpeedButton;
    DBNavIncidencia: TDBNavigator;
    Label1: TLabel;
    Label7: TLabel;
    cxDBTxtFecha: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBEstado: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBRdGrpEstado: TcxDBRadioGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBChckBxPromPago: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    cxLSTBxIDDocs: TcxListBox;
    cxLstBxFolios: TcxListBox;
    cxChckLstBxCondiciones: TcxCheckGroup;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxChckGrpCalifica: TcxCheckGroup;
    DSCalificaciones: TDataSource;
    PpUpMnCopia: TPopupMenu;
    CrearCopia1: TMenuItem;
    AgregaIncidencia1: TMenuItem;
    PpUpMnFolios: TPopupMenu;
    EliminarFolio1: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure cxBtnContactoClick(Sender: TObject);
    procedure ImgCanSucClick(Sender: TObject);
    procedure ImgCancFunClick(Sender: TObject);
    procedure ImgAceptaClick(Sender: TObject);
    procedure ImgFunGClick(Sender: TObject);
    procedure cxBtnLimpiarClick(Sender: TObject);
    procedure cxBtnConsultarClick(Sender: TObject);
    procedure tvMasterDblClick(Sender: TObject);
    procedure SpdBtnMostrartodoClick(Sender: TObject);
    procedure AgregaIncidencia1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EliminarFolio1Click(Sender: TObject);
    procedure DSIncidenciasDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure cxChckLstBxCondicionesPropertiesChange(Sender: TObject);
    procedure DSIncidenciasStateChange(Sender: TObject);
    procedure cxChckGrpCalificaPropertiesChange(Sender: TObject);
    procedure DBCtrlGrdDatosPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
  private
    ArrOpciones :TarrDinamico;
    fFiltroCalifica: String;//Array of integer;
    function PoneFolios(ListaID: TcxlistBox): String;
    procedure CargaFolios(ListaF, ListaID: TcxlistBox);
    procedure poneAutorizacion(Permisos: integer;var ChckLstActual: TcxCheckGroup);
    procedure convierteBinADec(Numero: integer; var B: TArrDinamico);
    { Private declarations }
    property FiltroCalifica:String read fFiltroCalifica write FFiltroCalifica; //Ene 4/19
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses SeguimientoCobranzaDM;

procedure TFrmSeguimientoNvoEdt.AgregaIncidencia1Click(Sender: TObject);
begin
    if DSIncidencias.DataSet.State in [dsinsert,dsedit] then
  begin
    ShowMessage('Guarde los cambios del registro actual para realizar la copia');
  end
  else
  begin
    PNLRegInci.Visible:=true;
    DBNavIncidencia.Visible:= PNLRegInci.Visible;

    DSIncidencias.DataSet.insert;
  end;
end;

procedure TFrmSeguimientoNvoEdt.CargaFolios(ListaF, ListaID: TcxlistBox);
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

procedure TFrmSeguimientoNvoEdt.convierteBinADec(Numero: integer;
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

procedure TFrmSeguimientoNvoEdt.cxBtnConsultarClick(Sender: TObject);
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

  if cxDBLkupCmbBxClientes.Text<>'' then
    XCliente:=' and CxC.IdPersona ='+intToSTR(cxDBLkupCmbBxClientes.EditValue);



//  if DBLkupCBxAtiende.Text<>'' then
//     XAtiende:=' and C.IDempleado='''+DBLkupCBxAtiende.KeyValue+'''';

    Agrupacion:=' Group by cxC.IdPersona, P.RazonSocial';


  Texto:='';
  if cxEDtTextoCliente.Text <>'' then
     Texto:=' and P.RazonSocial like ''%'+ cxEDtTextoCliente.Text+'%''';
  if fFiltroCalifica<>'' then   //Ene 4/19
  begin
    if TExto<>'' then
      Texto:= Texto +' and ('+fFiltroCalifica+')'
    else
        Texto:= ' and ('+fFiltroCalifica+')';
  end;
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

procedure TFrmSeguimientoNvoEdt.cxBtnContactoClick(Sender: TObject);
begin
  pnlSuc.Visible:= cxBtnContacto.Down;
  if DSDatosSuc.State=dsEdit then
  begin
    ImgCanSucClick(ImgCanSuc);
    //DSDatosSuc.dataset.Cancel;
  end;
  if DSFuncXCli.State=dsEdit then
     ImgCancFunClick(ImgCancFun);
//    DSFuncXCli.dataset.Cancel;
end;

procedure TFrmSeguimientoNvoEdt.cxBtnLimpiarClick(Sender: TObject);
begin
  cxDBLkupCmbBxClientes.EditValue:=''; //_VErificar
end;

procedure TFrmSeguimientoNvoEdt.cxChckGrpCalificaPropertiesChange(
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


  //Showmessage(' filtro: '+ fFiltroCalifica);
end;

procedure TFrmSeguimientoNvoEdt.cxChckLstBxCondicionesPropertiesChange(
  Sender: TObject);
var Total,i, val:integer;
begin
  inherited;
  if DSIncidencias.State in [dsinsert,dsedit] then
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
    DSIncidencias.DataSet.FieldByName('Condiciones').ASinteger:=Total;
  end;

end;

procedure TFrmSeguimientoNvoEdt.DBCtrlGrdDatosPaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
 if dsIncidencias.DataSet.FieldByName('EstadoIncidencia').asString='Abierta' then
     cxDBEstado.Style.Font.Color:=clGreen
  else if dsIncidencias.DataSet.FieldByName('EstadoIncidencia').asString='Cerrada' then
     cxDBEstado.Style.Font.Color:= clRed
  else if dsIncidencias.DataSet.FieldByName('EstadoIncidencia').asString='Cancelada' then  //No debe existir feb 15/17
     cxDBEstado.Style.Font.Color:=clRed;

  LblEstado.Color:=  cxDBEstado.Style.Font.Color;
end;

procedure TFrmSeguimientoNvoEdt.DSIncidenciasDataChange(Sender: TObject;
  Field: TField);
begin
  CargaFolios(cxLstBxFolios,cxLSTBxIDDocs);
  if not (DsIncidencias.state in [dsedit,dsInsert])then
    poneAutorizacion(DSIncidencias.DataSet.FieldByName('Condiciones').ASinteger, cxChckLstBxCondiciones);

end;

procedure TFrmSeguimientoNvoEdt.DSIncidenciasStateChange(Sender: TObject);
begin
  cxChckLstBxCondiciones.Properties.ReadOnly:= not (DSIncidencias.dataset.State in [dsinsert, dsEdit]) ;
end;

procedure TFrmSeguimientoNvoEdt.EliminarFolio1Click(Sender: TObject);
var I:Integer;
begin
  inherited;
  //Luego habilitar
  if DSIncidencias.dataset.State in [dsinsert, dsEdit] then
  begin
    if cxLstBxFolios.Items.Count >0 then
    begin
      i:= cxLstBxFolios.ItemIndex;
      cxLstBxFolios.Items.Delete(i);
      cxLSTBxIDDocs.Items.Delete(i);
      DsIncidencias.Dataset.FieldByName('FoliosAsoc').AsString:=PoneFolios(cxLstBxFolios); //Verificar
    end;
  end;


end;



procedure TFrmSeguimientoNvoEdt.FormCreate(Sender: TObject);
begin
 //   DtTmDesde.Date:=_DmConection.LaFechaActual;//May 26/17 Date;
 // DtTmHasta.Date:=_DmConection.LaFechaActual+1;//date+1; //Jun 30/17
  dsDatossuc.DataSet.open;
  DSFuncXCli.DataSet.open;
end;

procedure TFrmSeguimientoNvoEdt.FormShow(Sender: TObject);
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

procedure TFrmSeguimientoNvoEdt.ImgAceptaClick(Sender: TObject);
begin
  dsDatossuc.DataSet.post;
  ImgAcepta.Visible:=False;
  ImgEditar.Visible:=True;
  cxDBEdTel1.Visible:=false;
  ImgCanSuc.Visible:=False;
end;

procedure TFrmSeguimientoNvoEdt.ImgCancFunClick(Sender: TObject);
begin
  DSFuncXCli.DataSet.Cancel;
  cxDBEdtContacto.Visible:=False;
  cxDBEdtTelCont1.Visible:=False;
  ImgFuncE.Visible:=true;
  ImgCancFun.Visible:=False;
  ImgFunG.Visible:=False;
end;

procedure TFrmSeguimientoNvoEdt.ImgCanSucClick(Sender: TObject);
begin
  dsDatossuc.DataSet.Cancel;
  ImgAcepta.Visible:=False;
  ImgCanSuc.Visible:=False;
  ImgEditar.Visible:=True;
  cxDBEdTel1.Visible:=false;
end;

procedure TFrmSeguimientoNvoEdt.ImgFunGClick(Sender: TObject);
begin
  DSFuncXCli.DataSet.Post;
  cxDBEdtContacto.Visible:=False;
  cxDBEdtTelCont1.Visible:=False;
  ImgFuncE.Visible:=true;
  ImgCancFun.Visible:=False;
  ImgFunG.Visible:=False;
end;

procedure TFrmSeguimientoNvoEdt.poneAutorizacion(Permisos: integer;
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

procedure TFrmSeguimientoNvoEdt.tvMasterDblClick(Sender: TObject);
begin
 //Luego habilitar
  if dsincidencias.dataset.State in [dsinsert, dsEdit] then
  begin
    if cxLSTBxIDDocs.Items.IndexOf(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString)=-1 then
    begin
      cxLSTBxIDDocs.Items.Add(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString);
      cxLSTBxFolios.Items.Add(DSCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').AsString);// mientras Feb 15/17 DSCXCPendientes.DataSet.FieldByName('Serie').AsString+' '+DSCXCPendientes.DataSet.FieldByName('Folio').AsString );
    end;

    DsIncidencias.Dataset.FieldByName('FoliosAsoc').AsString:=PoneFolios(cxLSTBxIDDocs); //Ajustar
  end;
end;


function TFrmSeguimientoNvoEdt.PoneFolios(ListaID: TcxlistBox): String;
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
procedure TFrmSeguimientoNvoEdt.SpdBtnMostrartodoClick(Sender: TObject);
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
