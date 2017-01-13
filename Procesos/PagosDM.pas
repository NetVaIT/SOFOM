unit PagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList,Data.Win.ADODB, math;

type
  TdmPagos = class(T_dmStandar)
    adodsMasterIdPago: TAutoIncField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterReferencia: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterObservaciones: TStringField;
    ADOSPersonas: TADODataSet;
    ADODtStConfiguraciones: TADODataSet;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    ADoDtStBancos: TADODataSet;
    ADoDtStBancosIdBanco: TAutoIncField;
    ADoDtStBancosIdPaisBanco: TIntegerField;
    ADoDtStBancosIdentificador: TStringField;
    ADoDtStBancosNombre: TStringField;
    ADoDtStBancosDescripcion: TStringField;
    ADoDtStBancosSiglas: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterCliente: TStringField;
    ADODtStAplicacionesPagos: TADODataSet;
    ADODtStCXCPendientes: TADODataSet;
    ADODtStCxCDetallePend: TADODataSet;
    DSMaster: TDataSource;
    DSCXCPendientes: TDataSource;
    ADODtStCXCPendientesIdCuentaXCobrar: TAutoIncField;
    ADODtStCXCPendientesIdCuentaXCobrarEstatus: TIntegerField;
    ADODtStCXCPendientesIdPersona: TIntegerField;
    ADODtStCXCPendientesIdAnexosAmortizaciones: TIntegerField;
    ADODtStCXCPendientesIdAnexo: TIntegerField;
    ADODtStCXCPendientesFecha: TDateTimeField;
    ADODtStCXCPendientesImporte: TFMTBCDField;
    ADODtStCXCPendientesImpuesto: TFMTBCDField;
    ADODtStCXCPendientesInteres: TFMTBCDField;
    ADODtStCXCPendientesTotal: TFMTBCDField;
    ADODtStCXCPendientesSaldo: TFMTBCDField;
    ADODtStAplicacionesPagosIdPagoAplicacion: TIntegerField;
    ADODtStAplicacionesPagosIdPago: TIntegerField;
    ADODtStAplicacionesPagosIdCFDI: TLargeintField;
    ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField;
    ADODtStAplicacionesPagosIdCuentaXCobrar: TIntegerField;
    ADODtStAplicacionesPagosFechaAplicacion: TDateTimeField;
    ADODtStAplicacionesPagosImporte: TFMTBCDField;
    ADODtStCxCDetallePendIdCuentaXCobrar: TIntegerField;
    ADODtStCxCDetallePendIdCuentaXCobrarTipo: TIntegerField;
    ADODtStCxCDetallePendIdentificador: TStringField;
    ADODtStCxCDetallePendDescripcion: TStringField;
    ADODtStCxCDetallePendImporte: TFMTBCDField;
    ADODtStCxCDetallePendSaldo: TFMTBCDField;
    ADODtstAplicacionesInternas: TADODataSet;
    DSAplicaciones: TDataSource;
    ADODtStCxCDetallePendacumulaACXC: TAutoIncField;
    ADODtStCxCDetallePendIVAde: TAutoIncField;
    ADODtStCxCDetallePendIdCFDI: TLargeintField;
    ADODtStCxCDetallePendIdCFDIConcepto: TLargeintField;
    ADODtStCxCDetallePendimpconc: TFMTBCDField;
    ADODtStCxCDetallePendFase: TIntegerField;
    ADODtStCxCDetallePendTemporalidad: TStringField;
    ADODtStCxCDetallePendOrdenAplica: TIntegerField;
    ADODtStCxCDetallePendIdTipoContrato: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField;
    ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField;
    ADODtstAplicacionesInternasIDCFDI: TLargeintField;
    ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField;
    ADODtstAplicacionesInternasImporte: TFMTBCDField;
    ADOQryAuxiliar: TADOQuery;
    ADODtStCxCDetallePendIDCFDIIVA: TLargeintField;
    ADODtStSaldoPrioridad1: TADODataSet;
    ADODtStSaldoPrioridad1InteresMasIVA: TFMTBCDField;
    ADODtStCxCDetallePendIdCuentaXCobrarDetalle: TAutoIncField;
    ADODtStConceptoIVA: TADODataSet;
    ADODtStConceptoIVAacumulaACXC: TIntegerField;
    ADODtStConceptoIVAIVAde: TIntegerField;
    ADODtStConceptoIVAIdCFDI: TLargeintField;
    ADODtStConceptoIVAIDCFDIIVA: TLargeintField;
    ADODtStConceptoIVAIdCFDIConcepto: TLargeintField;
    ADODtStConceptoIVAimpconc: TFMTBCDField;
    ADODtStConceptoIVAIdCuentaXCobrar: TIntegerField;
    ADODtStConceptoIVAIdCuentaXCobrarDetalle: TIntegerField;
    ADODtStConceptoIVADescripCXC: TStringField;
    ADODtStConceptoIVAImporte: TFMTBCDField;
    ADODtStConceptoIVASaldo: TFMTBCDField;
    ADODtStConceptoIVAIdCuentaXCobrarTipo: TIntegerField;
    ADODtStConceptoIVAAcumula: TBooleanField;
    ADODtStConceptoIVAAcumulaAQuien: TIntegerField;
    ADODtStConceptoIVABaseIVA: TIntegerField;
    ADODtStConceptoIVAEsIVA: TBooleanField;
    ADODtStConceptoIVADescripTC: TStringField;
    ADODtStConceptoIVAIdTipoContrato: TIntegerField;
    ADODtStConceptoIVATemporalidad: TStringField;
    ADODtStConceptoIVAEstadoCuenta: TBooleanField;
    ADODtStConceptoIVAFacturar: TBooleanField;
    ADODtStConceptoIVAIdentificador: TStringField;
    ADODtStConceptoIVAOrdenAplica: TIntegerField;
    ADODtStConceptoIVAFase: TIntegerField;
    ADODtstMetodoPago: TADODataSet;
    ADODtstMetodoPagoIdMetodoPago: TIntegerField;
    ADODtstMetodoPagoIdentificador: TStringField;
    ADODtstMetodoPagoDescripcion: TStringField;
    ADODtstMetodoPagoExigeCuenta: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterCuentaPago: TStringField;
    adodsMasterMetodoPago: TStringField;
    adodsMasterOrigenPago: TIntegerField;
    ADODtStCXCPendientesIdEstadoCuenta: TIntegerField;
    ADODtStCXCPendientesSaldoFactoraje: TFMTBCDField;
    ADODtStCxCDetallePendSaldoFactoraje: TFMTBCDField;
    ADODtStAplicacionesPagosImporteFactoraje: TFMTBCDField;
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure adodsMasterAfterCancel(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ADODtStAplicacionesPagosNewRecord(DataSet: TDataSet);
    procedure ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);
    procedure ADODtstAplicacionesInternasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    Inserto:Boolean;
    function ActualizaSaldoCliente(IDCFDI, IDPagoRegistro: Integer;
      Importe: Double; operacion: String): Boolean;
    function SacaIDSiAcumula(IdCXCD: integer; var saldoAcum: Double): Integer;
    function VerificarConceptoIVA(idCXC, orden: Integer;
      var SaldoAcum: Double; var IdCXCDet, IDCXCIVADET:Integer): boolean;
  public
    { Public declarations }
  end;

