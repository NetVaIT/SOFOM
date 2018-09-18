unit PagosRealesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, system.Math,ProcesosType, dialogs,Controls;

type
  TDMPagosReales = class(T_dmStandar)
    adodsMasterIDPagoReal: TAutoIncField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterReferencia: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdFormaPago33: TIntegerField;
    adodsMasterIdCuentaBancoOrdenante: TIntegerField;
    adodsMasterIdCuentaBancoBeneficiario: TIntegerField;
    adodsMasterCertificado: TStringField;
    adodsMasterCadena: TStringField;
    adodsMasterSello: TStringField;
    adodsBancos: TADODataSet;
    adodsBancosIdBanco: TAutoIncField;
    adodsBancosIdPaisBanco: TIntegerField;
    adodsBancosIdentificador: TStringField;
    adodsBancosNombre: TStringField;
    adodsBancosDescripcion: TStringField;
    adodsBancosSiglas: TStringField;
    adodsPersonas: TADODataSet;
    adodsPersonasIdPersona: TAutoIncField;
    adodsPersonasIdPersonaTipo: TIntegerField;
    adodsPersonasIdRolTipo: TIntegerField;
    adodsPersonasIdRazonSocialTipo: TIntegerField;
    adodsPersonasIdSexo: TIntegerField;
    adodsPersonasIdEstadoCivil: TIntegerField;
    adodsPersonasIdPais: TIntegerField;
    adodsPersonasIdPoblacion: TIntegerField;
    adodsPersonasRFC: TStringField;
    adodsPersonasCURP: TStringField;
    adodsPersonasRazonSocial: TStringField;
    adodsPersonasNombre: TStringField;
    adodsPersonasApellidoPaterno: TStringField;
    adodsPersonasApellidoMaterno: TStringField;
    adodsPersonasIdMetodoPago: TIntegerField;
    adodsPersonasIdPersonaEstatus: TIntegerField;
    adodsPersonasNumCtaPagoCliente: TStringField;
    adodsFormaPago33: TADODataSet;
    adodsCuentasOrdenante: TADODataSet;
    adodsCuentasBeneficiario: TADODataSet;
    adodsCadenaPago: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsMasterMoneda: TStringField;
    adodsMasterFormaPago: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterCliente: TStringField;
    adodsMasterCuentaOrdenante: TStringField;
    adodsMasterCuentaBeneficiario: TStringField;
    ADOdsPagosFragmentos: TADODataSet;
    dsMaster: TDataSource;
    ADOdsPagosFragmentosIdPago: TAutoIncField;
    ADOdsPagosFragmentosIdBanco: TIntegerField;
    ADOdsPagosFragmentosIdPersonaCliente: TIntegerField;
    ADOdsPagosFragmentosIdCuentaBancariaEstadoCuenta: TIntegerField;
    ADOdsPagosFragmentosIdMetodoPago: TIntegerField;
    ADOdsPagosFragmentosIdCFDIFormaPago33: TIntegerField;
    ADOdsPagosFragmentosIdCuentaBancariaOrdenante: TIntegerField;
    ADOdsPagosFragmentosIdCuentaBancariaBeneficiario: TIntegerField;
    ADOdsPagosFragmentosIdCFDITipoCadenaPago: TIntegerField;
    ADOdsPagosFragmentosIdContrato: TIntegerField;
    ADOdsPagosFragmentosIdAnexo: TIntegerField;
    ADOdsPagosFragmentosIdCFDI_NCR: TLargeintField;
    ADOdsPagosFragmentosIdMonedaOrigen: TIntegerField;
    ADOdsPagosFragmentosFechaPago: TDateTimeField;
    ADOdsPagosFragmentosFolioPago: TIntegerField;
    ADOdsPagosFragmentosSeriePago: TStringField;
    ADOdsPagosFragmentosReferencia: TStringField;
    ADOdsPagosFragmentosImporte: TFMTBCDField;
    ADOdsPagosFragmentosSaldo: TFMTBCDField;
    ADOdsPagosFragmentosObservaciones: TStringField;
    ADOdsPagosFragmentosCuentaPago: TStringField;
    ADOdsPagosFragmentosOrigenPago: TIntegerField;
    ADOdsPagosFragmentosEsDeposito: TBooleanField;
    ADOdsPagosFragmentosCertificado: TStringField;
    ADOdsPagosFragmentosCadena: TStringField;
    ADOdsPagosFragmentosIdPagoReal: TIntegerField;
    ADOQryAuxiliar: TADOQuery;
    ADODtStConfiguraciones: TADODataSet;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    adodsMasterIdCFDITipoCadenaPago: TIntegerField;
    adodsMasterTipoCadena: TStringField;
    ADOdsPagosFragmentossello: TStringField;
    actAddCuentaOrdenante: TAction;
    actFragmentarPago: TAction;
    ADOdsPagosFragmentosCliente: TStringField;
    ADOdsPagosFragmentosBanco: TStringField;
    ADOdsPagosFragmentosMonedaOrigen: TStringField;
    adodsMetodoPago: TADODataSet;
    adodsMetodoPagoIdMetodoPago: TIntegerField;
    adodsMetodoPagoIdentificador: TStringField;
    adodsMetodoPagoDescripcion: TStringField;
    adodsMetodoPagoExigeCuenta: TIntegerField;
    ADOdsPagosFragmentosMetodopago: TStringField;
    ADODtStAnexoSeleccion: TADODataSet;
    AutoIncField5: TAutoIncField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField2: TDateTimeField;
    IntegerField13: TIntegerField;
    ADODtStAnexoSeleccionidentificadorCompleto: TStringField;
    adodsMasterEsNotaCredito: TBooleanField;
    adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField;
    adodsMasterIdCFDI_NCR: TLargeintField;
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure actAddCuentaOrdenanteExecute(Sender: TObject);
    procedure actFragmentarPagoExecute(Sender: TObject);
    procedure ADOdsPagosFragmentosBeforeEdit(DataSet: TDataSet);
    procedure ADOdsPagosFragmentosBeforePost(DataSet: TDataSet);
    procedure ADOdsPagosFragmentosAfterPost(DataSet: TDataSet);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
  private
    fvaloract: Double;
    FCFecFin: TDAteTime;
    FSoloDepGar: boolean;
    FCConSaldo: boolean;
    FCUsaFEcha: boolean;
    FCFecIni: TDAteTime;
    FCClienteTxt: String;
    FIdPagoAct: integer;
    function verificaCompleto(idPagoReal, IdPago: Integer; var falta: Double): Boolean;
    function BuscaMetodoPagoAlt(ClaveSAT: string): String;
    function BuscaPagoReal(IdPagoAct: Integer): Integer;
    { Private declarations }
  public
    { Public declarations }
    procedure MostrarFormulario;
    function CrearOActualizarPagoInicial(EsNotaC:Integer):Boolean;//Ago 24/18
    property ValorAct:Double read fvaloract write fvaloract;

         //Para consultas Sep 3/18
     Property CFechaIni:TDAteTime read FCFecIni write FCFecIni;
     Property CFechaFin:TDAteTime read FCFecFin write FCFecFin;
     Property CClienteTxt:String read FCClienteTxt write FCClienteTxt;
     Property CUsaFecha:boolean read FCUsaFEcha write FCUsaFEcha;
     Property CConSaldo:boolean read FCConSaldo write FCConSaldo;
     Property CSoloDepGar:boolean read FSoloDepGar write FSoloDepGar;

     property IdPagoAct:integer read FIdPagoAct write FIdPagoAct; //Sep 06/18
  end;

