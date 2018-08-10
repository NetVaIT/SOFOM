unit MRAplicacionCuesionarioEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxDBEdit, Vcl.StdCtrls, cxPC, cxButtons, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,
  cxNavigator, cxDBNavigator, Vcl.DBCtrls;

type
  TFrmAplicacionCuestionarioEdt = class(TForm)
    Panel1: TPanel;
    cxBtnAtras: TcxButton;
    cxBtnSiguiente: TcxButton;
    cxBtnFin: TcxButton;
    pcMain: TcxPageControl;
    tsGeneral: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLkpCmbBxRespuestas: TcxDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLblCliente: TcxDBLabel;
    DSREspuestasCuestionario: TDataSource;
    Label3: TLabel;
    DSCuestionarioAplicado: TDataSource;
    PnlOtros: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    DSConOpciones: TDataSource;
    DSAuxiliar: TDataSource;
    cxCmbBxListaOtrosTablaExt: TcxComboBox;
    Label4: TLabel;
    cxBtnUsar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxBtnSiguienteClick(Sender: TObject);
    procedure cxBtnAtrasClick(Sender: TObject);
    procedure cxDBLkpCmbBxRespuestasClick(Sender: TObject);
    procedure cxCmbBxListaOtrosTablaExtClick(Sender: TObject);
    procedure DSREspuestasCuestionarioDataChange(Sender: TObject;
      Field: TField);
    procedure cxBtnFinClick(Sender: TObject);
    procedure cxBtnUsarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FActCalculaPonderacion: TBasicAction;
    procedure LlenarComboConDatos(Tabla, Campo, Condicion: String);
    function Completo: Boolean;
    { Private declarations }
  public
    { Public declarations }
    Property ActCalculaPonderacion:TBasicAction read FActCalculaPonderacion write FActCalculaPonderacion;
  end;

var
  FrmAplicacionCuestionarioEdt: TFrmAplicacionCuestionarioEdt;

implementation

{$R *.dfm}

uses EvaluacionesRiesgoDM;

procedure TFrmAplicacionCuestionarioEdt.cxBtnUsarClick(Sender: TObject);
begin
  if DSREspuestasCuestionario.DataSet.state=dsBrowse then
    DSREspuestasCuestionario.DataSet.edit;
  if DSREspuestasCuestionario.DataSet.state=dsEdit then //Verificar si no esta que se hacey cuando se puede editar
  begin
    DSREspuestasCuestionario.DataSet.fieldbyname('OtroTexto').AsString:= cxCmbBxListaOtrosTablaExt.Text;
  end;
  
end;

procedure TFrmAplicacionCuestionarioEdt.cxBtnAtrasClick(Sender: TObject);
begin
  if  DSREspuestasCuestionario.dataset.state =dsEdit then
      DSREspuestasCuestionario.dataset.post;
   DSREspuestasCuestionario.dataset.prior;
end;

procedure TFrmAplicacionCuestionarioEdt.cxBtnSiguienteClick(Sender: TObject);
begin
  if  DSREspuestasCuestionario.dataset.state =dsEdit then
      DSREspuestasCuestionario.dataset.post;
  DSREspuestasCuestionario.dataset.next;
end;

procedure TFrmAplicacionCuestionarioEdt.cxBtnFinClick(Sender: TObject);
begin
  //HAcer calculo y cerrar cuando finalizó.
  ActCalculaPonderacion.Execute;
  Close; 
end;

procedure TFrmAplicacionCuestionarioEdt.cxCmbBxListaOtrosTablaExtClick(
  Sender: TObject);
begin
  cxbtnUsar.Visible:=True;
end;

procedure TFrmAplicacionCuestionarioEdt.cxDBLkpCmbBxRespuestasClick(
  Sender: TObject);
begin
   //Verificar adicionales y habilitar
   PnlOtros.Visible:= DSConOpciones.DataSet.FieldByName('ReqTextoAdi').AsBoolean;
   if not PnlOtros.Visible then
     DSREspuestasCuestionario.DataSet.Fieldbyname('OtroTexto').AsString:='';
   cxCmbBxListaOtrosTablaExt.Visible:= false;
   if (DSConOpciones.DataSet.FieldByName('TAblaExterna').asstring<>'') and
      (DSConOpciones.DataSet.FieldByName('CampoADesplegar').asstring<>'')then
   begin
     LlenarComboConDatos(DSConOpciones.DataSet.FieldByName('TAblaExterna').asstring,
                         DSConOpciones.DataSet.FieldByName('CampoADesplegar').asstring,
                         DSConOpciones.DataSet.FieldByName('CondicionTablaExt').asstring); //ago 8/18
     cxCmbBxListaOtrosTablaExt.Visible:=true;                    
   end;

                   