var
  dmPagos: TdmPagos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosForm;

{$R *.dfm}

procedure TdmPagos.adodsMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
  inserto:=False;
end;

procedure TdmPagos.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStAplicacionesPagos.Open;
  ADODtStCXCPendientes.Open;
  ADODtStCxCDetallePend.Open;
  ADODtStConfiguraciones.Open;
  ADoSPersonas.Open;
end;

procedure TdmPagos.adodsMasterAfterPost(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin
  inherited;
  //Verificar si aca

  SerieAct:= adoDSMaster.FieldByName('SeriePago').AsString;
  FolioAct:= adoDSMaster.FieldByName('FolioPago').AsInteger;
  ADODtStConfiguraciones.Edit;
  ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
  ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
  ADODtStConfiguraciones.Post;

end;
procedure TdmPagos.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  Inserto:=dataset.state=dsInsert;
  if dataset.State=dsInsert then
  begin
    adodsMaster.FieldByName('Saldo').AsFloat:=adodsMaster.FieldByName('Importe').AsFloat;
  end;
end;

procedure TdmPagos.adodsMasterNewRecord(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin  //Pagos
  inherited;

  DataSet.FieldByName('FechaPago').AsDateTime:=Now;
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  DataSet.FieldByName('SeriePago').AsString:=SerieAct;
  DataSet.FieldByName('FolioPago').asInteger:=FolioAct+1;



end;

procedure TdmPagos.ADODtstAplicacionesInternasAfterPost(DataSet: TDataSet);
begin
  inherited;
  //Si tiene IDCFDI debe actualizar Saldo Factura..    y tambien actualizar el sldo del detalle    //Dic 12/16
  if not DAtaSEt.FieldByName('IDCFDI').isnull then
  begin
    //Actualiza CFDI
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET SALDODocumento=SALDODocumento - '+DataSet.FieldByName('Importe').AsString
                        +' where IDCFDI='+DAtaSEt.FieldByName('IDCFDI').ASString);
    ADOQryAuxiliar.ExecSQL;
  end;



  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrarDetalle SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
                        +' where IDCuentaXCobrarDetalle='+DAtaSEt.FieldByName('IDCuentaXCobrarDetalle').ASString); //Mod. dic 15/16
  ADOQryAuxiliar.ExecSQL;