var
  DMPagosReales: TDMPagosReales;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosRealesForm, PagosFragmentosForm, _ConectionDmod, CuentasBancariasDM,
  PagosFragmentadosEdit;

{$R *.dfm}



procedure TDMPagosReales.actAddCuentaOrdenanteExecute(Sender: TObject);
var               //Copiado ago 24/18
  dmCuentasBancarias: TdmCuentasBancarias;
  Id: Integer;
begin
  inherited;
  dmCuentasBancarias:= TdmCuentasBancarias.Create(nil);
  try
    dmCuentasBancarias.MasterSource := dsMaster;
    dmCuentasBancarias.MasterFields := 'IdPersonaCliente';
    Id:= dmCuentasBancarias.Add;
    if  Id <> 0 then
    begin
      adodsCuentasOrdenante.Requery();
//      adodsMasterDomicilio.RefreshLookupList;
      adodsMasterIdCuentaBancoOrdenante.AsInteger:= Id;
    end;
  finally
    dmCuentasBancarias.Free;
  end;
end;

procedure TDMPagosReales.actFragmentarPagoExecute(Sender: TObject);
begin
  inherited;
  FrmEdtPagosFragmentados:=TFrmEdtPagosFragmentados.Create(self);
  ADODtStAnexoSeleccion.Close;
  ADODtStAnexoSeleccion.Parameters.ParamByName('IDPersona').Value:= ADOdsPagosFragmentos.FieldByName('IdPersonaCliente').AsInteger;
  ADODtStAnexoSeleccion.Open;

  FrmEdtPagosFragmentados.DSAnexos.DataSet:=ADODtStAnexoSeleccion;
  FrmEdtPagosFragmentados.DataSource.DataSet:=ADOdsPagosFragmentos;
  FrmEdtPagosFragmentados.DataSource.DataSet.Edit;
  FrmEdtPagosFragmentados.showmodal;
  FrmEdtPagosFragmentados.free;


    //1.mostrar el pago actual en edicion y permitir modificar el idAnexo   y el Monto, que sea menor o igual.
  //2. Al guardar,  verificar que este completo, si no lo esta crear un pago con el resto, sin colocar anexo aun




  {   //REferencia de TRactopartes

   while not DtSrcOrdenSalItem.dataset.eof do
    begin
    //  DSProductosXEspacio.dataset.close;// desde Ene 29/16
     // TAdoDataset(DSProductosXEspacio.dataset).Parameters.ParamByName('IdProducto').Value:= DtSrcOrdenSalItem.dataset.fieldbyname('IdProducto').asinteger;

      Faltante:=DtSrcOrdenSalItem.dataset.fieldbyname('CantidadDespachada').asFloat;
      if not ExisteCompleto(DtSrcOrdenSalItem.dataset.fieldbyname('IdOrdenSalidaItem').asinteger,Faltante) then
      begin
        if Faltante>0.000001  then
        begin
          //Crear adicional e ingresar
          DSsalidasUbicaciones.dataset.insert;
          DSsalidasUbicaciones.dataset.fieldbyname('IdOrdenSalida').asinteger:= DtSrcOrdenSalItem.dataset.fieldbyname('IdOrdenSalida').asinteger;
          DSsalidasUbicaciones.dataset.fieldbyname('IdOrdenSalidaItem').asinteger:= DtSrcOrdenSalItem.dataset.fieldbyname('IdOrdenSalidaItem').asinteger;
          DSsalidasUbicaciones.dataset.fieldbyname('IdProducto').asinteger:= DtSrcOrdenSalItem.dataset.fieldbyname('idproducto').asInteger;//Oct 28/16;
          DSsalidasUbicaciones.dataset.fieldbyname('Cantidad').ASFloat:= Faltante;
          DSsalidasUbicaciones.dataset.fieldbyname('IdSalidaUbicacionEstatus').asinteger:= 1;//Registrado, cuando el usuario coloque el dato de ProductoEspacio --> En Proceso
  //        DSsalidasUbicaciones.dataset.fieldbyname('IdProductoXEspacio').asinteger:= BuscaProductoDisponible(DtSrcOrdenSalItem.dataset.fieldbyname('IdProducto').asinteger);

          DSsalidasUbicaciones.dataset.post;
        end;
      end;
      DtSrcOrdenSalItem.dataset.next;
    end;

  }


