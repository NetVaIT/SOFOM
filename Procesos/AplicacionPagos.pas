unit AplicacionPagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxContainer,
  cxLabel, cxDBLabel, Vcl.StdCtrls, Vcl.Buttons, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Data.Win.ADODB;

type
  TFrmAplicacionPago = class(TForm)
    PnlDatosPago: TPanel;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DSPago: TDataSource;
    dsConCXCPendientes: TDataSource;
    DSAplicacion: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    LblImpAplicaNormal: TLabel;
    cxDBTxtEdtImporteAplicar: TcxDBTextEdit;
    Label9: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    PnlDisponible: TPanel;
    Label1: TLabel;
    cxDBLblDisponible: TcxDBLabel;
    Panel2: TPanel;
    BtBtnAgregar: TBitBtn;
    BtBtnAplicar: TBitBtn;
    Label2: TLabel;
    cxDBLabel5: TcxDBLabel;
    Label5: TLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    tvMasterIdCuentaXCobrarEstatus: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdAnexosAmortizaciones: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterImpuesto: TcxGridDBColumn;
    tvMasterInteres: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterIdCuentaXCobrar: TcxGridDBColumn;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    DSDetallesCXC: TDataSource;
    tvMasterIdEstadoCuenta: TcxGridDBColumn;
    tvMasterSaldoFactoraje: TcxGridDBColumn;
    LblAplicandoFActoraje: TLabel;
    DSAuxiliar: TDataSource;
    DSP_CalcMoratorioNueva: TDataSource;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterSaldoFactorajeCFDI: TcxGridDBColumn;
    LblEtiquetaFacto: TLabel;
    cxDBTxtEdtImporteAplicaFactoraje: TcxDBTextEdit;
    DSDetalleMostrar: TDataSource;
    cxGridDBTableView1IdCuentaXCobrarDetalle: TcxGridDBColumn;
    cxGridDBTableView1IdCuentaXCobrar: TcxGridDBColumn;
    cxGridDBTableView1IdCuentaXCobrarTipo: TcxGridDBColumn;
    cxGridDBTableView1Identificador: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    cxGridDBTableView1Importe: TcxGridDBColumn;
    cxGridDBTableView1PagosAplicados: TcxGridDBColumn;
    cxGridDBTableView1Saldo: TcxGridDBColumn;
    cxGridDBTableView1PagosAplicadosFactoraje: TcxGridDBColumn;
    cxGridDBTableView1SaldoFactoraje: TcxGridDBColumn;
    Label7: TLabel;
    cxDBLabel4: TcxDBLabel;
    tvMasterIdCuentaXCobrarBase: TcxGridDBColumn;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterEsMoratorio: TcxGridDBColumn;
    SpdBtnMostrarDetalleMora: TSpeedButton;
    DSMoratoriosDet: TDataSource;
    SpdBtnActMoraFechaPago: TSpeedButton;
    Label8: TLabel;
    cxDBLabel8: TcxDBLabel;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    SpdBtnAbonoCapital: TSpeedButton;
    DSP_ActTotalCXC: TDataSource;
    procedure BtBtnAplicarClick(Sender: TObject);
    procedure DSAplicacionStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure BtBtnAgregarClick(Sender: TObject);
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SpdBtnMostrarDetalleMoraClick(Sender: TObject);
    procedure dsConCXCPendientesDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure SpdBtnActMoraFechaPagoClick(Sender: TObject);
    procedure dsConCXCPendientesUpdateData(Sender: TObject);
    procedure SpdBtnAbonoCapitalClick(Sender: TObject);
  private
    FActFacturaMora: TBasicAction;
    FActAbonoCApital: TBasicAction;
    function Quitasignos(TextoPesos: String): String;
    function EsCuentaXCobrarAntigua(IdCxCAct, IDPersona, IDAnexo: integer): Boolean;    //Ajuste anexo mar 9/17
    function ActualizaMoratorios(IdCxCAct: integer;FechaPago:TDateTime;var ValorMora:Double; var FechaAct:TDateTime): Boolean;
    function CXCFacturada(IdCxCAct: integer): Boolean;
    procedure SetFActFacturaMora(const Value: TBasicAction);
    function SacarMoraPagado(idCXC: Integer): Double;
    function EsProximoAPagar(IDCXC, idpersonaCliente, IdAnexo: Integer): Boolean;
    function UltimaFechaPagoAplicado(FechaPagoAct: TDateTime;
      IdAnexoAct: Integer): Boolean;
    function SacaFechaMora(IDAnexoAmorAct: Integer): TDAteTime;
    procedure SetFActAbonoCapital(const Value: TBasicAction);
    function FechaSinHora(FechaHora: TDAteTime): TDAteTime;
    { Private declarations }
  public
    { Public declarations }
    EsFactoraje:Boolean;
    property ActFacturaMora : TBasicAction read FActFacturaMora write SetFActFacturaMora;  //Feb 8/17
    property ActAbonoCapital : TBasicAction read FActAbonoCApital write SetFActAbonoCapital;
  end;

