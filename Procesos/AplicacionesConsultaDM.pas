unit AplicacionesConsultaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dialogs;

type
  TdmAplicacionesConsulta = class(T_dmStandar)
    ADOQryAuxiliar: TADOQuery;
    adodsMasterFechaAplicacion: TDateTimeField;
    adodsMasterimporte: TFMTBCDField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterNoCuentaXCobrar: TAutoIncField;
    adodsMasterIdPagoAplicacion: TAutoIncField;
    adodsMasterIdPago: TIntegerField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterFechaCXC: TDateTimeField;
    ADODtstAplicacionesInternas: TADODataSet;
    ADODtstAplicacionesInternasIDPagoAplicacionInterna: TIntegerField;
    ADODtstAplicacionesInternasIDPagoAplicacion: TIntegerField;
    ADODtstAplicacionesInternasIdCuentaXCobrarDetalle: TIntegerField;
    ADODtstAplicacionesInternasIDCFDI: TLargeintField;
    ADODtstAplicacionesInternasIDCFDIConcepto: TLargeintField;
    DSMaster: TDataSource;
    ADODtstAplicacionesInternasfechaCXC: TDateTimeField;
    ADODtstAplicacionesInternasItemCXC: TStringField;
    ADODtstAplicacionesInternassaldoCXC: TFMTBCDField;
    ADODtstAplicacionesInternasImportePagado: TFMTBCDField;
    adodsMasterCliente: TStringField;
    adodsMasterIDAnexo: TIntegerField;
    adodsMasterAnexo: TStringField;
    ActAplicaMoratorioInteno: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActAplicaMoratorioIntenoExecute(Sender: TObject);
  private
    function AplicarMoratorioInterno(idCXC: integer;
      ImporteAplicado: Double): Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAplicacionesConsulta: TdmAplicacionesConsulta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AplicacionesConsultaGrid, AplicacionesInternasCon;


{$R *.dfm}

procedure TdmAplicacionesConsulta.DataModuleCreate(Sender: TObject);
begin
  inherited;

   gGridForm:= TfrmConaplicaciones.Create(Self);
 // TfrmConaplicaciones(gGridForm).DSAplicacion.DataSet:=ADODtStAplicacionesPagos;

  gGridForm.DataSet:= adodsMaster;

  TfrmConaplicaciones(gGridForm).ActAplicaMoraInterno:=ActAplicaMoratorioInteno; //Abr 17/17

  gFormDeatil1:=TfrmConAplicacionesInternas.Create(self);
  gFormDeatil1.DataSet:=ADODtstAplicacionesInternas;
  gFormDeatil1.DataSet.Open;

 (* gGridEditForm:= TFrmAplicacionesConsultaInd.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TFrmAplicacionesConsultaInd(gGridEditForm).DSQryAuxiliar.DataSet:=ADOQryAuxiliar; //Jun 1/16  *)
  adodsMaster.open;

end;

procedure TdmAplicacionesConsulta.ActAplicaMoratorioIntenoExecute(
  Sender: TObject);
var
  valor:Double;
begin
  inherited;
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from CuentasXCobrar where IdCuentaXCobrar= '+adodsMasterNoCuentaXCobrar.asstring);
  ADOQryAuxiliar.Open;
  if  ADOQryAuxiliar.Fieldbyname('EsMoratorio').AsBoolean then
  begin
   valor:= AplicarMoratorioInterno(adodsMasterNoCuentaXCobrar.asinteger,adodsMasterimporte.AsExtended);
    ShowMessage('Aplico Moratorios Internos '+ FloatToSTR(valor));
  end
  else
    ShowMessage('No es de Moratorios');
end;

function TdmAplicacionesConsulta.AplicarMoratorioInterno(idCXC:integer; ImporteAplicado:Double):Double; //Abr 17/17    TEmporal solo prueba
var ValAplica:Double;
begin
  //SAca todos los anexos moratotios activos  de la CXC.. y se va pagando hata que se acabe el saldo.
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select *, (Importe + Impuesto -Descuento-ImporteAplicado) as Saldo  from AnexosMoratorios  where IdCuentaXCobrar = '+intToSTR(idCXC)+' and IdAnexoMoratorioEstatus =1 ');
  ADOQryAuxiliar.Open;

  while (not ADOQryAuxiliar.eof) and  (ImporteAplicado>0) do
  begin
    if ADOQryAuxiliar.FieldByName('Saldo').AsExtended>0.0001 then
    begin
      if ImporteAplicado>ADOQryAuxiliar.FieldByName('Saldo').AsExtended then
      begin
        ValAplica:= ADOQryAuxiliar.FieldByName('Saldo').AsExtended;
      end
      else
         ValAplica:=ImporteAplicado;
      ADOQryAuxiliar.Edit;
      ADOQryAuxiliar.FieldByName('ImporteAplicado').AsExtended:= ADOQryAuxiliar.FieldByName('ImporteAplicado').AsExtended+ ValAplica;
      ADOQryAuxiliar.Post;
      ImporteAplicado:=ImporteAplicado- ValAplica;
    end;
    ADOQryAuxiliar.Next;
  end;
  REsult:=ImporteAplicado; //debe ser cero.. no debe quedar nada
end;


end.
