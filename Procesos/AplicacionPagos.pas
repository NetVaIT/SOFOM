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
    DSP_CalcMoratorio: TDataSource;
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
  private
    FActFacturaMora: TBasicAction;
    function Quitasignos(TextoPesos: String): String;
    function EsCuentaXCobrarAntigua(IdCxCAct, IDPersona, IDAnexo: integer): Boolean;    //Ajuste anexo mar 9/17
    function ActualizaMoratorios(IdCxCAct: integer;FechaPago:TDateTime;var ValorMora:Double; var FechaAct:TDateTime): Boolean;
    function CXCFacturada(IdCxCAct: integer): Boolean;
    procedure SetFActFacturaMora(const Value: TBasicAction);
    function SacarMoraPagado(idCXC: Integer): Double;
    { Private declarations }
  public
    { Public declarations }
    EsFactoraje:Boolean;
     property ActFacturaMora : TBasicAction read FActFacturaMora write SetFActFacturaMora;  //Feb 8/17
  end;

var
  FrmAplicacionPago: TFrmAplicacionPago;

implementation

{$R *.dfm}

uses PagosDM, _ConectionDmod, AnexoMoratoriosCon;

procedure TFrmAplicacionPago.BtBtnAgregarClick(Sender: TObject);
begin

   BtBtnAgregar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0)
            and (DsAplicacion.state =dsBrowse)and (not dsConCXCpendientes.dataset.eof);
end;

