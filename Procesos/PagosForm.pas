unit PagosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls,Data.Win.ADODB, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons;

type
  TFrmConPagos = class(T_frmGrid)
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdBanco: TcxGridDBColumn;
    tvMasterIdPersonaCliente: TcxGridDBColumn;
    tvMasterIdCuentaBancariaEstadoCuenta: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterBanco: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    dxBrBtnAplicaicones: TdxBarButton;
    dsConCXCPendientes: TDataSource;
    DSDetallesCXC: TDataSource;
    DSAplicacion: TDataSource;
    DSPersonas: TDataSource;
    PnlBusqueda: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnBuscar: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    ChckBxConSaldo: TCheckBox;
    ActFacturaMorato: TAction;
    DSDetalleMostrar: TDataSource;
    dxbbAbonarCapital: TdxBarButton;
    DSAnexos: TDataSource;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterCuentaPago: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterOrigenPago: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterAnexo: TcxGridDBColumn;
    DSAuxiliar: TDataSource;
    DSP_CalcMoratorioNueva: TDataSource;
    DSP_ActTotalCXC: TDataSource;
    tvMasterEsDeposito: TcxGridDBColumn;
    ChckBxDeposito: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure dxBrBtnAplicaiconesClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
  private
    { Private declarations }
    ffiltroNombre: String;
    ffiltroFecha: String;
    ffiltro: String;
    FactAbonarCapital: TBasicAction;
    FactAjustePrueba: TBasicAction;
    FActPagoAnticipado: TBasicAction;
    function GetFFiltroNombre: String;
    procedure PoneFiltro;
    procedure SetactAbonarCapital(const Value: TBasicAction);
    function HayCXCSinFacturaPrevia: boolean;
    procedure SetactAjusteprueba(const Value: TBasicAction);
    function HayCXCPorGenerar: boolean;
    function SonUltimas(SaldoPago:Double; var Msg:String): Boolean;
    procedure ActualizarFechaPago(IdPagoAct: integer);
    procedure RefreshPago;
    procedure SetFPagoAnticipado(const Value: TBasicAction);
  public
    { Public declarations }
    property FiltroCon:String read ffiltro write ffiltro;
    property FiltroFecha: String read ffiltroFecha write ffiltroFecha;
    property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;
    property actAbonarCapital: TBasicAction read FactAbonarCapital write SetactAbonarCapital;
    property actAjustePrueba: TBasicAction read FactAjustePrueba write SetactAjusteprueba;
    property ActPagoAnticipado : TBasicAction read FActPagoAnticipado write SetFPagoAnticipado;    //Jun 29/17
  end;

implementation

{$R *.dfm}

uses PagosDM, PagosEdit, AplicacionPagos, _ConectionDmod, ClaveAutorizacionForm;

procedure TFrmConPagos.DataSourceDataChange(Sender: TObject; Field: TField);
var
   mensaje:String;
begin
  inherited;
  mensaje:='';
  dxBrBtnAplicaicones.Enabled:= (DataSource.DataSet.FieldByName('Saldo').AsFloat>0.01);
