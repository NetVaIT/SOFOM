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
  AmortizacionesDM, AnexosSegmentosDM, cxGroupBox;

type
  TfrmCotizacionesEdit = class(T_frmEdit)
    tsAmortizaciones: TcxTabSheet;
    tsSegmentos: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    Label17: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label27: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label28: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label29: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label30: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label31: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
  private
    { Private declarations }
    dmAmortizaciones: TdmAmortizaciones;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses CotizacionesDM, ProcesosType;

procedure TfrmCotizacionesEdit.FormCreate(Sender: TObject);
begin
  inherited;
  dmAmortizaciones := TdmAmortizaciones.Create(Self);
//  dmAmortizaciones.PaymentTime := ptEndOfPeriod;
end;

procedure TfrmCotizacionesEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmAmortizaciones);
end;

procedure TfrmCotizacionesEdit.FormShow(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.ShowModule(tsAmortizaciones,'');
end;

procedure TfrmCotizacionesEdit.pcMainChange(Sender: TObject);
begin
  inherited;
  dmAmortizaciones.TipoContrato:= TCTipoContrato(DataSource.DataSet.FieldByName('IdContratoTipo').AsInteger);
  dmAmortizaciones.Execute(DataSource.DataSet.FieldByName('FechaInicial').AsDateTime,
  DataSource.DataSet.FieldByName('TasaAnual').AsExtended,
  DataSource.DataSet.FieldByName('Plazo').AsInteger,
  DataSource.DataSet.FieldByName('MontoFinanciar').AsExtended,
  DataSource.DataSet.FieldByName('ValorResidual').AsExtended,
  DataSource.DataSet.FieldByName('ImpactoISR').AsExtended);
end;

end.
