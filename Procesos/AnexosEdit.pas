unit AnexosEdit;

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
  AmortizacionesDM, AnexosSegmentosDM;

type
  TfrmAnexosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label11: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label13: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label18: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label20: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label21: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Label22: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label23: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label24: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label25: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    tsAmortizaciones: TcxTabSheet;
    tsSegmentos: TcxTabSheet;
    Label5: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
  private
    { Private declarations }
//    dmAnexosSegmentos: TdmAnexosSegmentos;
    dmAmortizaciones: TdmAmortizaciones;
    FGenerarImpuestoInteres: Boolean;
    procedure SetGenerarImpuestoInteres(const Value: Boolean);
  public
    { Public declarations }
    property GenerarImpuestoInteres: Boolean read FGenerarImpuestoInteres write SetGenerarImpuestoInteres;
  end;

implementation

{$R *.dfm}

uses ContratosDM;

procedure TfrmAnexosEdit.FormCreate(Sender: TObject);
begin
  inherited;
//  dmAnexosSegmentos := TdmAnexosSegmentos.Create(Self);
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
//  dmAmortizaciones.PaymentTime := ptEndOfPeriod;
end;

procedure TfrmAnexosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
//  FreeAndNil(dmAnexosSegmentos);
  FreeAndNil(dmAmortizaciones);
end;

procedure TfrmAnexosEdit.FormShow(Sender: TObject);
begin
  inherited;
//  dmAnexosSegmentos.MasterSource := DataSource;
//  dmAnexosSegmentos.MasterFields:= 'IdAnexo';
//  dmAnexosSegmentos.ShowModule(tsSegmentos,'');
  dmAmortizaciones.ShowModule(tsAmortizaciones,'');
end;

procedure TfrmAnexosEdit.pcMainChange(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.GenerarImpuestoInteres:= GenerarImpuestoInteres;
  dmAmortizaciones.Execute(DataSource.DataSet.FieldByName('FechaInicial').AsDateTime,
  DataSource.DataSet.FieldByName('TasaAnual').AsExtended,
  DataSource.DataSet.FieldByName('Plazo').AsInteger,
  DataSource.DataSet.FieldByName('MontoFinanciar').AsExtended, 0);
end;

procedure TfrmAnexosEdit.SetGenerarImpuestoInteres(const Value: Boolean);
begin
  FGenerarImpuestoInteres := Value;
end;

end.