(*  and
                  (not DataSource.DataSet.FieldByName('EsDeposito').asboolean or
                  (DataSource.DataSet.FieldByName('EsDeposito').asboolean and    *)

  SonUltimas(DataSource.DataSet.FieldByName('Saldo').AsFloat, Mensaje);
  if mensaje<>'' then   //Verificar que cambia && ene 13 /17
    dxBrBtnAplicaicones.Hint:=mensaje
  else
    dxBrBtnAplicaicones.Hint:='Aplicaciones';
end;

function TFrmConPagos.SonUltimas(SaldoPago:Double; var Msg:String):Boolean;
var
   lista:String; //Jun 23/17
   SaldoCalculado:Double; //jun 23/17
begin
  //Generadas y Facturadas
  result:=False;
  if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
  begin
    dsAuxiliar.DataSet.Close;
    TADOQuery(dsAuxiliar.dataset).SQL.clear;
                                               // no moratorios
    TADOQuery(dsAuxiliar.dataset).SQL.Add('Select * from CuentasXCobrar where esmoratorio =1 and Saldo>0 and IdAnexo= '
                                            +datasource.DataSet.FieldByName('IdAnexo').asstring );
    TADOQuery(dsAuxiliar.dataset).open;

    Result:= dsauxiliar.dataset.eof;    //True no hay moratorios pendientes

    if Result then
    begin
      dsAuxiliar.DataSet.Close;
      TADOQuery(dsAuxiliar.dataset).SQL.clear;
                                                 // lista pendientes
      TADOQuery(dsAuxiliar.dataset).SQL.Add('Select aa.IdAnexoAmortizacion, c.idanexo,aa.IdAnexoCredito,aa.FechaCorte, cxc1.Saldo ,'
           +'cxc1.EsMoratorio, cxc1.IdCuentaXCobrarEstatus, cxc1.Total,PagoTotal from AnexosAmortizaciones aa'
           +' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1'
           +' left join CuentasXCobrar cxc1 on cxc1.IdAnexosAmortizaciones=aa.IdAnexoAmortizacion and EsMoratorio=0 '
           +' where c.IdAnexo=' +datasource.DataSet.FieldByName('IdAnexo').asstring
           +' and ( not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion)'
           +' or Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmortizaciones=aa.idanexoamortizacion and '
           +' EsMoratorio=0 and cc.saldo>0.01))' ); // cc.IdCuentaXCobrarEstatus=0 and        se verifica en el siguiente


      TADOQuery(dsAuxiliar.dataset).open;
      if not dsAuxiliar.DataSet.eof then
      begin

        lista:='in (';
        SaldoCalculado:=0;
        while not dsAuxiliar.DataSet.eof do
        begin
          if Lista = 'in (' then
            lista:= lista+ dsAuxiliar.DataSet.fieldbyname('IdAnexoAmortizacion').asString
          else
            lista:= lista+','+ dsAuxiliar.DataSet.fieldbyname('IdAnexoAmortizacion').asString;
          if dsAuxiliar.DataSet.fieldbyname('saldo').isnull then
             SaldoCalculado:=SaldoCalculado+dsAuxiliar.DataSet.fieldbyname('PagoTotal').asExtended //No existe CXC se toma el popsible cobro
          else
            SaldoCalculado:=SaldoCalculado+dsAuxiliar.DataSet.fieldbyname('saldo').asExtended ; //Si existe cxc se toma el saldo
          dsAuxiliar.DataSet.next;
        end;
        lista:= lista+')';
        // ultimas con saldo     o no generadas y luego veridicar que sean las de los idanexoamortizacion de la lista..
        Result:=False;
        dsAuxiliar.DataSet.Close;
        TADOQuery(dsAuxiliar.dataset).SQL.clear;

        TADOQuery(dsAuxiliar.dataset).SQL.Add('select cc.idanexo, Sum(cc.Saldo)as TotalSaldo from CuentasXCobrar cc'+
                                              ' where cc.IdAnexo= '+datasource.DataSet.FieldByName('IdAnexo').asstring+ //prefacturada o Facturada(Estatus}Pendiente)
                                              ' and cc.idAnexosamortizaciones '+ lista+
                                              ' and cc.Saldo>0.01 and IdCuentaXCobrarEstatus=0 '+
                                              ' Group by cc.IdAnexo');

        TADOQuery(dsAuxiliar.dataset).open;

        if not dsauxiliar.dataset.eof  then
        begin
          if SaldoCalculado=dsauxiliar.dataset.fieldbyname('totalSaldo').asextended then  //Coincide con los
             result:= (SaldoPago >= dsauxiliar.dataset.fieldbyname('totalSaldo').asextended )
          else
            Msg:='Es posible que no se hayan generado todas las cuentas por cobrar pendientes o que se encuentren sin facturar ';
        end
        else
          if SaldoCalculado<=SaldoPago then //Para determinar que son las ultimas  y todas estan sin generar
            Msg:='Cuentas por cobrar pendientes de generar o sin facturar ';
      end
      else
        Msg:='No existen cuentas x cobrar, ni amortizaciones pendientes';   //Todo pagado
    end
    else
      Msg:='Tiene Cuentas por Cobrar de moratorios pendientes';
  end;
end;

function TFrmConPagos.HayCXCPorGenerar: boolean;
begin
  if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
 begin
  dsAuxiliar.DataSet.Close;
  TADOQuery(dsAuxiliar.dataset).SQL.clear;
  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select c.idanexo,aa.IdAnexoCredito,aa.FechaCorte ,PagoTotal from AnexosAmortizaciones aa'+
  ' inner join AnexosCreditos C on C.IdAnexoCredito=aa.IdAnexoCredito and c.IdAnexoCreditoEstatus=1 ' +
  ' where idAnexo ='+ datasource.DataSet.FieldByName('IdAnexo').asstring+
  ' and (not Exists (select * from CuentasXCobrar cxc where cxc.IdAnexosAmortizaciones=aa.idanexoamortizacion) '+
  ' or Exists (select * from CuentasXCobrar cc where cc.IdAnexosAmortizaciones=aa.idanexoamortizacion and '+
  ' cc.IdCuentaXCobrarEstatus=-1 and EsMoratorio=0 ) ) and aa.FechaCorte<=dbo.GetDateAux() ');
                                            // jun21/17
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof  then
  begin
    REsult:= true;
  end
  else
    REsult:=False;
 end
 else
 begin
   Showmessage('Pago registrado sin anexo');
   REsult:=true;
 end;
end;

function TFrmConPagos.HayCXCSinFacturaPrevia: boolean;
begin
 if datasource.DataSet.FieldByName('IdAnexo').asstring<>'' then
 begin
  dsAuxiliar.DataSet.Close;

  TADOQuery(dsAuxiliar.dataset).SQL.clear;

  TADOQuery(dsAuxiliar.dataset).SQL.Add('Select * from  CuentasXCobrar  where idAnexo ='+ datasource.DataSet.FieldByName('IdAnexo').asstring+
                                        ' and IDPersona='+  datasource.DataSet.FieldByName('IdPersonaCliente').asstring+
                                      //Ago 18/17 Pendeiente de Habilitar para que no tome las que estan fuera de fecha  '  and dbo.getDateAux() >= FechaVencimiento'
                                       ' and Saldo >0 and IdCuentaXCobrarEstatus=-1  and  ESMoratorio=0' );
  dsAuxiliar.dataset.Open;
  if not dsAuxiliar.dataset.eof and  (dsAuxiliar.dataset.fieldbyname('IdCFDI').isnull) then
  begin
    REsult:= true;
  end
  else
    REsult:=False;
 end
 else
 begin
   Showmessage('Pago registrado sin anexo');
   REsult:=true;
 end;
end;

procedure TFrmConPagos.ActualizarFechaPago (IdPagoAct:integer);//Jun 29/17
var          //Sólo para DEposito en garantía
   FechaAct:String;
begin
  FechaAct:= Datasource.DataSet.FieldByName('FechaPago').AsString ;
  if (application.messagebox(pchar('El pago se encuentra registrado con la Fecha: '+FechaAct+'. ¿Actualizar a la Fecha Actual?'+#13+'(Si) Actualiza  - (No) Mantiene la fecha original')
                             ,'Confirmación',MB_YESNO)=IDYES)then
  begin
    TADOQuery(DSAuxiliar.DataSet).Close;
    TADOQuery(DSAuxiliar.DataSet).sql.Clear;
    TADOQuery(DSAuxiliar.DataSet).SQL.Add('UPDATE PAGOS SET FechaPago = dbo.getDateAux() where IdPago= '+intToSTR(IdPagoAct));
    if TADOQuery(DSAuxiliar.DataSet).ExecSQL=1 then
      ShowMessage('Fecha de Pago Actualizada');
  end;

  RefreshPago;
end;

procedure TFrmConPagos.RefreshPago;  //Jun 29/17
var
  IdPago: Integer;
begin
    IDPago:=  Datasource.Dataset.FieldByName('IDPago').AsInteger;
    Datasource.DataSet.Close;
    Datasource.DataSet.Open;
    Datasource.Dataset.Locate('IDPago', IDPago, []);
end;



procedure TFrmConPagos.dxBrBtnAplicaiconesClick(Sender: TObject);
var FrmAplicacionPago:TFrmAplicacionPago;
    Mensaje:String;
    seguir :Boolean;
begin
  inherited;
  Seguir :=True;
  if (DataSource.DataSet.FieldByName('EsDeposito').asboolean and
                   not SonUltimas(DataSource.DataSet.FieldByName('Saldo').AsFloat, Mensaje)) then
  begin
    SEguir:=False;
    if application.MessageBox('Este es un Pago por Depósito en Garantía. ¿Desea usarlo para liquidar pendientes?','Confirmación',MB_YESNO)=IdYES then
    begin
      FrmClaveAutorizacion:=TFrmClaveAutorizacion.Create(Self);

      FrmClaveAutorizacion.ShowModal;
      if  FrmClaveAutorizacion.Respuesta =  1 then    //Solo si es 1 se sigue
         Seguir:=True;
      FrmClaveAutorizacion.Free;
    end;
  end;
  if Seguir then
  begin
                                //Se debe obligar  antes
    if (not HayCXCSinFacturaPrevia) then // or (application.MessageBox(pChar('Existen Cuentas X Cobrar que requieren factura previa.¿Continuar de todas formas?'),'Confirmación',MB_YESNO)=IDYES))
    begin
      if datasource.DataSet.FieldByName('EsDeposito').asboolean and (datasource.DataSet.FieldByName('Importe').ASFloat=datasource.DataSet.FieldByName('Saldo').ASFloat)then
      begin
        ActualizarFechaPago(datasource.DataSet.FieldByName('IdPago').asInteger);
      end;
      if(not HayCXCPorGenerar)  then
      begin
        if datasource.State in [dsEdit, DSInsert] then
           datasource.DataSet.Post;

        dsConCXCPendientes.DataSet.Close;
        dsConCXCPendientes.DataSet.Open;

        if dsConCXCPendientes.DataSet.Eof then
        begin
          ShowMessage('No existen Cuentas Por Cobrar pendientes de Pago para ese Cliente. Puede actualizar moratorios a la fecha del Pago o Abonar a Capital');
          //Colocado aca Abr 17/17
          FrmAplicacionPago:=TFrmAplicacionPago.create(self);
          FrmAplicacionPago.ActFacturaMora:= ActFacturaMorato;
          FrmAplicacionPago.ActPagoAnticipado:= ActPagoAnticipado; //Jun 30/17
          FrmAplicacionPago.EsFactoraje:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17
          FrmAplicacionPago.LblaplicandoFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17

          FrmAplicacionPago.LblImpAplicaNormal.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.LblEtiquetaFacto.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicar.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicaFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;

          FrmAplicacionPago.DSPago.DataSet:=Datasource.DataSet;
          FrmAplicacionPago.dsConCXCPendientes.DataSet:=dsConCXCPendientes.DataSet;
          FrmAplicacionPago.DSDetallesCXC.dataset:=DSDetallesCXC.DataSet;
          FrmAplicacionPago.DSDetalleMostrar.dataset:=DSDetalleMostrar.DataSet;   //Agregado Feb 16/17

          FrmAplicacionPago.DSAplicacion.DataSet:=DSAplicacion.DataSet;
          FrmAplicacionPago.DSAuxiliar.Dataset:= DSAuxiliar.DataSet; //Abr 3/17
          FrmAplicacionPago.DSP_CalcMoratorioNueva.DataSet:= DSP_CalcMoratorioNueva.DataSet; //Abr 6/17
          FrmAplicacionPago.DSP_ActTotalCXC.DataSet:=DSP_ActTotalCXC.DataSet; //May 22/17
          FrmAplicacionPago.dsConCXCPendientes.DataSet.Open;
          FrmAplicacionPago.DSDetalleMostrar.dataset.Open;   //Agregado Feb 16/17
          FrmAplicacionPago.DSDetallesCXC.DataSet.Open;
         // FrmAplicacionPago.DSAplicacion.DataSet.Open;
          FrmAplicacionPago.ActAbonoCapital:=actAbonarCapital;
          FrmAplicacionPago.ShowModal;
          FrmAplicacionPago.Free;
        end
        else
        begin
          FrmAplicacionPago:=TFrmAplicacionPago.create(self);
          FrmAplicacionPago.ActFacturaMora:= ActFacturaMorato;
          FrmAplicacionPago.ActPagoAnticipado:= ActPagoAnticipado; //Jun 30/17
          FrmAplicacionPago.EsFactoraje:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17
          FrmAplicacionPago.LblaplicandoFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1; //Ene 13/17

          FrmAplicacionPago.LblImpAplicaNormal.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.LblEtiquetaFacto.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicar.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=0;
          FrmAplicacionPago.cxDBTxtEdtImporteAplicaFactoraje.Visible:= Datasource.DataSet.FieldByName('OrigenPago').AsInteger=1;

          FrmAplicacionPago.DSPago.DataSet:=Datasource.DataSet;
          FrmAplicacionPago.dsConCXCPendientes.DataSet:=dsConCXCPendientes.DataSet;
          FrmAplicacionPago.DSDetallesCXC.dataset:=DSDetallesCXC.DataSet;
          FrmAplicacionPago.DSDetalleMostrar.dataset:=DSDetalleMostrar.DataSet;   //Agregado Feb 16/17

          FrmAplicacionPago.DSAplicacion.DataSet:=DSAplicacion.DataSet;
          FrmAplicacionPago.DSAuxiliar.Dataset:= DSAuxiliar.DataSet; //Abr 3/17
          FrmAplicacionPago.DSP_CalcMoratorioNueva.DataSet:= DSP_CalcMoratorioNueva.DataSet; //Abr 6/17
          FrmAplicacionPago.DSP_ActTotalCXC.DataSet:=DSP_ActTotalCXC.DataSet; //May 22/17
          FrmAplicacionPago.dsConCXCPendientes.DataSet.Open;
          FrmAplicacionPago.DSDetalleMostrar.dataset.Open;   //Agregado Feb 16/17
          FrmAplicacionPago.DSDetallesCXC.DataSet.Open;
          FrmAplicacionPago.DSAplicacion.DataSet.Open;
          FrmAplicacionPago.DSAplicacion.DataSet.insert;
          FrmAplicacionPago.ShowModal;
          FrmAplicacionPago.Free;
        end;
        dsConCXCPendientes.DataSet.Close;
      end
      else //Existen Cuentas pendientes de generar al día. Jun 22/17
        ShowMessage('Existen cuentas por cobrar pendientes de generar, asegúrese que estén generadas y facturadas, para poder realizar la aplicación de pagos.');
    end
    else //Cuentas por Cobrar sin Facturar
    begin
      ShowMessage('Existen cuentas por cobrar sin facturar, genere las facturas y regrese a este proceso para poder aplicar los pagos.');
    end;
  end
  else
    ShowMessage('Proceso cancelado');
end;

procedure TFrmConPagos.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if  edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' inner join Personas P On P.IdPersona=Pa.IdPersonaCliente and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmConPagos.FormCreate(Sender: TObject);
var         //Dic 20/16
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  gEditForm:= TfrmEdPagos.Create(Self);
  TfrmEdPagos(gEditForm).DSPersonas.DataSet:=DSPersonas.DataSet;
  TfrmEdPagos(gEditForm).DSAnexos.DataSet:=DSAnexos.DataSet;  //Mar 9/17
             //May 26/17  Date
  DEcodeDate(_DmConection.LafechaActual,a,m,d);
  cxDtEdtDesde.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtHasta.Date:=FechaAux;
  SpdBtnBuscarClick(SpdBtnBuscar); //mar 10/17
  ApplyBestFit:=False;
end;

function TFrmConPagos.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

procedure TFrmConPagos.PoneFiltro;
var
  Aux:string;
  FiltroDepo:String;
begin
  if ChckBxDeposito.Checked then    //Jun 29/17
    FiltroDepo:=' EsDeposito = 1 '
  else
    FiltroDepo:='';

  Aux:='where';
  if ChckBxXFecha.Checked then
    ffiltroFecha:=' FechaPago >=:Fini and FechaPago<:FFin '
  else
    ffiltroFecha:='';
  Aux:=Aux+ffiltroFecha;
  if ChckBxConSaldo.Checked then
    Ffiltro:=' Saldo > 0.01 ' //0.0001
  else
    Ffiltro:='';

  if ffiltro<>'' then
  begin
    if Aux='where'then
      FFiltro:=Aux+FFiltro
    else
      FFiltro:= Aux+ 'and'+FFiltro;
  end
  else
    if Aux<>'where'then
      ffiltro:=Aux;

  if FiltroDepo <> '' then   //Jun 29/17
  begin
    if Ffiltro<>'' then
    begin
      FFiltro:=FFiltro +' and '+FiltroDepo;
    end
    else
      if Aux='where'then
        ffiltro:=Aux + FiltroDepo
      else
        ffiltro:= aux+ ' and '+FiltroDepo;
  end;

end;

procedure TFrmConPagos.SetactAbonarCapital(const Value: TBasicAction);
begin
  FactAbonarCapital := Value;
 // dxbbAbonarCapital.Action := Value;
end;

procedure TFrmConPagos.SetactAjusteprueba(const Value: TBasicAction);
begin
  FactAjustePrueba := Value;
end;

procedure TFrmConPagos.SetFPagoAnticipado(const Value: TBasicAction);
begin
  FActPagoAnticipado := Value;
end;

procedure TFrmConPagos.SpdBtnBuscarClick(Sender: TObject);
const  //Dic 20/16
   TxtSQL='select  IdPago, IdBanco, IdPersonaCliente, IdCuentaBancariaEstadoCuenta,'+
          'FechaPago, FolioPago, SeriePago, Referencia, Importe, Saldo, Observaciones,' +
          'PA.IdMetodoPago, CuentaPago, OrigenPago, IDContrato, IDAnexo, ESdeposito, IDCFDI_NCR from Pagos PA ';
begin
  inherited;
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+ffiltro;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;
  Tadodataset(datasource.DataSet).open;
end;

end.