end;

function TdmPagos.ActualizaSaldoCliente(IDCFDI,IDPagoRegistro: Integer;Importe :Double;operacion:String): Boolean; //Dic 12/16
var IdDomiciliocliente, IdCliente  :Integer;
begin                  //Veridficar si se deja para sólo FActuras...
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
  ADOQryAuxiliar.ExecSQL;
end;


procedure TdmPagos.ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);
var
  valor,valbaseCXC, porcentaje,ValReg, ValAux, INTMasIVA, porc2, SaldoAcum, porc3, valorMasIva: Double;
  TipoCon, FAct, Fant, IDCFDIAux, OAnt, OAct, IdAcum, ord, idcxcDet, idcxcdetIVA:Integer;
begin

  inherited;   //Posiblemente requiera parametro de orden para filtro..
  Ord:=1; //Dic 15/16
 (* ADODtStSaldoPrioridad1.Close;
  ADODtStSaldoPrioridad1.Parameters.ParamByName('IdCuentaXCobrar').value:= DataSet.FieldByName('IdCuentaXCobrar').AsInteger;
  ADODtStSaldoPrioridad1.Parameters.ParamByName('orden').value:=Ord; //Dic 15/16
  ADODtStSaldoPrioridad1.open;
  if not ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').isnull then
    INTMasIVA := ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').AsFloat
  else
    IntMasIVA:=0;   //Para el tipo 3
   *)


  Valor:=dataset.FieldByName('Importe').AsFloat;
  valbaseCXC:= ADODtStCXCPendientes.fieldbyname ('Saldo').AsFloat;  //VAlor antes de actualizar el saldo
  //Sacar el importe original del CXC para ver el porcentaje..
  porcentaje:= (valor/ValbaseCxC);//SimpleRoundTo(,-4); para ajustar calculo se quito    //*100Verificar si no se multiplica por 100 y se usa directo Dic 11/16   //Pones roundto
  Porc2:=0;


  //Segun el tipo de contrato hacer  separacion
  ValAux:=Valor;  //Para repertirlo en las dos fases //Dic 12/16

  //Armar proceso para  desglosar los pagos  de los detalles  de cxc
  ADODtStCxCDetallePend.Open;      //estan ordenados por orden de aplicacion
  ADODtstAplicacionesInternas.open;


  if not ADODtStCxCDetallePend.Eof then
  begin
    TipoCon :=  ADODtStCxCDetallePendIdTipoContrato.AsInteger;
    Fant:= ADODtStCxCDetallePendFase.AsInteger;
    OAnt:= ADODtStCxCDetallePendOrdenAplica.AsInteger;

    ord:=ADODtStCxCDetallePendOrdenAplica.AsInteger;   //Se movio aca para qusar orden de items
    if VerificarConceptoIVA(DataSet.FieldByName('IdCuentaXCobrar').AsInteger,ord, valorMasIva, idcxcDet, idcxcdetIVA ) then
      INTMasIVA:=valorMasIva
    else
      IntMasIVA:=0;
    if Porcentaje<1 then
    begin
      if (intMASIVA<>0) then
      begin
        if (valor<=intMASIVA) then   //No alcanza para pagar INTERES MASIVA
          Porc2:=(valor/INTMasIVA) //Para ajustar calculo se quito SimpleRoundTo(,-4) Dic 14/16
        else
          Porc2:=0;
      end;
    end;


  end;
  IdAcum:=0;
  while not ADODtStCxCDetallePend.Eof do
  begin

    Fact:= ADODtStCxCDetallePendFase.AsInteger;
    OAct:=ADODtStCxCDetallePendOrdenAplica.AsInteger;
    if (ADODtStCxCDetallePendOrdenAplica.asinteger=-1) and (ADODtStCxCDetallePendIVAde.IsNull) then
    begin
      IdAcum:=SacaIDSiAcumula(ADODtStCxCDetallePendIdCuentaXCobrarDetalle.asinteger, saldoAcum);   //Dic 14/16
      if idAcum<>0 then
        SaldoAcum:=SimpleRoundTo((Saldoacum*Porcentaje),-4); /// es el mismo porcentaje original
    end;
    Case TipoCon of    //Esquema financiero
    1:begin  //CS Simple
                          //Es posible que aca se requiera orden y no fase
        if (Porc2>0) and (OAct=Oant) then
          ValReg:=SimpleRoundTo(ADODtStCxCDetallePendSaldo.AsFloat*Porc2,-4)    //No alcanza ni para pagar el interes y el iva
        else
          ValReg:= ADODtStCxCDetallePendSaldo.AsFloat; //Lo que esta pendiente de pago
        //Posiblemente si cambia de orden hay que sumar los del siguente orden y sacar nuevo porcentaje //Dic 13 /16 verificar

        if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser sólo capital..
           ValReg:=Valor;

        if (valreg<=valor) and (valreg<>0)then  //Dic 13/16 para que no aplique 0
        begin
           //Aplicar interno el valor dferegistro y restar
          ADODtstAplicacionesInternas.Insert;
          ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
          ADODtstAplicacionesInternas.FieldByName('Importe').AsFloat:=valreg;
          //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura

          if (not ADODtStCxCDetallePendIdCFDI.isnull) or (not ADODtStCxCDetallePendIDCFDIIVA.isnull)  then
          begin
            if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas
              IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
            else
              IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
            ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;
            if not ADODtStCxCDetallePendIdCFDIConcepto.isnull then
              ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;

          end;
          ADODtstAplicacionesInternas.Post;
        end;

        Valor:=VAlor-VAlReg ;
         if OAct<>Oant then   //VErificar
        begin
          Oant:=Oact;
         end;
      end;
    2:begin//AFinanciero
        if OAct<>Oant then   //VErificar
        begin
          Oant:=Oact;
          Ord:=Oact;
        (*  ADODtStSaldoPrioridad1.Close;
          ADODtStSaldoPrioridad1.Parameters.ParamByName('IdCuentaXCobrar').value:= DataSet.FieldByName('IdCuentaXCobrar').AsInteger;
          ADODtStSaldoPrioridad1.Parameters.ParamByName('orden').value:=Ord; //Dic 15/16
          ADODtStSaldoPrioridad1.open;
          if not ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').isnull then
            INTMasIVA := ADODtStSaldoPrioridad1.fieldbyname('InteresMasIVA').AsFloat
          else
            IntMasIVA:=0;  *)

          if VerificarConceptoIVA(DataSet.FieldByName('IdCuentaXCobrar').AsInteger,ord, valorMasIva, idcxcDet, idcxcdetIVA ) then   //Dic 16/16
            INTMasIVA:=valorMasIva
          else
            IntMasIVA:=0;
          Porc2:=0;
          if Porcentaje<1 then
          begin
            if (intMASIVA<>0) then
            begin
              if (valor<=intMASIVA) then   //No alcanza para pagar valor MASIVA
                Porc2:=(valor/INTMasIVA) //Para ajustar calculo se quito SimpleRoundTo(,-4) Dic 14/16
              else
                Porc2:=0;
            end;
          end;
        end;
        if (Porc2>0) and (OAct=Oant) then  //desde 1 //Dic 13/16
          ValReg:=SimpleRoundTo(ADODtStCxCDetallePendSaldo.AsFloat*Porc2,-4)    //No alcanza ni para pagar el interes y el iva
        else
        begin

          ValReg:= ADODtStCxCDetallePendSaldo.AsFloat; //Lo que esta pendiente de pago
        end;
         if (porcentaje <1) and (valReg>valor) then  //Ajustar para aplicar lo que queda.. aca  debe ser sólo capital..
           ValReg:=Valor;

        if valreg<=valor then
        begin
           //Aplicar interno el valor dferegistro y restar
          ADODtstAplicacionesInternas.Insert;
          ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
          ADODtstAplicacionesInternas.FieldByName('Importe').AsFloat:=valreg;
          //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
          if (not ADODtStCxCDetallePendIdCFDI.isnull) or (not ADODtStCxCDetallePendIDCFDIIVA.isnull)  then
          begin
            if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas     //Dic 12/16
              IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
            else
              IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
            ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;
            if not ADODtStCxCDetallePendIdCFDIConcepto.isnull then
              ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;

          end;
          ADODtstAplicacionesInternas.Post;
        end;

        Valor:=VAlor-VAlReg ;

        //Se movio al inicio


      end;
    3:begin //APuro

        if FAct<>Fant then
        begin
          Fant:=Fact;
          if IdAcum<>0 then   //Solo cuando cambia de  orden
            Valor:=SaldoAcum  //Ya trae el porcentaje en caso que sea menos
          else
            Valor:=ValAux;  //Para retomar el valor por fase  DIC 13/16

        end;
        //VErificar
        ValReg:= SimpleRoundTo(ADODtStCxCDetallePendSaldo.AsFloat*porcentaje,-4); //Lo que esta pendiente de pago

        if valreg<=valor then //O diferencias minimas
        begin
           //Aplicar interno el valor de registro y restar
          ADODtstAplicacionesInternas.Insert;
          ADODtstAplicacionesInternas.FieldByName('IDCuentaXCobrarDetalle').AsInteger:=ADODtStCxCDetallePendIdCuentaXCobrarDetalle.AsInteger;
          ADODtstAplicacionesInternas.FieldByName('Importe').AsFloat:=valreg;         //Falta actualizar saldos de cxcdetalle
          //Verificar si esta asociado a concepto o se facturo==>Aplicar a Factura
          if (not ADODtStCxCDetallePendIdCFDI.isnull) or (not ADODtStCxCDetallePendIDCFDIIVA.isnull) then
          begin
            if (not ADODtStCxCDetallePendIdCFDI.isnull)  then     //Ajuste para el iva de facturas     //Dic 12/16
              IDCFDIAux:= ADODtStCxCDetallePendIDCFDI.AsInteger
            else
              IDCFDIAux:= ADODtStCxCDetallePendIDCFDIIVA.AsInteger;
            ADODtstAplicacionesInternas.FieldByName('IDCFDI').AsInteger:=IDCFDIAux;

            if (not ADODtStCxCDetallePendIdCFDIConcepto.isnull) then
              ADODtstAplicacionesInternas.FieldByName('IDCFDIConcepto').AsInteger:=ADODtStCxCDetallePendIDCFDIConcepto.AsInteger;

          end;
          ADODtstAplicacionesInternas.Post;
        end;

        Valor:=SimpleRoundTo(VAlor-VAlReg, -4) ;
      end;
    end;
    ADODtStCxCDetallePend.Next;
  end;

    //Actualiza saldos Pago, CXC y Cliente?? //Dic 12/16
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE CuentasXCobrar SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
                        +' where IDCuentaXCobrar='+DAtaSEt.FieldByName('IDCuentaXCobrar').ASString);
  ADOQryAuxiliar.ExecSQL;

  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE Pagos SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
                        +' where IDPago='+DAtaSEt.FieldByName('IDPago').ASString);
  ADOQryAuxiliar.ExecSQL;

  // ActualizaSaldoCliente(DAtaSEt.FieldByName('IDCFDI').ASInteger,DAtaSEt.FieldByName('IDPago').asInteger,DataSet.FieldByName('Importe').AsFloat,'- ' );





  //HAsta aca