end;

procedure TDMPagosReales.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStConfiguraciones.Open;
end;

procedure TDMPagosReales.adodsMasterAfterPost(DataSet: TDataSet);
var
   ESNotaC:integer;
begin
  inherited;
  //Registro de Pago real, si no existe el pago hijo , crearlo igual.  y solo se puede modificar si el pago hijo es uno solo..., sino ninguno debe cambiar. ago 24/18
   //Solo si no se ha repartido..
   if adodsMasterEsNotaCredito.asboolean then
     EsnotaC:=1
   else
     EsnotaC:=0;

    CrearOActualizarPagoInicial (EsNotaC);



end;

procedure TDMPagosReales.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;                     //Agregado sep 5/18
  if dataset.State in [ dsInsert,dsEdit] then //Si se puede cambiar , ver cuando no..
  begin
    adodsMaster.FieldByName('Saldo').Value:=adodsMaster.FieldByName('Importe').Value;  //Se debe usar value cuando tiene mas de 4 decimales para que no lo redondee.. sino no quedan iguales
    if adodsMasterEsNotaCredito.asboolean  and  adodsMasterIdCFDI_NCR.IsNull then
    begin
      ShowMessage('Debe seleccionar la Nota de Crédito correspondiente');
      abort;
    end;
  end


end;

