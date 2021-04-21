unit PLDAlertasPreocupanteForm;

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
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxDBEdit, Vcl.StdCtrls, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.ExtCtrls, cxPC, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ProcesosType, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmPLDAlertasPreocupante = class(T_frmEdit)
    Panel1: TPanel;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Panel2: TPanel;
    Label11: TLabel;
    cxDBMemo1: TcxDBMemo;
    pnlContrado: TPanel;
    Label13: TLabel;
    cmbAnexo: TcxDBLookupComboBox;
    dsClientes: TDataSource;
    dsAnexos: TDataSource;
    Label2: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label4: TLabel;
    cmbOperacionTipo: TcxDBLookupComboBox;
    dsOperacionTipo: TDataSource;
    pnlPersona: TPanel;
    Label3: TLabel;
    cmbCliente: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cmbMetodosPago: TcxDBLookupComboBox;
    dsMetodosPago: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    FTipo: TPLDAlertasTipos;
    procedure SetTipo(const Value: TPLDAlertasTipos);
    { Private declarations }
  public
    { Public declarations }
    property Tipo: TPLDAlertasTipos read FTipo write SetTipo;
  end;

implementation

{$R *.dfm}

uses PLDAlertasDM;

procedure TfrmPLDAlertasPreocupante.FormShow(Sender: TObject);
begin
  inherited;
  pnlContrado.Visible := (Tipo <> pldtPreocupante);
end;

procedure TfrmPLDAlertasPreocupante.SetTipo(const Value: TPLDAlertasTipos);
begin
  FTipo := Value;
  case Value of
    pldtNone: tsGeneral.Caption:= 'General';
    pldtRelevante: tsGeneral.Caption:= 'Relevante';
    pldtInusual: tsGeneral.Caption:= 'Inusual';
    pldtPreocupante: tsGeneral.Caption:= 'Preocupante';
  end;
end;

end.