//  ADODtStCXCPendientes.Refresh;
//  ADODtStCxCDetallePend.Refresh;
end;

Function TdmPagos.SacaIDSiAcumula( IdCXCD:integer; Var saldoAcum:Double):Integer; //Dic 14/16
begin // Si es Acumulado de otros, regresar el ID del registro
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(SAldo) as SaldoA from vw_CXCParaAplicar where Saldo >0  and AcumulaACXC ='+ inttostr(IdCXCD));
  ADOQryAuxiliar.open;
  if  not ADOQryAuxiliar.Eof then
  begin
    saldoAcum:=   ADOQryAuxiliar.Fieldbyname('SaldoA').AsFloat; //Dbe ser igual al de la CXCD acumulada
    Result:=IdCXCD; //Asegurar que se regrese
  end;

end;

procedure TdmPagos.ADODtStAplicacionesPagosNewRecord(DataSet: TDataSet);
begin                   //Dic 9/16
  inherited;
  ADODtStAplicacionesPagos.FieldByName('FechaAplicacion').asDAteTime:=now;
  ADODtStAplicacionesPagos.FieldByName('IDPago').asInteger:=adodsMaster.Fieldbyname('IDPago').AsInteger;
  ADODtStAplicacionesPagos.FieldByName('Importe').asFLoat:=adodsMaster.FieldByName('Saldo').AsFloat; //Este se debe actualizar