end;

procedure TFrmAplicacionCuestionarioEdt.DSREspuestasCuestionarioDataChange(
  Sender: TObject; Field: TField);
begin
  if DSREspuestasCuestionario.DataSet.state=dsBrowse then//Ago 9/18
  begin
    PnlOtros.Visible:=(DSREspuestasCuestionario.DataSet.FieldByName('OtroTexto').asString<>'') or 
                      (cxDBLkpCmbBxRespuestas.Text='Otro');
    cxCmbBxListaOtrosTablaExt.Visible:=False;
    if PnlOtros.Visible  and (cxDBLkpCmbBxRespuestas.Text='Otro') then
    begin
      LlenarComboConDatos(DSConOpciones.DataSet.FieldByName('TAblaExterna').asstring,
                           DSConOpciones.DataSet.FieldByName('CampoADesplegar').asstring,
                           DSConOpciones.DataSet.FieldByName('CondicionTablaExt').asstring); //ago 8/18
      cxCmbBxListaOtrosTablaExt.Text:=DSREspuestasCuestionario.DataSet.FieldByName('OtroTexto').asString;            
    end;
    cxBtnSiguiente.Enabled:= not DSREspuestasCuestionario.DataSet.eof;
    cxBtnAtras.Enabled:= not DSREspuestasCuestionario.DataSet.bof;
    cxBtnFin.Enabled:= DSREspuestasCuestionario.DataSet.eof and Completo;
  end;

end;

function TFrmAplicacionCuestionarioEdt.Completo:Boolean; //Ago 9/18
begin
  TadoQuery(dsAuxiliar.DataSet).close;
  TadoQuery(dsAuxiliar.DataSet).sql.Clear;
  TadoQuery(dsAuxiliar.DataSet).sql.Add('Select * from  MRCuestionarioAplicadoREspuestas where idMRCuestionarioAplicado='
                                        +DSREspuestasCuestionario.DataSet.Fieldbyname('idMRCuestionarioAplicado').AsString
                                        +' and idMRPreguntaOpcionResp is NULL'  );
  
  TadoQuery(dsAuxiliar.DataSet).Open;

  Result:=dsAuxiliar.DataSet.Eof; 
  
end;

procedure TFrmAplicacionCuestionarioEdt.LlenarComboConDatos(Tabla,Campo, Condicion:String);  //ago 8/18
begin
  TadoQuery(dsAuxiliar.DataSet).close;
  TadoQuery(dsAuxiliar.DataSet).sql.Clear;
  TadoQuery(dsAuxiliar.DataSet).sql.Add('Select '+Campo+' from '+Tabla );
  if Condicion <>'' then
     TadoQuery(dsAuxiliar.DataSet).sql.Add(' where '+Condicion);

 cxCmbBxListaOtrosTablaExt.Properties.Items.Clear;    
 try 
 
  TadoQuery(dsAuxiliar.DataSet).Open;

  while not dsAuxiliar.DataSet.eof do
  begin
     cxCmbBxListaOtrosTablaExt.Properties.Items.add(dsAuxiliar.DataSet.fieldbyname(Campo).asString);
     dsAuxiliar.DataSet.next;
  end;
  cxCmbBxListaOtrosTablaExt.Visible:=true; 
 except 
    ShowMessage('Verifique la definición de la Tabla asocida, el campo y la condición. No es posible realizar la consulta');
 end;
end;

procedure TFrmAplicacionCuestionarioEdt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //VErificar que si esta editando se pregunte si se cancelamn cambios
  if DSREspuestasCuestionario.State=dsEdit  then
     if (Application.MessageBox('¿Desea guardar los cambios realizados?','Salir',MB_ICONEXCLAMATION or MB_YESNO)=ID_YES) then
       DSREspuestasCuestionario.dataset.post
     else
       DSREspuestasCuestionario.dataset.Cancel;
end;

procedure TFrmAplicacionCuestionarioEdt.FormShow(Sender: TObject);
begin
  DSREspuestasCuestionario.dataset.open;
  DSCuestionarioAplicado.dataset.open;
  DSConOpciones.DataSet.Open;
end;

end.
