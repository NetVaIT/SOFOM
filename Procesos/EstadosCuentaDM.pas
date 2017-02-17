unit EstadosCuentaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmEstadosCuenta = class(T_dmStandar)
    AdoDtStEstadoCtaDetalle: TADODataSet;
    DSMaster: TDataSource;
    AdoDtStEstadoCtaDetalleIdEstadoCuentaDetalle: TIntegerField;
    AdoDtStEstadoCtaDetalleIdEstadoCuenta: TIntegerField;
    AdoDtStEstadoCtaDetalleIdContrato: TIntegerField;
    AdoDtStEstadoCtaDetalleIdAnexo: TIntegerField;
    AdoDtStEstadoCtaDetalleIdPago: TIntegerField;
    AdoDtStEstadoCtaDetalleImporte: TFMTBCDField;
    ADODtStDatosCXC: TADODataSet;
    ADODtStDatosPagos: TADODataSet;
    ActActualizaEstadoCta: TAction;
    ADOQryAuxiliar: TADOQuery;
    ADODtStClientes: TADODataSet;
    adodsMasterCliente: TStringField;
    ADODtStClientesIdPersona: TAutoIncField;
    ADODtStClientesIdRolTipo: TIntegerField;
    ADODtStClientesRFC: TStringField;
    ADODtStClientesRazonSocial: TStringField;
    ADODtStClientesIdPersonaEstatus: TIntegerField;
    ADODtStClientesIdentificador: TStringField;
    ADODtStClientesNumCtaPagoCliente: TStringField;
    ADODtStClientesSaldoCliente: TFMTBCDField;
    ADODtStDatosPagosIdPersonaCliente: TIntegerField;
    ADODtStDatosPagosFEchaPago: TDateTimeField;
    ADODtStDatosPagosFolioPago: TIntegerField;
    ADODtStDatosPagosSeriePago: TStringField;
    ADODtStDatosPagosImporte: TFMTBCDField;
    ADODtStDatosPagosIdCuentaXCobrar: TIntegerField;
    ADODtStDatosPagosAplicado: TFMTBCDField;
    ADODtStDatosCXCIdPersona: TIntegerField;
    ADODtStDatosCXCFecha: TDateTimeField;
    ADODtStDatosCXCIdAnexo: TIntegerField;
    ADODtStDatosCXCIdCuentaXCobrarDetalle: TAutoIncField;
    ADODtStDatosCXCIdCuentaXCobrar: TIntegerField;
    ADODtStDatosCXCIdCuentaXCobrarTipo: TIntegerField;
    ADODtStDatosCXCIdentificador: TStringField;
    ADODtStDatosCXCDescripcion: TStringField;
    ADODtStDatosCXCImporte: TFMTBCDField;
    ADODtStDatosCXCSaldo: TFMTBCDField;
    ADODtStDatosCXCAcumula: TBooleanField;
    ADODtStDatosCXCAcumulaAQuien: TIntegerField;
    ADODtStDatosCXCBaseIVA: TIntegerField;
    ADODtStDatosCXCEsIVA: TBooleanField;
    ADODtStDatosCXCFase: TIntegerField;
    ADODtStDatosCXCIdTipoContrato: TIntegerField;
    AdoDtStEstadoCtaDetalleConcepto: TStringField;
    AdoDtStEstadoCtaDetalleTipoContrato: TStringField;
    ADODtStDatosCXCIdContrato: TIntegerField;
    ADODtStDatosPagosidpago: TAutoIncField;
    adodsMasterIdEstadoCuenta: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterSaldoInsoluto: TFMTBCDField;
    adodsMasterFechaCorte: TDateTimeField;
    adodsMasterSaldoAnterior: TFMTBCDField;
    adodsMasterSaldoAPagar: TFMTBCDField;
    adodsMasterSaldoVencido: TFMTBCDField;
    ADODtStDatosCXCSaldoFactoraje: TFMTBCDField;
    AdoDtStEstadoCtaDetalleIdCuentaXCobrar: TIntegerField;
    AdoDtStEstadoCtaDetalleIdCuentaXCobrarDetalle: TIntegerField;
    AdoDtStEstadoCtaDetalleFechaMovimiento: TDateTimeField;
    AdoDtStEstadoCtaDetalleTipoMovimiento: TIntegerField;
    ADODtStDatosCXCTipoContrato: TStringField;
    ADODtStDatosPagosOrigenPago: TIntegerField;
    ADODtStDatosCXCSaldoInsoluto: TFMTBCDField;
    ADODtStDatosCXCCapitalCobrado: TFMTBCDField;
    ADODtStDatosCXCtotalCXC: TFMTBCDField;
    procedure ActActualizaEstadoCtaExecute(Sender: TObject);
    procedure AdoDtStEstadoCtaDetalleNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
  private
    

    function VerificaEstadoCta(idPersona: Integer;var IdEstadoCta:Integer; fechaC:TdateTime): Boolean;
    function VerificaDetalle(IdCtaXCobrarDet: Integer; Tipo:Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
   
  
  end;

var
  dmEstadosCuenta: TdmEstadosCuenta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EstadosCuentaForm, EstadosCuentaDetalleForm;

{$R *.dfm}

procedure TdmEstadosCuenta.ActActualizaEstadoCtaExecute(Sender: TObject);
var
  IdEstadoCta:integer;
  FechaCorte: TDAteTime;
begin
  inherited;
  FechaCorte:=TFrmConEstadosCuenta(gGridForm).AFechaCorte; //ene 10/17
  //REcorrer lo que haya de cxc y luego de Pagos e ir revisando que la cuenta IDCXC y el pago no esten registrados
  
  adoDtstDatosCXC.Close;
  adoDtstDatosCXC.Parameters.ParamByName('FechaCorte').Value:= FechaCorte;
  adoDtstDatosCXC.Open; //verificar que no existan en Estado_Cuenta
  while not adoDtstDatosCXC.Eof do
  begin                                                                                 //Va a requerir agregar FEcha, prpceso pendiente por ajuste FActoraje  Ene 12/17
    if not VerificaEstadoCta(adoDtstDatosCXC.FieldByName('IdPersona').asinteger,IdEstadoCta,FechaCorte) then
    begin
     //Crear
      AdoDSMaster.Insert;
      AdoDSMaster.FieldByName('IdPersona').asInteger:=adoDtstDatosCXC.FieldByName('IdPersona').asinteger;
      AdoDSMaster.FieldByName('SaldoInsoluto').asExtended:=ADODtStDatosCXCSaldoInsoluto.AsExtended; // feb 17]/17 verificar como se pasa
       adodsMasterFechaCorte.asdateTime:=ADODtStDatosCXCFecha.AsDateTime; //feb17/17
      //      AdoDSMaster.FieldByName('SaldoInsoluto').AsFloat:= CAlcularSaldoInsoluto(adoDtstDatosCXC.FieldByName('IdPersona').asinteger);
      AdoDSMaster.post;
      IdEstadoCta:= AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;
    end;   //Actualiza??
    if AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger <> IdEstadoCta then
      AdoDSMaster.Locate('IdEstadoCuenta', IdEstadoCta, []);
    if not VerificaDetalle(ADODtStDatosCXCIdCuentaXCobrarDetalle.asInteger, 1)   then
    begin  //Actualizar...                                                //Cargo
      AdoDtStEstadoCtaDetalle.Insert;
      AdoDtStEstadoCtaDetalle.FieldByName('IdEstadoCuenta').AsInteger:=AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;
      AdoDtStEstadoCtaDetalle.FieldByName('IDContrato').AsInteger:=ADODtStDatosCXCIdContrato.AsInteger;      
      AdoDtStEstadoCtaDetalle.FieldByName('IdAnexo').AsInteger:=ADODtStDatosCXCIdAnexo.AsInteger; 
      AdoDtStEstadoCtaDetalle.FieldByName('IdCuentaXCobrar').AsInteger:=ADODtStDatosCXCIdCuentaXCobrar.AsInteger; 
      AdoDtStEstadoCtaDetalle.FieldByName('IdCuentaXCobrarDetalle').AsInteger:=ADODtStDatosCXCIdCuentaXCobrarDetalle.AsInteger; 
      AdoDtStEstadoCtaDetalle.FieldByName('FechaMovimiento').ASDAteTime:=ADODtStDatosCXCFecha.AsDateTime; //FEcha de la CXC (Corte)
      AdoDtStEstadoCtaDetalle.FieldByName('TipoMovimiento').AsInteger:=1; //Cargo
      AdoDtStEstadoCtaDetalle.FieldByName('Importe').AsFloat:=ADODtStDatosCXCImporte.asFloat; // Importe del detalle 
      AdoDtStEstadoCtaDetalle.FieldByName('Concepto').AsString:=ADODtStDatosCXCDescripcion.AsString;
      AdoDtStEstadoCtaDetalle.FieldByName('TipoContrato').AsString:=ADODtStDatosCXCTipoContrato.AsString;
      AdoDtStEstadoCtaDetalle.Post;
    end;
  

    adoDtstDatosCXC.Next;
  end;
  adoDtstDatosPagos.open;
  
  while not adoDtstDatosPagos.Eof do
  begin 
    IdEstadoCta:=-1;
    if not VerificaEstadoCta(adoDtstDatosPagos.FieldByName('IdPersonaCliente').asinteger,IdEstadoCta,fechacorte) then  //Solo hay un estado de cuenta por cliente
    begin
     //Crear    //No deberia crear por aca.. // verificar
      AdoDSMaster.Insert;
      AdoDSMaster.FieldByName('IdPersona').asInteger:=adoDtstDatosPagos.FieldByName('IdPersonaCliente').asinteger;
//      AdoDSMaster.FieldByName('SaldoInsoluto').AsFloat:= CAlcularSaldoInsoluto(adoDtstDatosCXC.FieldByName('IdPersona').asinteger);
      AdoDSMaster.post;
      IdEstadoCta:= AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;
    end; 
    if AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger <> IdEstadoCta then
      AdoDSMaster.Locate('IdEstadoCuenta', IdEstadoCta, []);                                                    //Abono
    if not VerificaDetalle(ADODtStDatosPagosidpago.asInteger, 0)   then
    begin  //Actualizar...
      AdoDtStEstadoCtaDetalle.Insert;

      AdoDtStEstadoCtaDetalle.FieldByName('IDPago').AsInteger:=ADODtStDatosPagosidpago.AsInteger; 
      AdoDtStEstadoCtaDetalle.FieldByName('FechaMovimiento').ASDAteTime:=ADODtStDatosPagosFEchaPago.AsDateTime; //FEcha de la CXC (Corte)
      AdoDtStEstadoCtaDetalle.FieldByName('Importe').AsFloat:=ADODtStDatosPagosImporte.asFloat; // Importe del detalle
      AdoDtStEstadoCtaDetalle.FieldByName('Concepto').AsString:='PAGO: '+ADODtStDatosPagosSeriePago.AsString+'-'+ ADODtStDatosPagosFolioPago.AsString;
      AdoDtStEstadoCtaDetalle.FieldByName('TipoMovimiento').ASInteger:=0;  //Abono
      AdoDtStEstadoCtaDetalle.Post;
    end;
  

    adoDtstDatosPagos.Next;
  end;



  


  //   AdodsMaster.    Tiene Cliente y Saldo Insoluto, que hay qyue actualizar..
//  AdoDtStEstadoCtaDetalle

end;

procedure TdmEstadosCuenta.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStClientes.Open;
end;

procedure TdmEstadosCuenta.AdoDtStEstadoCtaDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;//Verificar id de master
end;

procedure TdmEstadosCuenta.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TFrmConEstadosCuenta.Create(Self);

  gGridForm.DataSet:= adodsMaster;
  TFrmConEstadosCuenta(gGridForm).ActEstadoCta := ActActualizaEstadoCta;

  gFormDeatil1:=TFrmConEstadoCtaDetalle.Create(self);
  gFormDeatil1.DataSet:=AdoDtStEstadoCtaDetalle;
  gFormDeatil1.DataSet.Open;

end;



function TdmEstadosCuenta.VerificaDetalle(IdCtaXCobrarDet:Integer; Tipo:Integer):Boolean;  //Ene 9/17
var 
   CAmpo: String;
begin
  case Tipo of
    0:Campo:='IdPago = ';//Abono
    1:Campo:='IdCuentaXCobrarDEtalle= '//CArgo  
  end;
  ADOQryAuxiliar.Close;                                                
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select * From EstadosCuentaDEtalle where '+Campo + IntToStr(idCtaXCobrarDet));
  ADOQryAuxiliar.Open;
  REsult:=  not ADOQryAuxiliar.eof; 
end;

function TdmEstadosCuenta.VerificaEstadoCta(idPersona:Integer; var IdEstadoCta:Integer; fechaC:TdateTime):Boolean; //Ene 9/16
begin
  IdEstadoCta:=-1; //Porsi no encunetra
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select * From EstadosCuenta where IdPersona='+ IntToStr(idpersona));
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then
     IdEstadoCta:=ADOQryAuxiliar.fieldbyname('IdEstadoCuenta') .asInteger;
  REsult:=  not ADOQryAuxiliar.eof; 
  
end;
end.
