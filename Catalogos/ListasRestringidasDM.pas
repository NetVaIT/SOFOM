unit ListasRestringidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, ProcesosType, Xml.xmldom, Xml.XMLIntf,
  Xml.Win.msxmldom, Xml.XMLDoc, Dialogs,LPB;

type
  TdmListasRestringidas = class(T_dmStandar)
    adodsMasterIdListaRestringida: TAutoIncField;
    adodsMasterIdOrganismo: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdEstatus: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterAlias: TStringField;
    adodsOrganismos: TADODataSet;
    adodsPaises: TADODataSet;
    adodsMasterOrganismo: TStringField;
    adodsMasterPais: TStringField;
    actWeb: TAction;
    XMLDocListaPB_ONU: TXMLDocument;
    ActCargaLPB: TAction;
    OpnDlgXML: TOpenDialog;
    ADOQryAuxiliar: TADOQuery;
    adodsMasterFechaNacimiento: TDateTimeField;
    adodsMasterRFC: TStringField;
    adodsMasterNoIdentificacion: TStringField;
    adodsMasterDependencia: TStringField;
    adodsMasterPuesto: TStringField;
    adodsMasterComentarios: TStringField;
    adodsMasterNacionalidad: TStringField;
    ADOInsertaRegistro: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure actWebExecute(Sender: TObject);
    procedure ActCargaLPBExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SacarFecha(FechaNac:IXMLFecha_Nac_IndividuoList;var FecNac:TDateTime; var Texto:String);  //Jul 17/18
    function  SacarAlias(ListaAlias:IXMLAlias_IndividuoList):String;    //Jul 17/18
    function  SacarNacionalidad(ListaNac:IXMLNacionalidad2; var IdPais:Integer):String;   //Jul 17/18
    procedure EncuentraPais(TextoPais: String; var idpaisAct: Integer); //Jul 17/18
    function InsertaListaXML(TipoL, Ident,Nombre, Nacionalidad,RFC,NoIden,Depend,Comentario,
     Puesto, Alias:String;IdPais:Integer; fechaNac:TDateTime):Boolean;
    function SacaNombre(Individuo: IXMLIndividuo): String;
    procedure EliminarRegistrosPrevios(TipoLista: String);
    function ReducirTexto(textoOrigen: String; TamCampo: Integer): String;
    function SacarAliasEntidad(ListaAlias: IXMLAlias_EntidadList): String; //Jul 18/18



  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    Procedure CargarDatosBloqueados(Tipo: integer; Archivo:TFileName); //Jul 16/18

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ListasRestringidasForm, ListasRestringidasWeb;

{$R *.dfm}

procedure TdmListasRestringidas.ActCargaLPBExecute(Sender: TObject);
begin
  inherited;
  if OpnDlgXML.Execute then
    CargarDatosBloqueados(1, OpnDlgXML.FileName); //DEberia ser del formato
end;

procedure TdmListasRestringidas.actWebExecute(Sender: TObject);
var
  frmListasRestringidasWeb: TfrmListasRestringidasWeb;
begin
  inherited;
  frmListasRestringidasWeb := TfrmListasRestringidasWeb.Create(Self);
  try
    frmListasRestringidasWeb.View := True;
    frmListasRestringidasWeb.URL := _URLLogin;
    frmListasRestringidasWeb.ShowModal;
  finally
    frmListasRestringidasWeb.Free;
  end;
end;

procedure TdmListasRestringidas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdEstatus.Value := 1;
end;

procedure TdmListasRestringidas.CargarDatosBloqueados(Tipo: integer;
  Archivo: TFileName);     //jul 16/18 verificar datos enviados

 var Listas:IXMLListas;
     Lista:IXMLLista;
     Reportados: IXMLReportados;
     Individuo:IXMLIndividuo;
     Nac2: IXMLNacionalidad2;
     FechaNac:IXMLFecha_Nac_IndividuoList;
     Fecha:TdateTime;
     FecTexto, Nacionalidad,Alias, NomC, RFC, puesto:String;
     IdPais:Integer;

     Entidad:IXMLEntidad;
     i:integer;
