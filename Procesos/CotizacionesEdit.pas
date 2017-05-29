unit CotizacionesEdit;

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
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxCurrencyEdit, Vcl.DBCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  AmortizacionesDM, AnexosSegmentosDM, cxGroupBox, cxButtonEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCotizacionesEdit = class(T_frmEdit)
    tsAmortizaciones: TcxTabSheet;
    tsSegmentos: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit22: TcxDBTextEdit;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsEstatus: TDataSource;
    dsCausa: TDataSource;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    FDataSetEstatus: TDataSet;
    FDataSetCausa: TDataSet;
    procedure SetDataSetCausa(const Value: TDataSet);
    procedure SetDataSetEstatus(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    property DataSetEstatus: TDataSet read FDataSetEstatus write SetDataSetEstatus;
    property DataSetCausa: TDataSet read FDataSetCausa write SetDataSetCausa;
  end;

implementation

{$R *.dfm}

uses CotizacionesDM;

{ TfrmCotizacionesEdit }

procedure TfrmCotizacionesEdit.SetDataSetCausa(const Value: TDataSet);
begin
  FDataSetCausa := Value;
  dsCausa.DataSet := Value;
end;

procedure TfrmCotizacionesEdit.SetDataSetEstatus(const Value: TDataSet);
begin
  FDataSetEstatus := Value;
  dsEstatus.DataSet := Value;
end;

end.