var
  FrmAplicacionPago: TFrmAplicacionPago;

implementation

{$R *.dfm}

uses PagosDM, _ConectionDmod, AnexoMoratoriosCon;

procedure TFrmAplicacionPago.BtBtnAgregarClick(Sender: TObject);
begin
  dsAplicacion.DataSet.Insert;

 //DH Abr 17/17 BtBtnAgregar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0)
//DH Abr 17/17        and (DsAplicacion.state =dsBrowse)and (not dsConCXCpendientes.dataset.eof);


end;

procedure TFrmAplicacionPago.BtBtnAplicarClick(Sender: TObject);
var             //FEb 12/17
   valor, aux, Mora, moraPagado:Double;
   f, camposaldo,campoimporte, FolioSerie:String;
   idActual:integer; //Dic14/16
   ActMora, TieneMora, seguir:boolean; //Feb 12/17
   FechaMora:TDAteTime;

  IdAnexoAct:Integer;     //abr 5/17
  FEchaPago:TDateTime;   //abr 5/17

begin
        //Comparar antes de facturar para que el valor no sea mayor que el que se necesita...
  //Verificar si se pone una transaccion  // SE movio aca.feb 14/17 Verificar que cambia && ene 13 /17
  if EsFactoraje then      //Ene 13/17
  begin
    camposaldo:='SaldoFactoraje';
    campoimporte:='ImporteFactoraje';
  end
  else
  begin  //Normal
    camposaldo:='Saldo';
    campoimporte:='Importe';
  end;

  f:= quitasignos(DSAplicacion.DataSet.FieldByName(CampoImporte).ASString); //Copiado para verificar si alcanza para moratorios
  Valor:= StrToFloat(f);
  aux:=strtoFLoat(quitasignos(cxDBLblDisponible.Caption));

  if (Valor <= aux) then //  //SaldoPago  alcanza para pagar el monto indicado en la aplicacion
  begin                                                                //0.001 jun 23/17
    if (valor-dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat>0.01)  then
    begin
      // Esta aplicacndo monto mayor...
      Seguir:=False; //verificara si se le sugiere
    end
    else// Valor a aplicar menor o igual que saldo CXC
    begin  //Solo se informa que es menor..
      if abs(dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat - DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat)>0 then                                          //Abr 17/17
        showMessage('Pago Parcial, valor de diferencia: '+ floattoStrF(dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat - DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat,ffCurrency,10,2));   //Ene 13/17
      Seguir:=True;
    end;
      //
  end
  else
  begin //No alcanza para pagar lo que se dice
    Seguir:=False;
  end;
  if Seguir then
  begin
    //VErifica FEcha Pago respecto a Moratorios. abr 5/17
    IdAnexoAct:= DSPago.DataSet.FieldByName('IdAnexo').AsInteger; // Abr 5/17
    FEchaPago:= FechaSinHora(DSPago.DataSet.FieldByName('FechaPago').AsDAteTime);// abr 17/17

    if not UltimaFechaPagoAplicado(FechaPago,IdAnexoAct)or
       (application.MessageBox('Existen Pagos posteriores aplicados. Esta seguro que va aplicar el importe a la Cuenta x Cobrar ? ',
                            'Confirmación',MB_ICONEXCLAMATION or MB_YESNO)=ID_YES)  then   //abr 5/17 pago anterior a algun aplicado
    begin
      if dsConCXCpendientes.DataSet.FieldByName('EsMoratorio').Asboolean   then
      begin
        FEchaMora:=SacaFechaMora(dsConCXCpendientes.DataSet.FieldByName('IdAnexosAmortizaciones').asInteger);                                                                                                   //No usa factoraje
        if application.MessageBox(PChar('¿Desea pagar la Cuenta XCobrar de moratorios por : '+FloatTostrF(dsConCXCpendientes.DataSet.FieldByName('Saldo').AsFloat,ffCurrency,10,2)
                            +' generados a la fecha:'+dateToSTR(FEchaMora)),    // deberia ser esta pero no es --> dsConCXCpendientes.DataSet.FieldByName('Fecha').AsString) ,
                            'Confirmación',MB_ICONEXCLAMATION or MB_YESNO)=ID_YES  then
        begin
         //Genera FActura
          ActFacturaMora.Execute;
          Seguir :=True;
          TieneMora:=True;   //Es mora y se facturo
        end
        else
          Seguir:=False;
      end
      else
        TieneMora:=False;// No Es mora

    end;
                                                     //  'Importe'  //Ene 13/17
{  //DEben tener valores ya
   f:= quitasignos(DSAplicacion.DataSet.FieldByName(CampoImporte).ASString);  //Ago 15/16
   aux:=strtoFLoat(quitasignos(cxDBLblDisponible.Caption));   //Es el del pago no cambia
    Valor:= StrToFloat(f);//DSAplicacion.DataSet.FieldByName('Importe').ASFloat;//cxDBTxtEdtImporteAplicar.Field.Asfloat;
 }
    FolioSerie:=dsPago.DataSet.FieldByName('SeriePago').AsString+'-'+ dsPago.DataSet.FieldByName('FolioPago').AsString;
    inherited;

    if not Seguir then
      ShowMessage('Proceso cancelado por alguna de las siguietes razones: '+#13
                 +'1. Cancelacion por Pagos posteriores'+#13
                 +'2. El valor a aplicar no debe ser mayor que el valor de la CXC '+#13
                 +'3. Canceló pago de moratorios.')
    else
    begin
      if Valor > 0 then
      begin            //Sobraria   and Seguir
        if (TieneMora)or //FEb 14/17 Para evitar q pregunte si es moratorios  moratorios  ya que debe aplicarlos
            (Application.MessageBox(pChar('Esta seguro de aplicar el importe '+FloatTostrF(DSAplicacion.DataSet.FieldByName(CampoImporte).ASFloat,ffCurrency,10,2) //Abr 17/17
                                 +' al documento '+FolioSerie +' ?'),'Confirmación',MB_YESNO)=IDYES) then
        begin
          try
            _dmConection.ADOConnection.BeginTrans; //Feb 14/17
            with DSAplicacion.DataSet do
            begin
              fieldbyName('IdCuentaXCobrar').AsInteger:=dsConCXCpendientes.dataset.FieldByName('IdCuentaXCobrar').AsInteger;
              fieldbyName('IDPersonacliente').AsInteger:=dsConCXCpendientes.dataset.FieldByName('IDPersona').AsInteger;
              post;
              // Proceso de Actualizaciones internas puede ser en el after post de la tabla deAplicaciones

            end;
            _dmConection.ADOConnection.CommitTrans;  //Feb 14/17
            ShowMessage('Operacion completa');
          except
            _dmConection.ADOConnection.RollbackTrans; //Feb 14/17
            ShowMessage('Operacion cancelada por errores');
          end;
          idActual:= dsConCXCpendientes.dataset.FieldByName('IdCuentaXCobrar').AsInteger; //Dic 14/16
          dsConCXCpendientes.DataSet.Close;
          dsConCXCpendientes.DataSet.Open;

          dsConCXCpendientes.dataset.Locate('IdCuentaXCobrar', idActual,[]); //Dic 14/16

          dsPago.dataset.Refresh;

          //Abr 17/17
          if (dsPago.dataset.Fieldbyname('Saldo').AsExtended>0) then     //Queda saldo
          begin
            if (not dsConCXCpendientes.DataSet.eof) then   //Tiene CXC pendeintes
              DSAplicacion.DataSet.Insert // ahi se coloca el dato de importe posible de pago
            else
            begin
              SpdBtnAbonoCapital.Enabled:=(dsPago.dataset.Fieldbyname('Saldo').AsExtended>0); //Habilitar boton para abono a Capital.
             // SpdBtnAbonoCapital.Action:= FActAbonoCApital; //Para ver si lo deja usar?? abr 19/17
            end;
          end;
        end;
      end
      else                                                                                                           //Ene 13/17 'Importe'                                                  'Saldo'
        ShowMessage('No se puede aplicar un valor de 0');
      //showmessage(quitasignos (cxDBLblDisponible.Caption) ); //Ago 15/16
      BtBtnAplicar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0) and (DSAplicacion.DataSet.state =dsInsert);
   //DH Abr 17/17   BtBtnAgregar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0) and (DsAplicacion.state =dsBrowse)and (not dsConCXCpendientes.dataset.eof);
      cxDBTxtEdtImporteAplicar.Enabled:= (DSAplicacion.DataSet.state =dsInsert);//Ago 15/16

    {   }
    end;// del seguir opor si se require facturar Moratorios //Feb 12/17
  end
  else
  begin //Monto mayor.   //Abr 7/17
    ShowMessage('Verifique el monto a Aplicar!!... ') ;
  end;