begin
  //Eliminar registros de ese Organismo
  //Abrir
  XMLDocListaPB_ONU.Active:=False;;
  XMLDocListaPB_ONU.LoadFromFile(Archivo);
  XMLDocListaPB_ONU.active:=true;
  ///Insertar   o ver si see hace con un procedimiento generarl
  Listas:= GetListas(XMLDocListaPB_ONU);
  Lista:=Listas.Lista[0];
  ShowMessage('Fecha '+Lista.Fecha_Gen+ 'Tipo :'+Lista.Tipo_Lista );

  EliminarRegistrosPrevios(Lista.Tipo_Lista);
//  AdodsMaster.Open;

  Reportados:=Lista.Reportados;
  for I := 0 to Reportados.Individuo.Count-1 do //Individuos
  begin
    Fecha:=0;
    RFC:='';
    FecTexto:='';
    Puesto:='';
    Individuo:=Reportados.Individuo[i];
    FechaNac:=Individuo.Fecha_Nac_Individuo;
    SacarFecha(FechaNac, Fecha, FecTexto); //Para convertir la fecha en caso
    if FEcTexto<>'' then
      RFC:=FecTexto;
    Alias:=SacarAlias(Individuo.Alias_Individuo);
    Nacionalidad:=SacarNacionalidad(Individuo.Nacionalidad2,idPais);

    NomC:= SacaNombre(Individuo);


    if  Individuo.Designacion.Count>0 then
       puesto:= Individuo.Designacion.VALUE[0];
    //Guardar en DB()
    InsertaListaXML(Lista.Tipo_Lista,intToStr(Individuo.DataId),NomC,Nacionalidad, RFC,Individuo.Numero_Referencia,
                    Individuo.Un_Tipo_Lista ,Individuo.Comentarios, puesto,Alias,idPais,Fecha );
 end;
 //  REportados.Entidad.Count
 for I := 0 to Reportados.Entidad.Count-1 do //Individuos
  begin
    IdPais:=0;
    Fecha:=0;
    RFC:='';
    FecTexto:='';
    Puesto:='';
    Entidad:=Reportados.Entidad[i];
   // FechaNac:=Entidad.Fecha_Nac_Individuo;
  //  SacarFecha(FechaNac, Fecha, FecTexto); //Para convertir la fecha en caso
  //  if FEcTexto<>'' then
   //   RFC:=FecTexto;
    Alias:=SacarAliasEntidad(Entidad.Alias_Entidad);
    if Entidad.Domicilio_entidad.count>0 then
    begin
      EncuentraPais(Entidad.Domicilio_entidad.Items[0].Pais,IdPais);

      Nacionalidad:=Entidad.Domicilio_entidad.Items[0].Pais;
    end;

    NomC:= Entidad.Primer_Nombre;//No tiene más



    //Guardar en DB()
    InsertaListaXML(Lista.Tipo_Lista,intToStr(Entidad.DataId),NomC,Nacionalidad, RFC,Entidad.Numero_Referencia,
                    Entidad.Un_Tipo_Lista ,Entidad.Comentarios, puesto,Alias,idPais,Fecha );
 end;





end;

procedure TdmListasRestringidas.EliminarRegistrosPrevios(TipoLista:String);
var cant:integer;
begin
  if TipoLista ='LPB' then
    TipoLista:='4'
  else //deberia ser ONG //Vrificar o buscar
    TipoLista:= '8';
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Delete From ListasRestringidas where IdOrganismo='+TipoLista);
  Cant:=ADOQryAuxiliar.ExecSQL;
  ShowMessage('Registros eliminados '+ inttostr(cant));



end;
Function TdmListasRestringidas.SacaNombre(Individuo:IXMLIndividuo):String;
begin
  REsult:='';
  if (Individuo.Primer_Nombre<>'') and (Individuo.Primer_Nombre<>'na') then
     REsult:= Individuo.Primer_Nombre;
  if (Individuo.Segundo_Nombre<>'') and (Individuo.Segundo_Nombre<>'na')  then
     REsult:= REsult+' '+Individuo.Segundo_Nombre;
  if (Individuo.TErcer_Nombre<>'') and (Individuo.TErcer_Nombre<>'na')  then
     REsult:= REsult+' '+Individuo.TErcer_Nombre;
  if (Individuo.Cuarto_Nombre<>'') and (Individuo.cuarto_Nombre<>'na')  then
     REsult:= REsult+' '+Individuo.Cuarto_Nombre;


