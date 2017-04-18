unit EstadosCuentaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, Shellapi, Forms, winapi.windows;
                                //Feb 27 /17 para llamar PDF
type
  TdmEstadosCuenta = class(T_dmStandar)
    AdoDtStEstadoCtaDetalle: TADODataSet;
    DSMaster: TDataSource;
    AdoDtStEstadoCtaDetalleIdEstadoCuentaDetalle: TIntegerField;
    AdoDtStEstadoCtaDetalleIdEstadoCuenta: TIntegerField;
    AdoDtStEstadoCtaDetalleIdContrato: TIntegerField;
    AdoDtStEstadoCtaDetalleIdAnexo: TIntegerField;
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
    ADODtStDatosCXCIdCuentaXCobrar: TIntegerField;
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
    AdoDtStEstadoCtaDetalleIdCuentaXCobrar: TIntegerField;
    AdoDtStEstadoCtaDetalleIdCuentaXCobrarDetalle: TIntegerField;
    AdoDtStEstadoCtaDetalleFechaMovimiento: TDateTimeField;
    AdoDtStEstadoCtaDetalleTipoMovimiento: TIntegerField;
    ADODtStDatosCXCTipoContrato: TStringField;
    ADODtStDatosPagosOrigenPago: TIntegerField;
    ADODtStDatosCXCSaldoInsoluto: TFMTBCDField;
    ADODtStDatosCXCCapitalCobrado: TFMTBCDField;
    ADODtStDatosCXCtotalCXC: TFMTBCDField;
    adodsMasterIdContrato: TIntegerField;
    adodsMasterFechaVencimiento: TDateTimeField;
    ADODtStContratosVig: TADODataSet;
    ADODtStContratosVigIdContrato: TAutoIncField;
    ADODtStContratosVigIdPersona: TIntegerField;
    ADODtStContratosVigIdContratoTipo: TIntegerField;
    ADODtStContratosVigIdContratoEstatus: TIntegerField;
    ADODtStContratosVigIdentificador: TStringField;
    ADODtStContratosVigFecha: TDateTimeField;
    ADODtStContratosVigMontoAutorizado: TBCDField;
    ADODtStContratosVigDiaCorte: TIntegerField;
    ADODtStContratosVigDiaVencimiento: TIntegerField;
    ADODataSet1: TADODataSet;
    ADODtStDetalleCXC: TADODataSet;
    ADODtStDetalleCXCIdCuentaXCobrarDetalle: TAutoIncField;
    ADODtStDetalleCXCIdCuentaXCobrar: TIntegerField;
    ADODtStDetalleCXCIdentificador: TStringField;
    ADODtStDetalleCXCDescripcion: TStringField;
    ADODtStDetalleCXCImporte: TFMTBCDField;
    ADODtStDetalleCXCPagosAplicados: TFMTBCDField;
    ADODtStDetalleCXCSaldo: TFMTBCDField;
    ADODtStDetalleCXCPagosAplicadosFactoraje: TFMTBCDField;
    ADODtStDetalleCXCSaldoFactoraje: TFMTBCDField;
    ADODtStDetalleCXCIdTipoContrato: TIntegerField;
    ADODtStDetalleCXCFacturar: TBooleanField;
    ADODtStDetalleCXCAcumula: TBooleanField;
    ADODtStDetalleCXCAcumulaAQuien: TIntegerField;
    ADODtStDetalleCXCEsIVA: TBooleanField;
    ADODtStDetalleCXCBaseIVA: TIntegerField;
    ADODtStDetalleCXCEstadoCuenta: TBooleanField;
    ADODtStDetalleCXCFase: TIntegerField;
    ADODtStDetalleCXCTemporalidad: TStringField;
    ADODtStDetalleCXCOrdenAplica: TIntegerField;
    ADODtStDetalleCXCBaseMoratorios: TBooleanField;
    ADODtStDetalleCXCEsMoratorios: TBooleanField;
    ADODtStDetalleCXCEsCapital: TBooleanField;
    ADODtStDetalleCXCEsInteres: TBooleanField;
    DSDatosCXC: TDataSource;
    ADODtStDetalleCXCIdCuentaXCobrarTipo: TIntegerField;
    ADODtStDatosCXCidpercontrato: TIntegerField;
    ADODtStDatosPagosIdPagoAplicacion: TAutoIncField;
    AdoDtStEstadoCtaDetalleIdPagoAplicacion: TIntegerField;
    ActPDFEstadoCuenta: TAction;
    ADODtStDatosCXCFechaVencimiento: TDateTimeField;
    procedure ActActualizaEstadoCtaExecute(Sender: TObject);
    procedure AdoDtStEstadoCtaDetalleNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActPDFEstadoCuentaExecute(Sender: TObject);
  private


    function VerificaEstadoCta(idPersona, IDContrato: Integer;var IdEstadoCta:Integer; fechaC:TdateTime): Boolean;
    function VerificaDetalle(IdCtaXCobrarDet: Integer; Tipo:Integer): Boolean;
    function SacaUltimaFechaCorteEC(idcontrato:Integer;var FechaUltCorte:TDAteTime; var SaldoInsoluto:Double):Boolean; //Feb 19/17
    function SacarFechaCorteAct(IdContrato:Integer;FecUltCorteEC:TDateTime):TDAteTime;   //Feb 19/17
    function SacarFechasCorteInicial(IdContrato:Integer;Var FecContrato, FecPrimerCorte:TDateTime):Boolean; //FEb 20/17
    function SacaFechaVencimiento( IdContrato:Integer;FecCorte:TDateTime):TDAteTime;
    function SacarSaldoVencido(IdContrato:Integer;UltFecCorte:TDateTime): Double;
    { Private declarations }
  public
    { Public declarations }


  end;