end;

procedure TdmPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
//  if ADODtStCFDIConceptos.CommandText <> EmptyStr then ADODtStCFDIConceptos.Open;
  gGridForm:= TFrmConPagos.Create(Self);
  TFrmConPagos(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;

  gGridForm.DataSet:= adodsMaster;
   TFrmConPagos(gGridForm).dsPersonas.dataset:=adosPersonas;

 //  TfrmFacturasGrid(gGridForm).ActGenerarCFDI := actProcesaFactura;  //Nov29/16
end;


function TdmPagos.VerificarConceptoIVA(idCXC, orden:Integer; var SaldoAcum:Double; var IdCXCDet, IDCXCIVADET:Integer):boolean;
var
  IdREgBase, IdRegIVA:Integer;
begin
  IdREgBase:=-1;
  IdRegIVA:=-1;
  SaldoAcum:=0;
  ADODtStConceptoIVA.Close;
  ADODtStConceptoIVA.Parameters.ParamByName('IdCuentaXCobrar').Value:=IDCXC;
  ADODtStConceptoIVA.Parameters.ParamByName('orden').Value:=orden;
  ADODtStConceptoIVA.Open;
  if (not ADODtStConceptoIVA.eof)  and (ADODtStConceptoIVA.RecordCount=2) then
  begin
    while not ADODtStConceptoIVA.eof do
    begin
      if ADODtStConceptoIVAEsIva.Value then
      begin
        IdRegIVA:= ADODtStConceptoIVAIdCuentaXCobrarDetalle.AsInteger;
        if (IdREgBase=-1) or (IdREgBase =ADODtStConceptoIVAIVAde.AsInteger) then
        begin
          IdREgBase:= ADODtStConceptoIVAIVAde.AsInteger;
          SaldoAcum:=SaldoAcum+ADODtStConceptoIVASaldo.AsFloat;
        end;
      end
      else
        if (IdRegIVA=-1) or (IdREgBase= ADODtStConceptoIVAIdCuentaXCobrarDetalle.AsInteger) then
        begin
          IdREgBase:= ADODtStConceptoIVAIdCuentaXCobrarDetalle.AsInteger;
           SaldoAcum:=SaldoAcum+ADODtStConceptoIVASaldo.AsFloat;
        end;
      ADODtStConceptoIVA.Next;
    end;

  end;
  Result:= (IdREgBase<>-1) and (IdRegIVA<>-1); //
  IdCXCDet:=IdREgBase;
  IDCXCIVADET:= IdRegIVA;

end;

end.