end;

function TFrmAplicacionPago.SacaFechaMora(IDAnexoAmorAct:Integer):TDAteTime; //Abr6/17
begin
  result:=0;
  dsAuxiliar.DataSet.Close;

  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select FechaMoratorio from AnexosAmortizaciones where idAnexoAmortizacion = ' + intTostr(IDAnexoAmorAct) );
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof and  (not dsAuxiliar.dataset.fieldbyname('FEchaMoratorio').isnull) then
  begin
    REsult:=   dsAuxiliar.dataset.fieldbyname('FEchaMoratorio').asdatetime; //Siempre deberia entrar
  end;
end;

function TFrmAplicacionPago.SacarMoraPagado(idCXC:Integer):Double;
begin                                                  //Feb 16/17
  Result:=0;
  dsAuxiliar.DataSet.Close;

  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select cxcd.*, cxcT.EsMoratorios, cxct.esiva from CuentasXCobrarDetalle cxcd, ' +
                                        'CuentasXCobrarTiposConceptos cxcT where CXCD.IdCuentaXCobrarTipo=cxcT.IdCuentaXCobrarTipo '+
                                        'and cxct.EsMoratorios =1 and ESIVA =0 and idCuentaXCobrar= '+intTostr(idcxc) );
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof then
    Result:=  dsAuxiliar.dataset.fieldbyname('PagosAplicados').AsFloat; //DEbe ser igual que el saldo  //Solo a nivel concepto sin IVA