var
  dmEstadosCuenta: TdmEstadosCuenta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EstadosCuentaForm, EstadosCuentaDetalleForm, PDFEStadoCuentaDM;

{$R *.dfm}

procedure TdmEstadosCuenta.ActActualizaEstadoCtaExecute(Sender: TObject);
var
  IdEstadoCta:integer;
  FechaCorte, UltFecCorteEC: TDAteTime;

  IDContratoAct:Integer; //Feb 19/17
  SaldoAnterior,SaldoAPagar, SaldoAPAgarEdoCta:Double;//Feb 20/17
begin
  inherited;
  //Feb 19/17
  ADODtStContratosVig.Open;

  while not ADODtStContratosVig.eof do
  begin
    SaldoAPagarEdoCta:=0;
    IDContratoAct:= ADODtStContratosVigIdContrato.AsInteger;  //Posiblemente limpiar fecha ultcorte
    if SacaUltimaFechaCorteEC(IDContratoAct, UltFecCorteEC, SaldoAnterior) then
    begin// Existía alguno
      FechaCorte:=SacarFechaCorteAct(IDContratoAct,UltFecCorteEC);   //    , SaldoAnterior
      adoDtstDatosCXC.Close;
      adoDtstDatosCXC.Parameters.ParamByName('IDContrato').Value:=IDContratoAct;
      adoDtstDatosCXC.Parameters.ParamByName('FechaCorteUlt').Value:= UltFecCorteEC+1; //YA quew aunque adenro se le suma no se actualiza feb 28/17
      adoDtstDatosCXC.Parameters.ParamByName('FechaCorte').Value:= FechaCorte;
      adoDtstDatosCXC.Open;

    end
    else // es el primer Estado deCuenta
    begin
      SAldoAnterior:=0;
      SacarFechasCorteInicial(IDContratoAct, UltFecCorteEC,FechaCorte); //Sacar fecha de contrato y primera fecha corte, Feb 20/17
      adoDtstDatosCXC.Close;
      adoDtstDatosCXC.Parameters.ParamByName('IDContrato').Value:=IDContratoAct;
      adoDtstDatosCXC.Parameters.ParamByName('FechaCorteUlt').Value:= UltFecCorteEC; // parte de la del contrato feb 28/17
      adoDtstDatosCXC.Parameters.ParamByName('FechaCorte').value:= FechaCorte;
      adoDtstDatosCXC.Open;
    end;

    if ( not adoDtstDatosCXC.Eof)  then  //Se movio aca
    begin
      if not VerificaEstadoCta(adoDtstDatosCXC.FieldByName('IdPersona').asinteger,
           adoDtstDatosCXC.FieldByName('IdContrato').asinteger,  IdEstadoCta,FechaCorte) then
      begin
        AdoDSMaster.Insert;
        AdoDSMaster.FieldByName('IdPersona').asInteger:=adoDtstDatosCXC.FieldByName('IdPersona').asinteger;
        AdoDSMaster.FieldByName('IdContrato').asInteger:=adoDtstDatosCXC.FieldByName('IdContrato').asinteger;//FEb 19/17
        AdoDSMaster.FieldByName('FechaCorte').asdateTime:=FechaCorte;
        AdoDSMaster.FieldByName('FechaVencimiento').asdateTime:= SacaFechaVencimiento(IDContratoAct,FechaCorte);

        AdoDSMaster.FieldByName('SaldoInsoluto').value:=ADODtStDatosCXCSaldoInsoluto.AsExtended; // feb 17/17 verificar como se pasa
        AdoDSMaster.FieldByName('SaldoAnterior').value:=SAldoAnterior;// CAlcular .AsExtended;
        if saldoanterior =0 then
          AdoDSMaster.FieldByName('SaldoVencido').value:=0 //Feb 27/17 Es el primero //VErificar
        else
          AdoDSMaster.FieldByName('SaldoVencido').value:=SacarSaldoVencido(IDContratoAct,UltFecCorteEC); //Feb 27/17 sacar lo anterior de la ultima
      //  SaldoAPagarEdoCta:=SaldoAPAgarEdoCta +ADODtStDatosCXCtotalCXC.AsExtended;
        AdoDSMaster.post;
        IdEstadoCta:= AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;

      end;
    end;
                                        //Ajustado para que no genere más alla   AND (FechaCorte <(date +2))
    while( not adoDtstDatosCXC.Eof) do
    begin  //Crear
  {    if not VerificaEstadoCta(adoDtstDatosCXC.FieldByName('IdPersona').asinteger,
           adoDtstDatosCXC.FieldByName('IdContrato').asinteger,  IdEstadoCta,FechaCorte) then
      begin
        AdoDSMaster.Insert;
        AdoDSMaster.FieldByName('IdPersona').asInteger:=adoDtstDatosCXC.FieldByName('IdPersona').asinteger;
        AdoDSMaster.FieldByName('IdContrato').asInteger:=adoDtstDatosCXC.FieldByName('IdContrato').asinteger;//FEb 19/17
        AdoDSMaster.FieldByName('FechaCorte').asdateTime:=FechaCorte;
        AdoDSMaster.FieldByName('FechaVencimiento').asdateTime:= SacaFechaVencimiento(IDContratoAct,FechaCorte);

        AdoDSMaster.FieldByName('SaldoInsoluto').value:=ADODtStDatosCXCSaldoInsoluto.AsExtended; // feb 17/17 verificar como se pasa
        AdoDSMaster.FieldByName('SaldoAnterior').value:=SAldoAnterior;// CAlcular .AsExtended;
        if saldoanterior =0 then
          AdoDSMaster.FieldByName('SaldoVencido').value:=0 //Feb 27/17 Es el primero //VErificar
        else
          AdoDSMaster.FieldByName('SaldoVencido').value:=SacarSaldoVencido(IDContratoAct,UltFecCorteEC); //Feb 27/17 sacar lo anterior de la ultima
      //  SaldoAPagarEdoCta:=SaldoAPAgarEdoCta +ADODtStDatosCXCtotalCXC.AsExtended;
        AdoDSMaster.post;
        IdEstadoCta:= AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;   }

        //
        adodtstDEtalleCXC.Open; //Verificar
        while not adodtstDEtalleCXC.eof do
        begin  //Actualizar...                                                //Cargo
          if adodtstDEtalleCXCImporte.asFloat <>0 then //Para evitar registros en cero FEb 27/17
          begin
            AdoDtStEstadoCtaDetalle.Insert;
            AdoDtStEstadoCtaDetalle.FieldByName('IdEstadoCuenta').AsInteger:=AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;
            AdoDtStEstadoCtaDetalle.FieldByName('IDContrato').AsInteger:=ADODtStDatosCXCIdContrato.AsInteger;    //DEsde maestroCXC
            AdoDtStEstadoCtaDetalle.FieldByName('IdAnexo').AsInteger:=ADODtStDatosCXCIdAnexo.AsInteger;  //DEsde maestroCXC
            AdoDtStEstadoCtaDetalle.FieldByName('IdCuentaXCobrar').AsInteger:=adodtstDEtalleCXCIdCuentaXCobrar.AsInteger;
            AdoDtStEstadoCtaDetalle.FieldByName('IdCuentaXCobrarDetalle').AsInteger:=adodtstDEtalleCXCIdCuentaXCobrarDetalle.AsInteger;
            AdoDtStEstadoCtaDetalle.FieldByName('FechaMovimiento').ASDAteTime:=ADODtStDatosCXCFecha.AsDateTime; //FEcha de la CXC (Corte)
            AdoDtStEstadoCtaDetalle.FieldByName('TipoMovimiento').AsInteger:=1; //Cargo
                                                           //Value Feb 19/17
            AdoDtStEstadoCtaDetalle.FieldByName('Importe').Value:=adodtstDEtalleCXCImporte.asFloat; // Importe del detalle
            AdoDtStEstadoCtaDetalle.FieldByName('Concepto').AsString:=adodtstDEtalleCXCDescripcion.AsString;
            AdoDtStEstadoCtaDetalle.FieldByName('TipoContrato').AsString:=ADODtStDatosCXCTipoContrato.AsString;  //DEsde maestroCXC
            AdoDtStEstadoCtaDetalle.Post;
          end;
          adodtstDEtalleCXC.Next;
        end;
        //Aca deben ir pagos porque  va aplicado
        adoDtstDatosPagos.Close;
   ////Debe ser por Cuenta XCobrar  //Movido aca feb 21/17
        adoDtstDatosPagos.Parameters.ParamByName('FechaInicial').Value:=UltFecCorteEC;     //Add FEb 20/17
        adoDtstDatosPagos.Parameters.ParamByName('FechaFin').Value:=FechaCorte+1; //se agrego uno mas pero dentro se puso solo > por las horas mar 8/17
        adoDtstDatosPagos.open;
        while not adoDtstDatosPagos.Eof do
        begin
          if not VerificaDetalle(ADODtStDatosPagosidpagoAplicacion.asInteger, 0)   then //HAbilitado para que no los repita??
          begin  //Actualizar...
            AdoDtStEstadoCtaDetalle.Insert;

            AdoDtStEstadoCtaDetalle.FieldByName('IDPagoAplicacion').AsInteger:=ADODtStDatosPagosIdPagoAplicacion.AsInteger;//Feb 21/17 se va a usar aplicacion ADODtStDatosPagosidpago.AsInteger;
            AdoDtStEstadoCtaDetalle.FieldByName('FechaMovimiento').ASDAteTime:=ADODtStDatosPagosFEchaPago.AsDateTime; //FEcha de la CXC (Corte)
                                                //Value Feb 19/17
            AdoDtStEstadoCtaDetalle.FieldByName('Importe').value:=ADODtStDatosPagosAplicado.asFloat;// feb 21/17 aplicado ADODtStDatosPagosImporte.asFloat; // Importe del detalle
            AdoDtStEstadoCtaDetalle.FieldByName('Concepto').AsString:='PAGO: '+ADODtStDatosPagosSeriePago.AsString+'-'+ ADODtStDatosPagosFolioPago.AsString;
            AdoDtStEstadoCtaDetalle.FieldByName('TipoMovimiento').ASInteger:=0;  //Abono
            AdoDtStEstadoCtaDetalle.Post;
          end;


          adoDtstDatosPagos.Next;
        end;

      //end;    //DEl if de la existencia del EC
      SaldoAPagarEdoCta:=SaldoAPAgarEdoCta +ADODtStDatosCXCtotalCXC.AsExtended;  //Verificar feb 28/17

      ADODtStDatosCXC.Next;

    end; //Fin  while cxc derango fecha
    //Actualizar Saldo APagar EstadoCta
   //Verificar que si  este en la que es
    if (IdEstadoCta<>0) and (IdEstadoCta= AdoDSMaster.FieldByName('IDEstadoCuenta').asinteger) then
    begin
      AdoDSMaster.Edit;
      AdoDSMaster.FieldByName('SaldoAPagar').value:= SaldoAPagarEdoCta;//Feb 21/17  //CAlcularSaldoAPagar(adoDtstDatosCXC.FieldByName('IdPersona').asinteger);
      AdoDSMaster.post;
      IdEstadoCta:=0; //PAra que no reactualice
    end;


    ADODtStContratosVig.Next;
  end;
  ADODtStContratosVig.Close;
  //HAsata aca feb 19/17

  {  //Version anterior deshabilitada FEb 19/17

  FechaCorte:=TFrmConEstadosCuenta(gGridForm).AFechaCorte; //ene 10/17
  //REcorrer lo que haya de cxc y luego de Pagos e ir revisando que la cuenta IDCXC y el pago no esten registrados
  //CAlcular fechas de corte e ir generando  la siguiente

  adoDtstDatosCXC.Close;
  adoDtstDatosCXC.Parameters.ParamByName('FechaCorte').Value:= FechaCorte;
  adoDtstDatosCXC.Open; //verificar que no existan en Estado_Cuenta
  while not adoDtstDatosCXC.Eof do
  begin                                                                                 //Va a requerir agregar FEcha, prpceso pendiente por ajuste FActoraje  Ene 12/17
    if not VerificaEstadoCta(adoDtstDatosCXC.FieldByName('IdPersona').asinteger,
           adoDtstDatosCXC.FieldByName('IdContrato').asinteger,  IdEstadoCta,FechaCorte) then
    begin
     //Crear
      AdoDSMaster.Insert;
      AdoDSMaster.FieldByName('IdPersona').asInteger:=adoDtstDatosCXC.FieldByName('IdPersona').asinteger;
      AdoDSMaster.FieldByName('IdContrato').asInteger:=adoDtstDatosCXC.FieldByName('IdContrato').asinteger;//FEb 19/17
      AdoDSMaster.FieldByName('FechaCorte').asInteger:=FechaCorte;

      AdoDSMaster.FieldByName('SaldoInsoluto').value:=ADODtStDatosCXCSaldoInsoluto.AsExtended; // feb 17/17 verificar como se pasa



      adodsMasterFechaCorte.asdateTime:=FechaCorte;//ADODtStDatosCXCFecha.AsDateTime; //feb17/17
      //      AdoDSMaster.FieldByName('SaldoInsoluto').AsFloat:= CAlcularSaldoInsoluto(adoDtstDatosCXC.FieldByName('IdPersona').asinteger);
      AdoDSMaster.post;
      IdEstadoCta:= AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger;
    end;   //Actualiza??
   // if AdoDSMaster.FieldByName('IdEstadoCuenta').AsInteger <> IdEstadoCta then  //Deshab Feb 19/17
   //   AdoDSMaster.Locate('IdEstadoCuenta', IdEstadoCta, []);
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
                                                     //Value Feb 19/17
      AdoDtStEstadoCtaDetalle.FieldByName('Importe').Value:=ADODtStDatosCXCImporte.asFloat; // Importe del detalle
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
                                          //Value Feb 19/17
      AdoDtStEstadoCtaDetalle.FieldByName('Importe').value:=ADODtStDatosPagosImporte.asFloat; // Importe del detalle
      AdoDtStEstadoCtaDetalle.FieldByName('Concepto').AsString:='PAGO: '+ADODtStDatosPagosSeriePago.AsString+'-'+ ADODtStDatosPagosFolioPago.AsString;
      AdoDtStEstadoCtaDetalle.FieldByName('TipoMovimiento').ASInteger:=0;  //Abono
      AdoDtStEstadoCtaDetalle.Post;
    end;


    adoDtstDatosPagos.Next;
  end;
  }





  //   AdodsMaster.    Tiene Cliente y Saldo Insoluto, que hay qyue actualizar..
