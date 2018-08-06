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
  cxMaskEdit, cxDropDownEdit, cxCalendar, Data.Win.ADODB, cxCheckBox;

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
    SpdBtnActMoraFechaPago: TSpeedButton;
    Label8: TLabel;
    cxDBLabel8: TcxDBLabel;
    tvMasterFechaVencimiento: TcxGridDBColumn;
    SpdBtnSaldoAFavor: TSpeedButton;
    DSP_ActTotalCXC: TDataSource;
    tvMasterIdAnexoAmortizacion: TcxGridDBColumn;
    cxChckBxCambioconsulta: TcxCheckBox;
    tvMasterserie: TcxGridDBColumn;
    tvMasterfolio: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    adospUpdPagosAplicacionesCFDI: TADOStoredProc;
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
    procedure SpdBtnSaldoAFavorClick(Sender: TObject);
    procedure cxChckBxCambioconsultaClick(Sender: TObject);
  private
    { Private declarations }
    FActFacturaMora: TBasicAction;
    FActAbonoCApital: TBasicAction;
    FActPagoAnticipado: TBasicAction;
    FActCreaFinales: TBasicAction;
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
    procedure RefreshCXCPendientes;
    procedure SetFPagoAnticipado(const Value: TBasicAction);
    procedure SetFCreaFinales(const Value: TBasicAction);
  public
    { Public declarations }
    EsFactoraje:Boolean;
    property ActFacturaMora : TBasicAction read FActFacturaMora write SetFActFacturaMora;  //Feb 8/17
    property ActAbonoCapital : TBasicAction read FActAbonoCApital write SetFActAbonoCapital;
    property ActPagoAnticipado : TBasicAction read FActPagoAnticipado write SetFPagoAnticipado;
    Property ActVerificayCreaFinal:TBasicAction read FActCreaFinales write SetFCreaFinales;   //Oct 3/17
  end;

//var
//  FrmAplicacionPago: TFrmAplicacionPago;

implementation

{$R *.dfm}

uses _ConectionDmod, PagosDM, AnexosMoratoriosDM, SeleccionAplicacionForm;

procedure TFrmAplicacionPago.BtBtnAgregarClick(Sender: TObject);
begin
  dsAplicacion.DataSet.Insert;
 //DH Abr 17/17 BtBtnAgregar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0)
//DH Abr 17/17        and (DsAplicacion.state =dsBrowse)and (not dsConCXCpendientes.dataset.eof);
end;

procedure TFrmAplicacionPago.BtBtnAplicarClick(Sender: TObject);
var             //FEb 12/17
   valor, aux, Mora, moraPagado:Double;
   camposaldo,campoimporte, FolioSerie:String;
//   idActual:integer; //Dic14/16
   ActMora, TieneMora, seguir:boolean; //Feb 12/17
   FechaMora:TDAteTime;
  IdAnexoAct:Integer;     //abr 5/17
  FEchaPago:TDateTime;   //abr 5/17

  procedure ActualizaParcialidadCFDI(IdCFDI: Integer);
  begin
    adospUpdPagosAplicacionesCFDI.Parameters.ParamByName('@IdCFDI').Value := IdCFDI;
    adospUpdPagosAplicacionesCFDI.ExecProc
  end;

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