end;


function TFrmAplicacionPago.EsCuentaXCobrarAntigua(IdCxCAct, IDPersona, IDAnexo:integer):Boolean;     //FEb 7/16    //Mar 9/17 Ajuste Anexo
begin       //Sin uso abr /17
  Result:=FAlse;
  dsAuxiliar.dataset.close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select idcuentaXcobrar, Fecha, FechaVencimiento, sAldo, idpersona from CuentasXCobrar where Saldo >0 '+
                                        ' and IdPersona='+intToSTR(IDPErsona)+' and IdAnexo = '+intToSTR(IDAnexo)+' Order by FechaVencimiento '); //FV Abr 11/17
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof then
  begin
    Result:= IdCxCAct= dsAuxiliar.dataset.Fieldbyname('IdCuentaXCobrar').asinteger;
  end;
  dsAuxiliar.dataset.close;

end;
//Verificar si tendra moratorios para mandar facturar moratorios
function TFrmAplicacionPago.ActualizaMoratorios(IdCxCAct:integer;FechaPago:TDateTime; var ValorMora:Double; var FechaAct:TDateTime):Boolean;
var               //FEb 7/17    //DEjdo de usar abr 6/17
   MoratorioAct:Double;
   Faux:TDate;
begin
  Result:=FAlse;
  MoratorioAct:=0;
  dsAuxiliar.dataset.close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;

  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select Moratorio,MoratorioImpuesto,CXC.Saldo from AnexosAmortizaciones AA, CuentasXCobrar CXC '
                                       +' where CXC.IdAnexosAmortizaciones=AA.IdAnexoAmortizacion and CXC.idcuentaXCobrar='+inttoSTR(IdCxCAct));

  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof then
  begin
    MoratorioAct:= dsAuxiliar.dataset.Fieldbyname('Moratorio').asFloat;
  end;