//  AdoDtStEstadoCtaDetalle

end;

procedure TdmEstadosCuenta.ActPDFEstadoCuentaExecute(Sender: TObject);
var
  rptEstadoCtaPDF:TdmRepEstadoCta;
  ArchiPDF:TFileName;
  Texto:String;
  FechaCorte:TDAteTime;
  IDEstadoCta:Integer;
begin
  inherited;
  FechaCorte:=adodsMasterFechaCorte.AsDateTime;
  IdEstadoCta:=adodsMasterIdEstadoCuenta.AsInteger;
  TExto:= adodsMasterIdContrato.AsString+'_' +FormatDateTime('mmm-dd-yyyy',fechaCorte);
  ArchiPDF:='EstadoCta_NoCto_'+Texto+'.PDF';
  rptEstadoCtaPDF:= TdmRepEstadoCta.Create(Self);
  try
    TADoDAtaset(rptEstadoCtaPDF.dsReport.DataSet).Parameters.ParamByName('IDEstadoCuenta').Value:= IdEstadoCta;
    rptEstadoCtaPDF.dsReport.DataSet.Open;
    rptEstadoCtaPDF.Title:= ' ESTADO DE CUENTA AL DIA: ' + DateTostr(fechaCorte);
    rptEstadoCtaPDF.PDFFileName:= ArchiPDF;
    rptEstadoCtaPDF.Execute
  finally
    rptEstadoCtaPDF.Free;
  end;
    if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
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
  TFrmConEstadosCuenta(gGridForm).ActPDFEstadoCta:= ActPDFEstadoCuenta; //Feb 27/17

  gFormDeatil1:=TFrmConEstadoCtaDetalle.Create(self);
  gFormDeatil1.DataSet:=AdoDtStEstadoCtaDetalle;
  gFormDeatil1.DataSet.Open;