//  f:= quitasignos(DSAplicacion.DataSet.FieldByName(CampoImporte).ASString); //Copiado para verificar si alcanza para moratorios
//  Valor:= StrToFloat(f);
//  aux:=strtoFLoat(quitasignos(cxDBLblDisponible.Caption));

  Valor:= DSAplicacion.DataSet.FieldByName(CampoImporte).AsFloat;
  aux:= DSPago.DataSet.FieldByName('Saldo').AsFloat;
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
        FEchaMora:=SacaFechaMora(dsConCXCpendientes.DataSet.FieldByName('IdAnexoAmortizacion').asInteger);                                                                                                   //No usa factoraje
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
    begin        //Era 0 Jul 4/17
      if Valor > 0.01 then
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
              fieldbyName('IdCFDI').AsInteger:=dsConCXCpendientes.dataset.FieldByName('IdCFDI').AsInteger;
              post;
              // Proceso de Actualizaciones internas puede ser en el after post de la tabla deAplicaciones
             // VerificaYCreaCXCFinales(adodsMasterIdAnexo.AsInteger); //Oct 2/17 ver si se coloca aca

            end;
            _dmConection.ADOConnection.CommitTrans;  //Feb 14/17
            ActualizaParcialidadCFDI(DSAplicacion.DataSet.FieldByName('IdCFDI').AsInteger);
            ShowMessage('Operacion completa');
          except
            on E: Exception do
            begin
              _dmConection.ADOConnection.RollbackTrans; //Feb 14/17
              ShowMessage('Operacion cancelada por errores: ' + E.Message);
            end;
          end;
          RefreshCXCPendientes; //Aplicacion normal
          dsPago.dataset.Refresh;
          //Abr 17/17                                       //Ajustado Jul 4/17
          if (dsPago.dataset.Fieldbyname('Saldo').AsExtended>0.01) then     //Queda saldo
          begin
            if (not dsConCXCpendientes.DataSet.eof) then   //Tiene CXC pendeintes
              DSAplicacion.DataSet.Insert // ahi se coloca el dato de importe posible de pago
            else
            begin   //CAmbio de nombre                                        //Ajustado Jul 4/17
              SpdBtnSaldoAFavor.Enabled:=(dsPago.dataset.Fieldbyname('Saldo').AsExtended>0.01); //Habilitar boton para abono a Capital.
             // SpdBtnAbonoCapital.Action:= FActAbonoCApital; //Para ver si lo deja usar?? abr 19/17

            end;
          end;
          //Si ya se acabo el saldo del Pago o si Ya no hay mas cuentas XCobrar  Oct 3/17

          if dsConCXCpendientes.DataSet.RecordCount =0 then //Ya no hay mas cuentas XCobrar Oct 3/17
          begin
            ActVerificayCreaFinal.Execute; //Sólo crea CXC y avisa..
          end;




        end;
      end
      else                                                                                                           //Ene 13/17 'Importe'                                                  'Saldo'
        ShowMessage('No se puede aplicar un valor de 0');

      // dsConCXCpendientes.DataSet.RefresH; //Oct 17/17 DA error , pero no se requiere
      //showmessage(quitasignos (cxDBLblDisponible.Caption) ); //Ago 15/16    //Ajustado Jul 4/17
      BtBtnAplicar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0.01) and (DSAplicacion.DataSet.state =dsInsert);
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

procedure TFrmAplicacionPago.RefreshCXCPendientes;    //SE ajusto pero si se usa desde alguna de anticipos se sebe mandar el parametro
var
  IdCuentaXCobrar: Integer;
begin
    IdCuentaXCobrar:= dsConCXCpendientes.Dataset.FieldByName('IdCuentaXCobrar').AsInteger;
    dsConCXCpendientes.DataSet.Close;
    Tadodataset(dsConCXCpendientes.DataSet).Parameters.ParamByName('EsAnti').Value:=0; //Generalmente es 0
    dsConCXCpendientes.DataSet.Open;
    dsConCXCpendientes.Dataset.Locate('IdCuentaXCobrar', IdCuentaXCobrar, []);
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