(*  TADOStoredProc(DSP_CalcMoratorio.DataSet).Parameters.ParamByName('@IdCuentaXCobrar').value:=  IdCxCAct;
  TADOStoredProc(DSP_CalcMoratorio.DataSet).Parameters.ParamByName('@Fecha').value:=  FechaPago;          //CAmbiar solo fecha

  TADOStoredProc(DSP_CalcMoratorio.DataSet).ExecProc;   *)


  dsAuxiliar.dataset.close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;

  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select Moratorio,MoratorioImpuesto,CXC.Saldo, FechaMoratorio from AnexosAmortizaciones AA, CuentasXCobrar CXC '
                                       +' where CXC.IdAnexosAmortizaciones=AA.IdAnexoAmortizacion and CXC.idcuentaXCobrar='+inttoSTR(IdCxCAct));

  dsAuxiliar.dataset.Open;

  ValorMora:= dsAuxiliar.dataset.Fieldbyname('Moratorio').asFloat;
  FechaAct:= dsAuxiliar.dataset.Fieldbyname('FechaMoratorio').asDAteTime; //Feb 12/17
  Result:= dsAuxiliar.dataset.Fieldbyname('Moratorio').asFloat<> MoratorioAct; //Se actualizó


  dsAuxiliar.dataset.close;


end;

 //Verifica que este facturada la parte correspondiente , si se selecciona minimo deberia estar Programada??
function TFrmAplicacionPago.CXCFacturada(IdCxCAct:integer):Boolean;  //FEb 7/17
begin
  dsAuxiliar.dataset.close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;

  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select * from CFDI CI, CuentasXCobrar CO'
  +' where Co.IdCuentaXcobrar='+inttoSTR(IdCxCAct) +' and CI.idcuentaXCobrar='+inttoSTR(IdCxCAct)
  +' and Co.IdCFDI=Ci.IdCFDI');  // mar 30/17   Normal

  dsAuxiliar.dataset.Open;
  Result:=not dsAuxiliar.dataset.Eof;  //Existe y está al menos prefacturada..  //feb 10/17

end;




function TFrmAplicacionPago.Quitasignos(TextoPesos:String):String;//Ago 15/16
var 
  i:integer;
begin
  while pos('$',TextoPesos)>0 do
  begin
    i:= pos('$',TextoPesos);
    DElete(TextoPesos,i,1);
  end;  
  while pos(',',TextoPesos)>0 do
  begin
    i:= pos(',',TextoPesos);
    DElete(TextoPesos,i,1);
  end;
  Result:= TextoPesos;
end;

procedure TFrmAplicacionPago.SetFActAbonoCapital(const Value: TBasicAction);
begin
  FActAbonoCApital := Value;
  //SpdBtnAbonoCapital.Action:=value;
end;

procedure TFrmAplicacionPago.SetFActFacturaMora(const Value: TBasicAction);
begin
  FActFacturaMora := Value;

end;

function  TFrmAplicacionPago.UltimaFechaPagoAplicado(FechaPagoAct:TDateTime; IdAnexoAct:Integer):Boolean;   //Abr 5/17
begin
  //Verificar Si Fecha Pago
  DSAuxiliar.DataSet.Close;         //Aca truena

  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add(' select Pa.FechaAplicacion, Pa.Importe as impAplicado,P.IdPersonaCliente ,'+
                                         'P.IdAnexo,P.FechaPago, P.Importe PagoImp ,P.saldo SaldoImp '
                                         +' from Pagos P , PagosAplicaciones PA where Pa.IdPago =P.IdPago and  P.IdAnexo ='+intToSTr(IdAnexoAct)
                                         +' and FechaPago>:FEchaPago ');


  TADOQuery(dsAuxiliar.dataset).Parameters.ParamByName('FechaPago').VAlue:=  FEchaPagoAct;
  TADOQuery(dsAuxiliar.dataset).Open;


  result:= not TADOQuery(dsAuxiliar.dataset).eof; //Hay alguna posterior
end;

function TFrmAplicacionPago.FechaSinHora( FechaHora:TDAteTime):TDAteTime;
var
  d,m,a:Word;
begin
  Decodedate(FechaHora, a,m, d);
  Result:=EncodeDAte(a,m,d);