end;

Function TdmListasRestringidas.InsertaListaXML(TipoL, Ident,Nombre, Nacionalidad,RFC,NoIden,Depend, Comentario, Puesto, Alias:String;IdPais:Integer; fechaNac:TDateTime):Boolean; //Jul 18/18
const
      TxtSQL='INSERT INTO ListasRestringidas (IdOrganismo ,IdPais,IdEstatus,Identificador,Nombre,Alias '+
              ',RFC,NoIdentificacion,Dependencia,Puesto,Funciones,Comentarios,Nacionalidad';
      txTFecha=' ,FechaNacimiento';
      TxTValue=' VALUES(:IdOrganismo ,:IdPais ,:IdEstatus,:Identificador ,:Nombre,:Alias,:RFC ,:NoIdentificacion '+
               ' ,:Dependencia ,:Puesto,:Funciones,:Comentarios,:Nacionalidad';
      TxtVAlFec=',:FechaNacimiento';

var idOrg:integer;
begin
  if TipoL ='LPB' then
  begin
    IdOrg:=4;
    Nacionalidad:='Mexicana';
    IdPais:=  148;
  end
  else //deberia ser ONG //Vrificar o buscar
    IDOrg:= 8;

  AdoInsertaRegistro.sql.Clear;
  AdoInsertaRegistro.sql.Add(TxTSQL);
  if FEchaNac>0 then
    AdoInsertaRegistro.sql.Add(txTFecha);
  AdoInsertaRegistro.sql.Add(')');

   AdoInsertaRegistro.sql.Add(TxTVAlue);
  if FEchaNac>0 then
    AdoInsertaRegistro.sql.Add(txTValFec);
  AdoInsertaRegistro.sql.Add(')');

 //AdodsMaster.Insert;
  AdoInsertaRegistro.Parameters.ParamByName('IdOrganismo').value:=idOrg;
  AdoInsertaRegistro.Parameters.ParamByName('Identificador').value:= ReducirTexto(Ident,60);
  AdoInsertaRegistro.Parameters.ParamByName('Nombre').value :=ReducirTexto(Nombre,500);
 // verificar si tienen datos
  AdoInsertaRegistro.Parameters.ParamByName('NoIdentificacion').value :=ReducirTexto( Noiden,30);
  AdoInsertaRegistro.Parameters.ParamByName('Nacionalidad').value :=ReducirTexto(Nacionalidad,250);
  AdoInsertaRegistro.Parameters.ParamByName('RFC').value :=ReducirTexto(RFC,50);
  AdoInsertaRegistro.Parameters.ParamByName('Dependencia').value :=ReducirTexto(Depend,250);

  AdoInsertaRegistro.Parameters.ParamByName('Puesto').value := ReducirTexto(Puesto,150);
  AdoInsertaRegistro.Parameters.ParamByName('Alias').value :=ReducirTexto(alias,255);
  AdoInsertaRegistro.Parameters.ParamByName('Comentarios').value :=ReducirTexto(Comentario,500);

  AdoInsertaRegistro.Parameters.ParamByName('IdPais').value :=idpais; //Ver si aqune tenga otro valor en nacionalidad se coloca 0 ene ste
  if FEchaNac>0 then
    AdoInsertaRegistro.Parameters.ParamByName('FechaNacimiento').value :=fechaNac ;//Verificar como se valida que tenga valor válido
  AdoInsertaRegistro.execSql;



end;

function TdmListasRestringidas.ReducirTexto(textoOrigen:String; TamCampo:Integer):String;   //Jul 18/18

begin
  if length(TExtoOrigen)>TamCampo  then
    TExtoOrigen:=Copy(TExtoOrigen, 1,TAmCampo);
  REsult:=TextoOrigen;
end;

procedure TdmListasRestringidas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TfrmListasRestringidas.Create(Self);
  gGridForm.DataSet := adodsMaster;
  // Busqueda
  SQLSelect:= 'select IdListaRestringida, IdOrganismo, IdPais, IdEstatus, Identificador, Nombre, Alias , '
             +'FechaNacimiento, RFC, NoIdentificacion, Dependencia, Puesto, Comentarios, Nacionalidad from ListasRestringidas'; //Modificado
  SQLOrderBy:= 'ORDER BY Nombre ';
  gGridForm.actSearch:= actSearch;
  // Ejecuta filtrado