procedure TDMPagosReales.adodsMasterNewRecord(DataSet: TDataSet);
begin                                      //Copiado parcialmente de Pagos ago 24/18
  inherited;
  DataSet.FieldByName('FechaPago').AsDateTime:=_DmConection.LaFechaActual;
  adodsMasterIdMoneda.Value:= _MONEDAS_ID_PESO_MXN;
end;

procedure TDMPagosReales.ADOdsPagosFragmentosAfterPost(DataSet: TDataSet);
var           //Ago 27/18
  faltante:Double;
  SerieAct:String;
  FolioAct,res:Integer;
begin            //Solo si tiene pago real
  inherited;
  if verificaCompleto(Dataset.FieldByName('IdPagoReal').AsInteger,Dataset.FieldByName('IdPago').AsInteger,faltante ) then
  begin
    //Crear registro con Faltante ...
    SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
    FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
    SerieAct:=SerieAct;
    FolioAct:=FolioAct+1;
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQl.Clear;
    ADOQryAuxiliar.SQL.Add('Insert Into Pagos(idPersonaCliente, IdCFDIFormaPago33,'+
                         //  'IDBanco,IDCuentaBancariaOrdenante ,IDCuentaBancariaBeneficiario, '+
                        //   ' IDCFDITipoCadenaPago,certificado, cadena, sello,  IDMonedaOrigen, ,Referencia, ' +         //  IDMetodoPago,
                           ' FechaPago,SeriePago, FolioPago, Importe, Saldo ,IdPagoReal,IdMetodoPago ) ' +
                                                                                          //ago 31/18
                           ' SElect idPersonaCliente, IdCFDIFormaPago33,'+
                        //   ' IDBanco,IDCuentaBancariaOrdenante,IDCuentaBancariaBeneficiario, '+
                        //   ' IDCFDITipoCadenaPago,certificado, cadena, sello, IDMonedaOrigen ,Referencia,  ' +         //  IDMetodoPago,
                           ' FechaPago,'''+serieAct+''',' + intTostr(FolioAct)  +                                   //ago 31/18
                           ' ,'+FloatToSTR(faltante)+','+FloatToSTR(faltante)+ ',IdPagoReal, IDMetodoPago From Pagos where '+
                           ' IdPago = '+ Dataset.FieldByName('IdPago').AsString );

     // tener en cuenta en registro ADOQryAuxiliar.Parameters.ParamByName('Saldo').value:= simpleRoundto(AdodsMasterImporte.AsFloat,-2);


    Res:= ADOQryAuxiliar.ExecSQL;

    if Res=1 then
    begin
      //Para actualizar folio pago
      ADODtStConfiguraciones.Edit;
      ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
      ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
      ADODtStConfiguraciones.Post;

      ShowMessage('Se creó un pago adicional, con el monto sobrante.');
    end;
  end;
  //Pago Completo
  ADOdsPagosFragmentos.Close;
  ADOdsPagosFragmentos.Open;

end;

function TDMPagosReales.verificaCompleto(idpagoreal,idPago:Integer;var falta:Double):Boolean; //Ago 27/18
begin
  REsult:=False;
  //Sumatoria
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.ADD('Select sum(P.importe) sumaImpPagos ,PR.Importe , (PR.Importe - sum(P.importe)) as diferencia '
  + ' from Pagos P inner join PagosReales PR on PR.idpagoreal=P.IdPagoReal  where P.IdPagoReal='+IntToStr(idpagoreal)
  + ' group by PR.Importe');
  ADOQryAuxiliar.open;
  REsult:= ADOQryAuxiliar.fieldbyname('diferencia').asfloat>0;  ///faltante
  falta:=ADOQryAuxiliar.fieldbyname('diferencia').asfloat;


end;

procedure TDMPagosReales.ADOdsPagosFragmentosBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  ValorAct:=dataset.FieldByName('Importe').asfloat;

end;

procedure TDMPagosReales.ADOdsPagosFragmentosBeforePost(DataSet: TDataSet);
begin
  inherited;

  if dataset.FieldByName('Importe').AsFloat >VAlorAct then
  begin
    showMessage('No es posible poner un valor mayor');
    abort;
  end;
end;

function TDMPagosReales.CrearOActualizarPagoInicial(
  EsNotaC: Integer): Boolean;
var
  serieAct, NotaC:String;
  FolioAct, REs, cant:integer;
  Esnuevo:Boolean;
begin
  if EsnotaC=1 then
     NotaC :='0'
  else
    if adodsMasterIdFormaPago33.IsNull then
       NotaC:='NULL' // no debería
    else
    begin
      if adodsMasterIdFormaPago33.asinteger <10 then
        NotaC:='0'+  adodsMasterIdFormaPago33.asstring
      else
         NotaC:= adodsMasterIdFormaPago33.asstring; //Coincide con la Clave
      NotaC:=BuscaMetodoPagoAlt(NotaC);      //Probar
    end;

  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQl.Clear;
  ADOQryAuxiliar.SQL.Add(' SElect * from Pagos where idpagoREal= '+adodsMasterIDPagoReal.AsString);
  ADOQryAuxiliar.open;
  Cant:= ADOQryAuxiliar.RecordCount;
  Esnuevo:=ADOQryAuxiliar.FieldByName('importe').AsFloat =ADOQryAuxiliar.FieldByName('saldo').AsFloat ;
  if ADOQryAuxiliar.eof then //No esxiste
  begin
    SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
    FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
    SerieAct:=SerieAct;
    FolioAct:=FolioAct+1;
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQl.Clear;
    ADOQryAuxiliar.SQL.Add(' If not Exists (SElect * from Pagos where idpagoREal= '+adodsMasterIDPagoReal.AsString+')' +
                           ' Insert Into Pagos(idPersonaCliente,IdCFDIFormaPago33,IDBanco,'+  //SEp 6/18 se agrego banco
                        //   '  IDCuentaBancariaOrdenante ,IDCuentaBancariaBeneficiario, '+
                        //   ' IDCFDITipoCadenaPago,certificado, cadena, sello,  ' +         //  IDMetodoPago,
                           '  IDMonedaOrigen,Referencia, FechaPago, SeriePago, FolioPago,Importe, Saldo ,IdPagoReal, IdMetodoPago, IdCFDI_NCR ) ' +
                             //SEp 6/18 se agrego moneda y referencia
                           ' SElect idPersonaCliente, IdFormaPago33,IDBanco,'+
                   //        ' IDCuentaBancoOrdenante,IDCuentaBancoBeneficiario, '+
                  //         ' IDCFDITipoCadenaPago,certificado, cadena, sello, ' +         //  IDMetodoPago,
                           '  IDMoneda,Referencia,FechaPago, '''+serieAct+''',' + intTostr(FolioAct)  +
                           ' ,Importe, Saldo ,IdPagoReal,'+NotaC+ ',IdCFDI_NCR From PagosReales where '+
                           ' IdPagoREal = '+ adodsMasterIDPagoReal.AsString );

     // tener en cuenta en registro ADOQryAuxiliar.Parameters.ParamByName('Saldo').value:= simpleRoundto(AdodsMasterImporte.AsFloat,-2);


    Res:= ADOQryAuxiliar.ExecSQL;

    if Res=1 then
    begin
       REsult:=True;
      //Para actualizar folio pago
      ADODtStConfiguraciones.Edit;
      ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
      ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
      ADODtStConfiguraciones.Post;

      ShowMessage('Complemente el Pago Inicial con la información del Anexo para permitir su aplicación.');
    end;
  end
  else  //YA existe
  begin            //importe y saldo iguales
    if (Cant=1) and Esnuevo then
    begin
      try
      ADOQryAuxiliar.Edit;
      ADOQryAuxiliar.FieldByName('idPersonaCliente').AsInteger:= adodsMasterIDPersonaCliente.AsInteger;

      if not adodsMasterIdBanco.isnull then  //SE habilitó SEp 6/18
        ADOQryAuxiliar.FieldByName('IDBanco').AsInteger:= adodsMasterIdBanco.AsInteger;
      if not adodsMasterIdFormaPago33.isnull then   //DEberia tener valor Pero que pasa si es nota de credito???
        ADOQryAuxiliar.FieldByName('IdCFDIFormaPago33').AsInteger:= adodsMasterIdFormaPago33.AsInteger;
   (*
      if not adodsMasterIdCuentaBancoOrdenante.isnull then
        ADOQryAuxiliar.FieldByName('IDCuentaBancariaOrdenante').AsInteger:= adodsMasterIdCuentaBancoOrdenante.AsInteger;
      if not adodsMasterIdCuentaBancoBeneficiario.isnull then
        ADOQryAuxiliar.FieldByName('IDCuentaBancariaBeneficiario').AsInteger:= adodsMasterIdCuentaBancoBeneficiario.AsInteger;
      if not adodsMasterIDCFDITipoCadenaPago.isnull then
        ADOQryAuxiliar.FieldByName('IDCFDITipoCadenaPago').AsInteger:= adodsMasterIDCFDITipoCadenaPago.AsInteger;

      if not adodsMastercertificado.isnull then
        ADOQryAuxiliar.FieldByName('certificado').asstring:= adodsMastercertificado.AsString;

      if not adodsMastercadena.isnull then
        ADOQryAuxiliar.FieldByName('cadena').asstring:= adodsMastercadena.asstring;

      if not adodsMastersello.isnull then
        ADOQryAuxiliar.FieldByName('sello').AsString:= adodsMastersello.AsString;
     *)
      ADOQryAuxiliar.FieldByName('IDMonedaOrigen').AsInteger:= adodsMasterIDMoneda.AsInteger;    //SE habilitó SEp 6/18


      ADOQryAuxiliar.FieldByName('FechaPago').Asdatetime:= adodsMasterFechaPago.AsDAtetime;
      if not adodsMasterReferencia.isnull then //HAbilitado
        ADOQryAuxiliar.FieldByName('Referencia').AsString:= adodsMasterReferencia.AsString;   //SE habilitó SEp 6/18

      ADOQryAuxiliar.FieldByName('Importe').AsFloat:= adodsMasterImporte.AsFloat;
      ADOQryAuxiliar.FieldByName('Saldo').AsFloat:= adodsMasterSaldo.AsFloat;

      ADOQryAuxiliar.FieldByName('IdMetodoPago').value:= NotaC;
      if  not adodsMasterIdCFDI_NCR.isnull then
        ADOQryAuxiliar.FieldByName('IDCFDI_NCR').value:= adodsMasterIdCFDI_NCR.asinteger //Ver si requier quitarlo
      else
        ADOQryAuxiliar.FieldByName('IDCFDI_NCR').Clear; //Verficar
      ADOQryAuxiliar.Post;
      REsult:=True;
       ShowMessage('Actualizó Pago inicial');
      except
       ShowMessage('Error actualizando  Pago inicial');
      end;

(*
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQl.Clear;



    ADOQryAuxiliar.SQL.Add(' Update Pagos  SET idPersonaCliente= '+adodsMasterIDPersonaCliente.AsString +
                         ' ,IDBanco=:IDBanco'+ adodsMasterIdBanco.AsString+', IdCFDIFormaPago33= '+adodsMasterIdFormaPago33.AsString +
                         ' ,IDCuentaBancariaOrdenante=:IDCuentaBancariaOrdenante'+ adodsMasterIdCuentaBancoOrdenante.AsString+
                         ' ,IDCuentaBancariaBeneficiario= :IDCuentaBancariaBeneficiario '+ adodsMasterIdCuentaBancoBeneficiario.AsString+
                         ' , IDCFDITipoCadenaPago=:IDCFDITipoCadenaPago'+adodsMasterIdCFDITipoCadenaPago.AsString+' ,certificado= '''+adodsMasterCertificado.AsString+
                         ''' , cadena= '''+adodsMastercadena.AsString+''', sello= '''+adodsMasterSello.AsString+''', IDMonedaOrigen ='+adodsMasterIdMoneda.AsString+
                         ' ,FechaPago=:Fecha, Referencia = '+adodsMasterReferencia.AsString +         //  IDMetodoPago,
                         ' ,Importe= '+adodsMasterimporte.AsString+', Saldo ='+adodsMasterSaldo.AsString+

                         ' where IdPagoREal = '+ adodsMasterIDPagoReal.AsString);
    ADOQryAuxiliar.Parameters.ParamByName('Fecha').Value:= adodsMasterFechaPago.asDateTime;

     Res:= ADOQryAuxiliar.ExecSQL;
     if res=1 then
     begin
       REsult:=True;
       ShowMessage('Actualizo Pago inicial');
     end;*)
    end
    else
       ShowMessage('NDS. No actualiza pago.');

  end;



 ADOdsPagosFragmentos.Close;
 ADOdsPagosFragmentos.Open;

end;

Function TDMPagosReales.BuscaMetodoPagoAlt(ClaveSAT:string):String; //Ago 29/18
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from MetodosPago where ClaveSAT2016='''+ ClaveSAT+'''');
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then
    Result:=ADOQryAuxiliar.fieldbyname('idMetodoPago').AsString
  else
    REsult:='NULL';


end;


procedure TDMPagosReales.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmConPagosReales.Create(Self);
  gGridForm.DataSet:= adodsMaster;

 // TFrmConPagosReales(gGridForm).actFacturarMoratorios:=ActGeneraPrefMoratorios;
  TFrmConPagosReales(gGridForm).actAddCuentaOrdenante := actAddCuentaOrdenante;
  adodsMaster.open;
  ADOdsPagosFragmentos.Open;
  TFrmConPagosReales(gGridForm).actFragmentaPago:=actFragmentarPago;
//  TFrmConPagosReales(gGridForm).PuedeCambiar:= ADOdsPagosFragmentos.RecordCount<=1; //Verificar menor ago 27/18

  TFrmConPagosReales(gGridForm).DSPagosFragmento.DataSet:=ADOdsPagosFragmentos;    //Ago 30/18
  gFormDeatil1:= TfrmFragmentosPagos.Create(Self);
  gFormDeatil1.ReadOnlyGrid := True;
  gFormDeatil1.DataSet:= ADOdsPagosFragmentos;
  TfrmFragmentosPagos(gFormDeatil1).DataPagosFragmentos:= ADOdsPagosFragmentos;
  TfrmFragmentosPagos(gFormDeatil1).DataAnexos:= ADODtStAnexoSeleccion;


end;

procedure TDMPagosReales.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if gGridForm <>nil then
    if ADOdsPagosFragmentos.State<>dsinactive then
       TFrmConPagosReales(gGridForm).PuedeCambiar:= ADOdsPagosFragmentos.RecordCount<=1;
end;

procedure TDMPagosReales.MostrarFormulario;
var
  idPagoRealAct: integer;
  Buscar:Boolean;
begin
  Buscar:=False;
  if idpagoact <>-1 then
  begin
    idPagoRealAct:=BuscaPagoReal(idpagoact);
    Buscar:= idpagoRealact <>-1; //Si es diferente.
  end;
  if Assigned(gGridForm) then
  begin
    //if not UseSearch then OpenDataSet;
    gGridForm.View:= True;
    if Assigned(gFormDeatil1) then
    begin
      TFrmConPagosReales(gGridForm).cFechaIni:= cFechaIni;
      TFrmConPagosReales(gGridForm).cFechaFin:= cFechaFin;
      TFrmConPagosReales(gGridForm).CUsaFecha:= CUsaFecha;
      TFrmConPagosReales(gGridForm).CClienteTxt:= CClienteTxt;
      TFrmConPagosReales(gGridForm).CConSaldo:= CConSaldo;
      TFrmConPagosReales(gGridForm).CSoloDepGar:= CSoloDepGar;

      gGridForm.pnlDetail1.Visible:= True;
      gGridForm.splDetail1.Visible:= True;
      gFormDeatil1.Parent:= gGridForm.pnlDetail1;
      gFormDeatil1.Align:= alClient;
      TFrmConPagosReales(gGridForm).SpdBtnBuscarClick(nil);
      if Buscar then      //Sep 6 /18
      begin
        AdodsMaster.Locate('IdPagoReal',IdPagorealAct,[]);
        ADOdsPagosFragmentos.Locate('IdPago', IdPagoAct,[]);
      end;
      gFormDeatil1.Show;

    end;
    gGridForm.ShowModal;
    cFechaIni:=TFrmConPagosReales(gGridForm).cFechaIni;
    cFechaFin :=  TFrmConPagosReales(gGridForm).cFechaFin;
    CUsaFecha  := TFrmConPagosReales(gGridForm).CUsaFecha;
    CClienteTxt := TFrmConPagosReales(gGridForm).CClienteTxt ;
    CConSaldo := TFrmConPagosReales(gGridForm).CConSaldo ;
    CSoloDepGar  := TFrmConPagosReales(gGridForm).CSoloDepGar;

  end;
end;



function  TDMPagosReales.BuscaPagoReal(IdPagoAct:Integer):Integer;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from Pagos where IDPago='+intTostr(IdPagoAct) );
  ADOQryAuxiliar.Open;
  if (not ADOQryAuxiliar.eof) and not (ADOQryAuxiliar.fieldbyname('IdPagoREal').isnull) then
    Result:=ADOQryAuxiliar.fieldbyname('IdPagoREal').AsInteger
  else
    REsult:=-1;


end;

end.