end;

procedure TFrmAplicacionPago.SpdBtnAbonoCapitalClick(Sender: TObject);
begin
  ActAbonoCapital.Execute;
end;

procedure TFrmAplicacionPago.SpdBtnActMoraFechaPagoClick(Sender: TObject);
var
  IdAnexoAct,idActual:Integer;
  FEchaPago:TDateTime;

begin
  IdAnexoAct:= DSPago.DataSet.FieldByName('IdAnexo').AsInteger; // Abr 5/17
  FEchaPago:= FechaSinHora(DSPago.DataSet.FieldByName('FechaPago').AsDAteTime);// Abr 5/17  //Ajuste Abr 18/17

  if UltimaFechaPagoAplicado(FechaPago,IdAnexoAct) then
  begin
    ShowMessage('Fecha de Pago actual es anterior a fechas de Pago aplicadas para ese anexo. No se hará recálculo de moratorios. ');
  end
  else
  begin

    TADOStoredProc(DSP_CalcMoratorioNueva.DataSet).Parameters.ParamByName('@IdAnexo').value:=  IdAnexoAct;
    TADOStoredProc(DSP_CalcMoratorioNueva.DataSet).Parameters.ParamByName('@Fecha').value:=  FechaPago;          //CAmbiar solo fecha

    TADOStoredProc(DSP_CalcMoratorioNueva.DataSet).ExecProc;
      //Abr 17/17 Actualiza Totales de CXC para que actualice mnto vencido en anexo
      //May 22/17
    TADOStoredProc(DSP_ActTotalCXC.DataSet).Parameters.ParamByName('@IdCuentaXCobrar').Value:=  DSConCXCPendientes.DataSet.FieldByName('IDCuentaXCobrar').asinteger;        //May 22/17
    TADOStoredProc(DSP_ActTotalCXC.DataSet).ExecProc;



  //HAsta aca
 //Calcula moratorios a FechaPago
 //Abr 6/17.
    idActual:= dsConCXCpendientes.dataset.FieldByName('IdCuentaXCobrar').AsInteger;
    dsConCXCpendientes.DataSet.Close;
    dsConCXCpendientes.DataSet.Open;

    dsConCXCpendientes.dataset.Locate('IdCuentaXCobrar', idActual,[]);


  end;
end;

procedure TFrmAplicacionPago.SpdBtnMostrarDetalleMoraClick(Sender: TObject);
var
  FrmAnexoMoratoriosDetalle:TFrmAnexoMoratoriosDetalle;   //Mar 31/17

begin
  FrmAnexoMoratoriosDetalle:=TFrmAnexoMoratoriosDetalle.Create(self);
  FrmAnexoMoratoriosDetalle.DataSource.dataset:=dsMoratoriosDet.dataset;
  FrmAnexoMoratoriosDetalle.DataSource.dataset.Open;
  FrmAnexoMoratoriosDetalle.PnlClose.Visible:=True;
  FrmAnexoMoratoriosDetalle.ShowModal;
  FrmAnexoMoratoriosDetalle.Free;

end;

procedure TFrmAplicacionPago.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);

begin
  if dsAplicacion.state = dsInsert then  //Feb 10/17
  begin
    if EsFActoraje then
    begin
      if dsConCxCPendientes.DataSet.FieldByName('SaldoDocumento').AsExtended<=dspago.DataSet.FieldByName('Saldo').AsExtended  then
        dsAplicacion.DataSet.FieldByName('ImporteFactoraje').value:=dsConCxCPendientes.DataSet.FieldByName('SaldoDocumento').AsExtended  //DEbe ser el de la Factura
      else
        dsAplicacion.DataSet.FieldByName('ImporteFactoraje').Value:=dspago.DataSet.FieldByName('Saldo').AsExtended;
    end
    else
    begin
      if dsConCxCPendientes.DataSet.FieldByName('Saldo').AsExtended<=dspago.DataSet.FieldByName('Saldo').AsExtended  then
        dsAplicacion.DataSet.FieldByName('Importe').Value:=dsConCxCPendientes.DataSet.FieldByName('Saldo').AsExtended       //value para que lo pase bien  feb 19/17
      else
        dsAplicacion.DataSet.FieldByName('Importe').Value:= dspago.DataSet.FieldByName('Saldo').AsExtended;
    end;
  end;