end;



function TdmEstadosCuenta.SacaFechaVencimiento(IdContrato: Integer;
  FecCorte: TDateTime): TDAteTime;
var dias:integer;
begin

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select DiaVencimiento from Contratos where idcontrato ='+intToStr(IDContrato));
  ADOQryAuxiliar.Open;

  dias:=  ADOQryAuxiliar.FieldByName('DiaVencimiento').asInteger;


  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select dbo.GetFechaDia(:Fecha,:Dias)as FechaVenc ');
  ADOQryAuxiliar.Parameters.ParamByName('Fecha').Value:= FecCorte;
  ADOQryAuxiliar.Parameters.ParamByName('Dias').Value:= Dias;
  ADOQryAuxiliar.Open;

  REsult:= ADOQryAuxiliar.FieldByName('FechaVenc').asDateTime;
end;

function TdmEstadosCuenta.SacarFechaCorteAct(IdContrato: Integer;
  FecUltCorteEC: TDateTime): TDAteTime;
var dias:integer;
begin
  FecUltCorteEC:=FecUltCorteEC+1; //Para que tome desde el siguiente día
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select DiaCorte from Contratos where idcontrato ='+intToStr(IDContrato));
  ADOQryAuxiliar.Open;

  dias:=  ADOQryAuxiliar.FieldByName('DiaCorte').asInteger;


  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select dbo.GetFechaDia(:Fecha,:Dias)as FechaCorte ');
  ADOQryAuxiliar.Parameters.ParamByName('Fecha').Value:= FecUltCorteEC; //TRae ya uno más
  ADOQryAuxiliar.Parameters.ParamByName('Dias').Value:= Dias;
  ADOQryAuxiliar.Open;

  REsult:= ADOQryAuxiliar.FieldByName('FechaCorte').asDateTime;