procedure TFrmAplicacionPago.cxChckBxCambioconsultaClick(Sender: TObject);
begin
  //CAmbiar consulta                                                       //Verifiar lo de los adelantados  -- para poder facturar addelantados
  TAdoDataset(DsconCXCPendientes.DataSet).Close;
  if cxChckBxCambioconsulta.Checked then
  begin
                                                                //Sep 20/17
    TAdoDataset(DsconCXCPendientes.DataSet).commandtext:='Select  CXC.Descripcion,CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrarBase, CXC.IdCuentaXCobrarEstatus, CXC.IdPersona,'
    + 'CXC.IdAnexosAmortizaciones AS IdAnexoAmortizacion, CXC.IdAnexo, CXC.IdEstadoCuenta, CXC.IdCFDI,  CXC.Fecha, CXC.FechaVencimiento, '
    +' CXC.Importe, CXC.Impuesto, CXC.Interes, CXC.Total, CXC.Saldo, CXC.SaldoFactoraje, CXC.EsMoratorio, CI.SaldoDocumento, '
    +' Ci.SaldoFactoraje as SaldoFactorajeCFDI, ci.serie, Ci.folio  from CuentasXCobrar CXC left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI where '
    +' CXC.idanexosamortizaciones is not null and  Saldo >0 and IDPersona=:IdPersonaCliente and '
    +' (((IdCuentaXCobrarEstatus=0 or (IdCuentaXCobrarEstatus=1)) and  ESMoratorio=0) or( Esmoratorio=1) or '  //Ajustado jul 31/17
    +' ((CXC.Fecha<=dbo.GetDateAux() and IdCuentaXCobrarEstatus=-1) and 1=:EsAnti)  or '     //jul 4/17  //Ajustado oct 9/17
    +' (exists (select * from CuentasXCobrarDetalle CXCD where CXCD.descripcion like''%Abono Capital%'' and CXC.IdCuentaXCobrar=CXCD.idcuentaXCobrar )'
    +' and CXC.IdCFDI is null) ) and CXC.IDAnexo=:IdAnexo'           //-- IdCuentaXCobrarEstatus=-1 and puede que esten facturadas
    +'  order by CXC.idanexosamortizaciones,EsMoratorio DEsc, CXC.FechaVencimiento' ;

  end
  else       //  (((IdCuentaXCobrarEstatus=0 or (IdCuentaXCobrarEstatus=1))
  begin
                                                                  //Sep 20/17
    TAdoDataset(DsconCXCPendientes.DataSet).commandtext:='Select  CXC.Descripcion,CXC.IdCuentaXCobrar, CXC.IdCuentaXCobrarBase, CXC.IdCuentaXCobrarEstatus, CXC.IdPersona,'
    + 'CXC.IdAnexosAmortizaciones AS IdAnexoAmortizacion, CXC.IdAnexo, CXC.IdEstadoCuenta, CXC.IdCFDI,  CXC.Fecha, CXC.FechaVencimiento, '
    +' CXC.Importe, CXC.Impuesto, CXC.Interes, CXC.Total, CXC.Saldo, CXC.SaldoFactoraje, CXC.EsMoratorio, CI.SaldoDocumento, '
    +' Ci.SaldoFactoraje as SaldoFactorajeCFDI , ci.serie, Ci.folio from CuentasXCobrar CXC left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI where '
    +' Saldo >0 and IDPersona=:IdPersonaCliente and '
    +' (((IdCuentaXCobrarEstatus=0 or (IdCuentaXCobrarEstatus=1)) and  ESMoratorio=0) or( Esmoratorio=1) or ' //Jul 31/17
  //se quitaron anticipados de aca oct 9/17  +' (CXC.Fecha<dbo.GetDateAux() and IdCuentaXCobrarEstatus=-1) or '     //jul 4/17
    +' ((CXC.Fecha<=dbo.GetDateAux() and IdCuentaXCobrarEstatus=-1) and 1=:EsAnti)  or '     //jul 4/17  //Ajustado oct 9/17
    +' (exists (select * from CuentasXCobrarDetalle CXCD where CXCD.descripcion like''%Abono Capital%'' and CXC.IdCuentaXCobrar=CXCD.idcuentaXCobrar )'
    +' and CXC.IdCFDI is null) ) and CXC.IDAnexo=:IdAnexo'           //-- IdCuentaXCobrarEstatus=-1 and puede que esten facturadas
    +'  order by CXC.idanexosamortizaciones,EsMoratorio DEsc, CXC.FechaVencimiento' ;
  end;   //Verificar si solo salen las que son....ago 22/127
  TAdoDataset(DsconCXCPendientes.DataSet).parameters.parambyname('EsAnti').Value:=0; //Oct 9/17
  TAdoDataset(DsconCXCPendientes.DataSet).open;

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

procedure TFrmAplicacionPago.SetFCreaFinales(const Value: TBasicAction);
begin
  FActCreaFinales := Value;
end;

procedure TFrmAplicacionPago.SetFPagoAnticipado(const Value: TBasicAction);
begin
  FActPagoAnticipado := Value;
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

