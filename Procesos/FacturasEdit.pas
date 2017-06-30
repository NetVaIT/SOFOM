unit FacturasEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxCalc, cxDBEdit, Vcl.DBCtrls, cxSpinEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel;

type
  TfrmEdFactura = class(T_frmEdit)
    PnlDetalleFact: TPanel;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdFactura: TfrmEdFactura;

implementation

{$R *.dfm}

uses FacturasDM, ConceptosFacturaForm;

procedure TfrmEdFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FrmConceptos.DataSource.State in [dsEdit,DSInsert] then //Jun 27/17
     FrmConceptos.DataSource.dataset.Post;

end;

procedure TfrmEdFactura.FormCreate(Sender: TObject);
begin
  inherited;
  frmConceptos:=TfrmConceptos.Create(self);
  FrmConceptos.Parent:= PnlDetalleFact;
  FrmConceptos.Align:=alClient;
  FrmConceptos.Show;
end;

procedure TfrmEdFactura.FormShow(Sender: TObject);
begin
  inherited;                                                                               //Prefactura                                //A menos que fuera la de opcion compra...
(*  if (datasource.State<>dsinsert)then // or (datasource.DataSet.FieldByName('IdCFDIEstatus').AsInteger<>1)  or (not datasource.DataSet.FieldByName('IdCuentaXCobrar').ISNull) then // jun 26/17 Verificar   // o si es de las de opcion de compra  y es prefactura ?? ver como
  begin
    if (datasource.DataSet.FieldByName('IdCFDIEstatus').AsInteger<>1) or (not datasource.DataSet.FieldByName('IdCuentaXCobrar').ISNull) then // si no es prefactura o si tiene cxc asociada
    begin
      pcMain.Enabled:=False; //Dic 20/16 Sólo permite consulta.. Ver que pasa en caso que se quiera realizar factura manual??? o por donde?
      PnlDetalleFact.Enabled:=False;   //Dic 20/16
    end;

  end;  *)

  pcMain.Enabled:=(datasource.State=dsinsert) or ((datasource.DataSet.FieldByName('IdCFDIEstatus').AsInteger=1) and datasource.DataSet.FieldByName('IdCuentaXCobrar').ISNull );//False; //Dic 20/16 Sólo permite consulta.. Ver que pasa en caso que se quiera realizar factura manual??? o por donde?
  PnlDetalleFact.Enabled:= (datasource.State=dsinsert) or ((datasource.DataSet.FieldByName('IdCFDIEstatus').AsInteger=1) and datasource.DataSet.FieldByName('IdCuentaXCobrar').ISNull );//False;   //Dic 20/16

end;

end.