procedure TFrmAplicacionPago.BtBtnAplicarClick(Sender: TObject);
var             //FEb 12/17
   valor, aux, Mora, moraPagado:Double;
   f, camposaldo,campoimporte:String;
   idActual:integer; //Dic14/16
   ActMora, TieneMora, seguir:boolean; //Feb 12/17
   FechaMora:TDAteTime;
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

 //VErificar sai la cuentaX cobrar es la más vieja                                                                                                        //Mar 9/17
  if EsCuentaXCobrarAntigua(dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger,dsPago.DataSet.FieldByName('IDPersonaCliente').asinteger, dsPago.DataSet.FieldByName('IDAnexo').asinteger)
       and CXCFacturada(dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger)   then //Verificar si sobra esta validacion ya que el filtro se hace por prefacturadas para CXC normales
  begin
    //Verificar si tendra moratorios para mandar facturar moratorios
    //Moratorios no aplica para FActoraje
     f:= quitasignos(DSAplicacion.DataSet.FieldByName(CampoImporte).ASString); //Copiado para verificar si alcanza para moratorios
     Valor:= StrToFloat(f);

    if (not esFActoraje) then
    begin
      ActMora:=ActualizaMoratorios(dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger,dsPago.DataSet.FieldByName('FechaPago').asDAtetime, Mora, FechaMora );
      //Identificar cuanto es lo que se ha pagado
      if Mora>0 then  //FEb 16/17
         moraPagado:=SacarMoraPagado(dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger);
      if ActMora then
        showMessage( 'Los moratorios se actualizaron. Fecha: '+ datetimeToSTR(FechaMora)+' Monto:'+FloatToSTR(Mora)+ 'Pendientes de Pago: '+FloatToSTR(Mora-MoraPagado));
      TieneMora:= (Mora-MoraPagado>0) ;
      Seguir:= not TieneMora;
       //Feb 13/17 VErificar si  el monto del pago alcanza al menos para los moratorios.. si no no se puede FActurar
      if (Mora-MoraPagado)>valor then
      begin
        showMessage( 'El monto del Pago no alcanza a cubrir  los moratorios ('+FloatToSTR(Mora-MoraPagado)+')'); //VErificar si luego se puede aca poner ajuste para moratorios.. y  facturar con eses monto.. y el resto ponerlo en pagado.Registrando en PagosAuxiliares
        SEguir:=False;
      end ;
      idActual:= dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsInteger;
      dsConCXCpendientes.DataSet.Refresh;    //Por si cambiaron klos moratorios cambia tambien el saldo
      dsConCXCpendientes.DataSet.locate('IdCuentaXCobrar', idActual,[]);

      if ( DSAplicacion.DataSet.FieldByName(Campoimporte).ASExtended>dsConCXCpendientes.dataset.FieldByName(Camposaldo).ASExtended ) then
      begin   //Feb 16/17
        showMessage('El monto a aplicar es mayor que el saldo de la cuenta X Cobrar. Diferencia:'+ floattoStr(dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat - DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat));
        Seguir:=FAlse;
      end
      else
      begin
      if ((Mora-MoraPagado)<=valor) and TieneMora  and (Application.MessageBox(pChar('Moratorios: '+FloatToSTR(Mora-MoraPagado)+ ' a Fecha'+datetimeToSTR(FechaMora)+'.  Facturar Moratorios?'),'Confirmacion',MB_YESNO )=idYEs) then
        begin
              //FActurar Moratorios y continuar
          ActFacturaMora.Execute;
          Seguir :=True;
              //Se facturoMora
        end;
      end;      //Solo avisar
    end
    else
      Seguir :=True;

    //  f:= quitasignos(DSAplicacion.DataSet.FieldByName('ImporteFactoraje').ASString)
                                                     //  'Importe'  //Ene 13/17
    f:= quitasignos(DSAplicacion.DataSet.FieldByName(CampoImporte).ASString);  //Ago 15/16
  //  showmessage(f);
    aux:=strtoFLoat(quitasignos(cxDBLblDisponible.Caption));   //Es el del pago no cambia
                             //Ver si ya tiene el valor
    Valor:= StrToFloat(f);//DSAplicacion.DataSet.FieldByName('Importe').ASFloat;//cxDBTxtEdtImporteAplicar.Field.Asfloat;
    inherited;
    if not Seguir then
      ShowMessage('Proceso cancelado por alguna de las siguietes razones: '+#13
                 +'1. El monto del pago debe corresponder al menos al valor de moratorios'+#13
                 +'2. El valor a aplicar no debe ser mayor que el valor de la CXC '+#13
                 +'3. Debe generar la factura de moratorios.')
    else
    begin
      if Valor > 0 then
      begin
        // Esta seguro de aplicar al Documento seleccionado del cliente?
      //  if DSAplicacion.DataSet.FieldByName('Importe').Asfloat > Valor then    //Ajustar para evitar centavos perdidos   C. Ago 23/16 pendiente
        if (Valor>aux)then //de otra forma siempre son iguales //Por ahora asi
      //  if abs(DSAplicacion.DataSet.FieldByName('Importe').Asfloat - Valor)>0.001 then
        begin
          ShowMessage('No es posible aplicar un valor mayor al disponible');
          abort;
        end;
        f:=dsConCXCpendientes.DataSet.FieldByName('IdCuentaXCobrar').AsString;//+'-'+dsConCXCpendientes.DataSet.FieldByName('Folio').AsString;

                                                   // 'Saldo'                                               'Importe'   //Ene 13/17
        if (dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat >= DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat)
        or (abs(dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat - DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat)<0.0001) then  //Ajustar para evitar centavos perdidos   C. Ago 23/16 pendiente
        begin                                       //  'Saldo'                                                 'Importe'   //Ene 13/17
          if abs(dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat - DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat)>0 then
             showMessage('Pago Parcial, valor de diferencia: '+ floattoStr(dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat - DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat));   //Ene 13/17
          if (TieneMora and Seguir)or //FEb 14/17 Para evitar q pregunte si facturo moratorios  ya que debe aplicarlos
            (Application.MessageBox(pChar('Esta seguro de aplicar el importe al documento '+f +' ?'),'Confirmación',MB_YESNO)=IDYES) then
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
          end;
        end
        else                                                                                                           //Ene 13/17 'Importe'                                                  'Saldo'
          ShowMessage('No es posible aplicar un valor mayor al saldo. Diferencia:'+ floattoStr(DSAplicacion.DataSet.FieldByName(Campoimporte).Asfloat-dsConCXCpendientes.dataset.FieldByName(Camposaldo).Asfloat ));
      end
      else
        ShowMessage('No se puede aplicar un valor de 0');
      //showmessage(quitasignos (cxDBLblDisponible.Caption) ); //Ago 15/16
      BtBtnAplicar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0) and (DSAplicacion.DataSet.state =dsInsert);
      BtBtnAgregar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0) and (DsAplicacion.state =dsBrowse)and (not dsConCXCpendientes.dataset.eof);
      cxDBTxtEdtImporteAplicar.Enabled:= (DSAplicacion.DataSet.state =dsInsert);//Ago 15/16
    {   }
    end;// del seguir opor si se require facturar Moratorios //Feb 12/17
  end
  else
  begin //HAy cuentas más antiguas...   //FEb 7/17
    ShowMessage('Existen cuentas pendientes más antiguas...') ;
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
begin
  Result:=FAlse;
  dsAuxiliar.dataset.close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select idcuentaXcobrar, Fecha, sAldo, idpersona from CuentasXCobrar where Saldo >0 '+
                                        ' and IdPersona='+intToSTR(IDPErsona)+' and IdAnexo = '+intToSTR(IDAnexo)+' Order by fecha ');
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof then
  begin
    Result:= IdCxCAct= dsAuxiliar.dataset.Fieldbyname('IdCuentaXCobrar').asinteger;
  end;
  dsAuxiliar.dataset.close;

end;
//Verificar si tendra moratorios para mandar facturar moratorios
function TFrmAplicacionPago.ActualizaMoratorios(IdCxCAct:integer;FechaPago:TDateTime; var ValorMora:Double; var FechaAct:TDateTime):Boolean;
var               //FEb 7/17
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

  TADOStoredProc(DSP_CalcMoratorio.DataSet).Parameters.ParamByName('@IdCuentaXCobrar').value:=  IdCxCAct;
  TADOStoredProc(DSP_CalcMoratorio.DataSet).Parameters.ParamByName('@Fecha').value:=  FechaPago;          //CAmbiar solo fecha

  TADOStoredProc(DSP_CalcMoratorio.DataSet).ExecProc;


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

procedure TFrmAplicacionPago.SetFActFacturaMora(const Value: TBasicAction);
begin
  FActFacturaMora := Value;

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

end.
