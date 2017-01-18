unit ContratosEdit;

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
  cxContainer, cxEdit, cxCurrencyEdit, cxDBEdit, Vcl.DBCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxSpinEdit,
  ContratosDocumentosDM;

type
  TfrmContratosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label6: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label7: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label8: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    tsDocumentos: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dmContratosDocumentos: TdmContratosDocumentos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ContratosDM;

procedure TfrmContratosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmContratosDocumentos:= TdmContratosDocumentos.Create(nil);
end;

procedure TfrmContratosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmContratosDocumentos);
end;

procedure TfrmContratosEdit.FormShow(Sender: TObject);
var
  IdPersona: Integer;
begin
  inherited;
  IdPersona:= DataSource.DataSet.FieldByName('IdPersona').AsInteger;
  dmContratosDocumentos.MasterSource:= DataSource;
  TdmContratosDocumentos(dmContratosDocumentos).IdPersona := IdPersona;
  dmContratosDocumentos.ShowModule(tsDocumentos);
end;

end.