procedure TFrmAplicacionPago.SpdBtnSaldoAFavorClick(Sender: TObject);
var TipoAp:integer;
begin
  // Seleccion entre pagos anticipados o Abono a Capital
  FrmSeleccionAplicacion:= TFrmSeleccionAplicacion.Create(self);
  FrmSeleccionAplicacion.showmodal;
  TipoAP:=  FrmSeleccionAplicacion.TipoAplica; //Poner valor inicial
  FrmSeleccionAplicacion.Free;
  case tipoAp  of
  1: ActAbonoCapital.Execute;  // deberia ser sólo para los que tienen null en anexoamortizacion  y que no sea opcion de compra()
  2: ActPagoAnticipado.Execute; //Verificar monto  e ir creandoCXC
  end;
  if DSPago.DataSet.FieldByName('saldo').AsFloat<=0.01  then   //Ago 2/17
  begin

    Close;
  end;
end;

procedure TFrmAplicacionPago.SpdBtnActMoraFechaPagoClick(Sender: TObject);
var
  IdAnexoAct: Integer;
  FEchaPago: TDateTime;
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
    RefreshCXCPendientes;
  end;
end;

procedure TFrmAplicacionPago.SpdBtnMostrarDetalleMoraClick(Sender: TObject);
var
  dmAnexosMoratorios: TdmAnexosMoratorios;
  IdCuentaXCobrar: Integer;
begin
  IdCuentaXCobrar:= dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger;
  dmAnexosMoratorios := TdmAnexosMoratorios.CreateWCXC(Self, IdCuentaXCobrar);
  try
    dmAnexosMoratorios.MasterSource := dsConCXCPendientes;
    dmAnexosMoratorios.MasterFields:= 'IdAnexoAmortizacion';
    dmAnexosMoratorios.ShowModule(nil,'');
  finally
    dmAnexosMoratorios.Free;
  end;
  RefreshCXCPendientes;
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
    BtBtnAplicar.Enabled:=(dsAplicacion.DataSet.State=dsInsert) and (not dsConCXCpendientes.DataSet.Eof)
                           and (Not dsConCXCPendientes.DataSet.FieldByName('IdCFDI').IsNULL);
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
begin //CAmbio de Nombre
  SpdBtnSaldoAFavor.Enabled:=(dsConCXCpendientes.DataSet.eof) and(dsPago.dataset.Fieldbyname('Saldo').AsExtended>0); //Habilitar boton para abono a Capital.
  //SpdBtnAbonoCapital.Action:= FActAbonoCApital; //Para ver si lo deja usar?? abr 19/17
end;

function TFrmAplicacionPago.EsProximoAPagar(IDCXC, idpersonaCliente, IdAnexo:Integer):Boolean;  //Abr 3/17
var
   Auxiliar:String;
begin
  Auxiliar :='';
  if cxChckBxCambioconsulta.Checked then       //Jun 30/17
  begin
    Auxiliar :=' and CXC.idanexosamortizaciones is not null  ' ;
  end;


  Result:=False;
  DSAuxiliar.DataSet.Close;

  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select cxc.*, CI.SaldoDocumento, Ci.SaldoFactoraje as SaldoFactorajeCFD from CuentasXCobrar CXC ' +
                                        ' left Join CFDI CI on CI.IdCFDI= CXC.IdCFDI where  Saldo >0 and IDPersona=:IdPersonaCliente '  +
                                            auxiliar +  //Jun 30/17           //Ajustado Jul 31/17
                                        '  and (((IdCuentaXCobrarEstatus=0 or (IdCuentaXCobrarEstatus=1)) and  ESMoratorio=0) or( Esmoratorio=1)) '+
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
    //jun 29/!7 Cambio nombre
    SpdBtnSaldoAFavor.Enabled:=(dsConCXCpendientes.DataSet.eof) and(dsPago.dataset.Fieldbyname('Saldo').AsExtended>0); //Habilitar boton para abono a Capital.
//    SpdBtnAbonoCapital.Action:= FActAbonoCApital; //Para ver si lo deja usar?? abr 19/17
  end;
end;

end.