//  TfrmListasRestringidas(gGridForm).Nombre:= EmptyStr;
//  actSearch.Execute;
end;

function TdmListasRestringidas.SacarAlias(
  ListaAlias: IXMLAlias_IndividuoList): String;
var                              //Jul 17/18
  i:Integer;
begin
  Result:='';
  for i :=0 to ListaAlias.Count-1 do
  begin
    if ListaAlias.Items[i].Nombre_Alias <>''then
      Result:= ListaAlias.Items[i].Nombre_Alias;
  end;
end;


function TdmListasRestringidas.SacarAliasEntidad(
  ListaAlias: IXMLAlias_EntidadList): String;
var                              //Jul 18/18
  i:Integer;
begin
  Result:='';
  for i :=0 to ListaAlias.Count-1 do
  begin
    if ListaAlias.Items[i].Nombre_Alias <>''then
      Result:= ListaAlias.Items[i].Nombre_Alias;
  end;
end;


procedure TdmListasRestringidas.SacarFecha(FechaNac: IXMLFecha_Nac_IndividuoList;
  var FecNac: TDateTime; var Texto: String);  //Jul 17/18
var TexAux, y,m,d:String;
begin
  Texto:='';
  if FechaNac.Count>0 then
  begin
    if (FechaNac.Items[0].Fecha<>'') and (length(FechaNac.Items[0].Fecha)=10)  then  // '1987-09-10'
    begin
      TexAux:=FechaNac.Items[0].Fecha;
      try
       FecNac :=StrToDAte(FechaNac.Items[0].Fecha);
      except
        if (TExAux[5]='-') and (TExAux[8]='-') then
        begin
          y:=Copy(TExAux,1,4);
          m:=Copy(TExAux,6,2);
          d:=Copy(TExAux,9,2);
          try
            FecNac:= StrToDate(d+'/'+m+'/'+y);
          Except
             Texto:=TExAux; //Verificar
          end; //Try
        end; //if
      end; //Try
    end
    else
    if (FechaNac.Items[0].Nota <> '') and (pos('/',FechaNac.Items[0].Nota)>0)then
    begin
      try
        FecNac :=StrToDAte(FechaNac.Items[0].Nota);
      Except
        Texto:= FechaNac.Items[0].Nota ;
      end;
    end
    else
      Texto:= FechaNac.Items[0].Nota ; //Jul 18/18
  end;
end;

function TdmListasRestringidas.SacarNacionalidad(ListaNac: IXMLNacionalidad2;
  var IdPais: Integer): String;
var                                 //Jul 17/18
  i:Integer;
begin
  Result:='';
  IdPais:=0;
  for i :=0 to ListaNac.Count-1 do
  begin
    if  ListaNac.VALUE[i]<>'' then
    begin
      EncuentraPais(ListaNac.VALUE[i],IdPais);
      if REsult<>'' then
        Result:=Result+'|'+ ListaNac.VALUE[i]
      else
        Result:= ListaNac.VALUE[i];
    end;
  end;
end;

procedure TdmListasRestringidas.EncuentraPais(TextoPais:String;var idpaisAct:Integer);
begin                         //Jul 17/18
  if (IDPaisAct=0)  then
  if  (pos('''',TextoPais)=0) then  //Si tiene comillas no lo busca, er como lo guarda
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;                                             //SE quito inicial comodin jul 18/18
    ADOQryAuxiliar.SQL.Add('SElect * from Paises  where Descripcion Like '''+TextoPais+'%''');
    ADOQryAuxiliar.Open;
    if not  ADOQryAuxiliar.eof then
      IdPaisAct:=ADOQryAuxiliar.fieldbyname('IDPais').Asinteger ; //En otro caso se ira en 0 si entro sino con el que entro
  end;
end;

procedure TdmListasRestringidas.SetFilter;
var
  Nombre: String;
begin
  inherited;
  Nombre:= TfrmListasRestringidas(gGridForm).Nombre;
  SQLWhere:= 'WHERE Nombre LIKE ''%' + Nombre + '%''';
end;

end.