end;

function TdmEstadosCuenta.SacarFechasCorteInicial(IdContrato: Integer;
  var FecContrato, FecPrimerCorte: TDateTime): Boolean;        //Feb 20/17
var dias:Integer;
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select Fecha,DiaCorte from Contratos where idcontrato ='+intToStr(IDContrato));
  ADOQryAuxiliar.Open;
//Debe existir
  dias:=  ADOQryAuxiliar.FieldByName('DiaCorte').asInteger;
  FecContrato:=  ADOQryAuxiliar.FieldByName('Fecha').asDateTime;

  //Mar 8/17

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select min(Fecha) as Fecha from Anexos where idcontrato ='+intToStr(IDContrato)+' and fecha>=:FechaC');
  ADOQryAuxiliar.Parameters.ParamByName('FechaC').Value:= FecContrato;
  ADOQryAuxiliar.Open;

  FecContrato:= ADOQryAuxiliar.FieldByName('Fecha').asDateTime;  //SEria la del ANEXO


  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select dbo.GetFechaDia(:Fecha,:Dias)as FechaCorte ');
  ADOQryAuxiliar.Parameters.ParamByName('Fecha').Value:= FecContrato;
  ADOQryAuxiliar.Parameters.ParamByName('Dias').Value:= Dias;
  ADOQryAuxiliar.Open;

  FecPrimerCorte:= ADOQryAuxiliar.FieldByName('FechaCorte').asDateTime;
  REsult:=True;