end;

procedure TFrmAplicacionPago.DSAplicacionStateChange(Sender: TObject);
begin
  if Assigned(dsAplicacion.DataSet) then
    BtBtnAplicar.Enabled:=(dsAplicacion.DataSet.State=dsInsert) and (not dsConCXCpendientes.DataSet.Eof);
end;

procedure TFrmAplicacionPago.dsConCXCPendientesDataChange(Sender: TObject;
  Field: TField);
begin
  SpdBtnMostrarDetalleMora.Enabled:= dsConCXCPendientes.DataSet.FieldByName('EsMoratorio').AsBoolean; //Mar 31/17
  if dsAuxiliar.DataSet<>nil then
    BtBtnAplicar.enabled:= EsProximoAPagar(dsConCXCPendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger,
                                         dsPago.DataSet.FieldByName('IdPersonaCliente').AsInteger,
                                          dsPago.DataSet.FieldByName('IdAnexo').AsInteger );  //Abr 3/17
end;

procedure TFrmAplicacionPago.dsConCXCPendientesUpdateData(Sender: TObject);
begin
  SpdBtnAbonoCapital.Enabled:=(dsConCXCpendientes.DataSet.eof) and(dsPago.dataset.Fieldbyname('Saldo').AsExtended>0); //Habilitar boton para abono a Capital.
  //SpdBtnAbonoCapital.Action:= FActAbonoCApital; //Para ver si lo deja usar?? abr 19/17
end;

function TFrmAplicacionPago.EsProximoAPagar(IDCXC, idpersonaCliente, IdAnexo:Integer):Boolean;  //Abr 3/17
begin
  Result:=False;
  DSAuxiliar.DataSet.Close;

  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select cxc.*, CI.SaldoDocumento, Ci.SaldoFactoraje as SaldoFactorajeCFD from CuentasXCobrar CXC ' +
                                        ' left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI where  Saldo >0 and IDPersona=:IdPersonaCliente '  +
                                        '  and ((IdCuentaXCobrarEstatus=0 and  ESMoratorio=0) or( Esmoratorio=1)) '+
                                        ' and CXC.IDAnexo=:IdAnexo order by CXC.idanexosamortizaciones,EsMoratorio DEsc, CXC.FechaVencimiento ');   //FV abr 11/17 Ajuste
  TADOQuery(dsAuxiliar.dataset).parameters.ParamByName('IDPersonaCliente').Value:= idpersonaCliente;
  TADOQuery(dsAuxiliar.dataset).parameters.ParamByName('IDAnexo').Value:= IdAnexo;
  dsAuxiliar.dataset.Open;

  if not  DSAuxiliar.DataSet.eof then
    Result:= (IDCXC= DSAuxiliar.DataSet.fieldbyname('IdCuentaXCobrar').AsInteger);

end;

procedure TFrmAplicacionPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DSAplicacion.State=dsInsert then
  begin
    if (Application.MessageBox('¿Desea salir sin guardar cambios?','Salir',MB_ICONEXCLAMATION or MB_YESNO)=ID_YES) then
      dsAplicacion.dataset.Cancel
    else
      canClose:=False;
  end;
end;

procedure TFrmAplicacionPago.FormDestroy(Sender: TObject);
begin
  dsAplicacion.DataSet.Close;
  dsConCxCPendientes.DataSet.Close;
end;

procedure TFrmAplicacionPago.FormShow(Sender: TObject);
begin
  BtBtnAplicar.enabled:= EsProximoAPagar(dsConCXCPendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger,
                                         dsPago.DataSet.FieldByName('IdPersonaCliente').AsInteger,
                                          dsPago.DataSet.FieldByName('IdAnexo').AsInteger );  //Abr 3/17


  if dsConCXCPendientes.DataSet.eof then
  begin
    DSAplicacion.DataSet.Close;
    SpdBtnAbonoCapital.Enabled:=(dsConCXCpendientes.DataSet.eof) and(dsPago.dataset.Fieldbyname('Saldo').AsExtended>0); //Habilitar boton para abono a Capital.
//    SpdBtnAbonoCapital.Action:= FActAbonoCApital; //Para ver si lo deja usar?? abr 19/17
  end;
end;

end.
