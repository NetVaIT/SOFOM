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
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel,
  ConceptosFacturaForm;

type
  TfrmEdFactura = class(T_frmEdit)
    PnlDetalleFact: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    pnl32: TPanel;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    pnl33: TPanel;
    Label15: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label17: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label18: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    btnRelacionarCFDI: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    frmConceptos: TfrmConceptos;
    FactRelacionarCFDI: TBasicAction;
    FSoloLectura: Boolean;
    procedure SetactRelacionarCFDI(const Value: TBasicAction);
    procedure SetSoloLectura(const Value: Boolean);
  public
    { Public declarations }
    property actRelacionarCFDI: TBasicAction read FactRelacionarCFDI write SetactRelacionarCFDI;
    property SoloLectura: Boolean read FSoloLectura write SetSoloLectura;
  end;

implementation

{$R *.dfm}

uses FacturasDM;

procedure TfrmEdFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmConceptos.DataSource.State in [dsEdit,DSInsert] then
     frmConceptos.DataSource.dataset.Post;
end;

procedure TfrmEdFactura.FormCreate(Sender: TObject);
begin
  inherited;
  frmConceptos:= TfrmConceptos.Create(self);
  frmConceptos.Parent:= PnlDetalleFact;
  frmConceptos.Align:=alClient;
  frmConceptos.Show;
end;

procedure TfrmEdFactura.FormShow(Sender: TObject);
var
  CFDIVersion33: Boolean;
begin
  inherited;
  frmConceptos.ReadOnlyGrid := SoloLectura;
  // CFDI 33
  CFDIVersion33 :=DataSource.DataSet.FieldByName('Version').AsString = '3.3';
  pnl33.Visible := CFDIVersion33;
  pnl32.Visible := not CFDIVersion33;
end;

procedure TfrmEdFactura.SetactRelacionarCFDI(const Value: TBasicAction);
begin
  FactRelacionarCFDI := Value;
  btnRelacionarCFDI.Action := Value;
end;

procedure TfrmEdFactura.SetSoloLectura(const Value: Boolean);
begin
  FSoloLectura := Value;
end;

end.