end;

function TdmEstadosCuenta.SacarSaldoVencido(IdContrato: Integer;
  UltFecCorte: TDateTime): Double;
begin
  REsult:=0;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('SElect A.IdContrato,Sum(CXC.Saldo) as SumaVencido from CuentasXCobrar CXC '+
                         ' inner join Anexos A on A.IdAnexo=CXC.IdAnexo '+
                         ' where IdContrato= '+intToStr(idcontrato)+
                         ' and CXC.Saldo>0.001 and CXC.FechaVencimiento <=:Fecha '+  //Para que incluya el día de corte
                         ' group by idcontrato ');     //Abr 11/17 FV

  ADOQryAuxiliar.Parameters.ParamByName('Fecha').Value:=  UltFecCorte;
  ADOQryAuxiliar.Open;
  if (not ADOQryAuxiliar.Eof) and (not ADOQryAuxiliar.FieldByName('SumaVencido').isnull)  then
     REsult:=ADOQryAuxiliar.fieldbyname('SumaVencido').AsExtended;

end;

function TdmEstadosCuenta.SacaUltimaFechaCorteEC(idcontrato: Integer;
  var FechaUltCorte: TDAteTime; var SaldoInsoluto:Double): Boolean;           //Feb 19/17
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select idcontrato, SaldoInsoluto ,max(FechaCorte) as FechaCorteEC  from EstadosCuenta '+
                         ' where IdContrato= '+intToStr(idcontrato)+
                         ' group by idcontrato, SaldoInsoluto ');
  ADOQryAuxiliar.Open;
  if (not ADOQryAuxiliar.Eof) and (not ADOQryAuxiliar.FieldByName('FechaCorteEC').isnull) then
  begin
    FechaUltCorte:=ADOQryAuxiliar.FieldByName('FechaCorteEC').AsDateTime;
    SaldoInsoluto:=ADOQryAuxiliar.FieldByName('SaldoInsoluto').asExtended;
    REsult:=True;
  end;

end;

function TdmEstadosCuenta.VerificaDetalle(IdCtaXCobrarDet:Integer; Tipo:Integer):Boolean;  //Ene 9/17
var
   CAmpo: String;
begin
  case Tipo of
    0:Campo:='IdPagoAplicacion = ';//Abono  //Feb 21 /17 cambio a aplicacion
    1:Campo:='IdCuentaXCobrarDEtalle= '//CArgo
  end;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select * From EstadosCuentaDEtalle where '+Campo + IntToStr(idCtaXCobrarDet));
  ADOQryAuxiliar.Open;
  REsult:=  not ADOQryAuxiliar.eof;
end;

function TdmEstadosCuenta.VerificaEstadoCta(idPersona, IDContrato:Integer; var IdEstadoCta:Integer; fechaC:TdateTime):Boolean; //Ene 9/16
begin
  IdEstadoCta:=-1; //Porsi no encuentra
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.Sql.Add('Select * From EstadosCuenta where IdPersona='+ IntToStr(idpersona)
                       + ' and IdContrato= '+ IntToStr(IDContrato)+ ' and FechaCorte=:FechaCorte ');
  ADOQryAuxiliar.Parameters.ParamByName('FechaCorte').Value:=fechaC;
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then
     IdEstadoCta:=ADOQryAuxiliar.fieldbyname('IdEstadoCuenta') .asInteger;
  REsult:=  not ADOQryAuxiliar.eof;

end;
end.
