unit DomiciliosEdit;

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
  cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, Vcl.DBCtrls,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmDomiciliosEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dsPaises: TDataSource;
    dsEstados: TDataSource;
    dsMunicipios: TDataSource;
    dsPoblaciones: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    FDataSetPaises: TDataSet;
    FDataSetPoblaciones: TDataSet;
    FDataSetMunicipios: TDataSet;
    FDataSetEstados: TDataSet;
    procedure SetDataSetEstados(const Value: TDataSet);
    procedure SetDataSetMunicipios(const Value: TDataSet);
    procedure SetDataSetPaises(const Value: TDataSet);
    procedure SetDataSetPoblaciones(const Value: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    property DataSetPaises: TDataSet read FDataSetPaises write SetDataSetPaises;
    property DataSetEstados: TDataSet read FDataSetEstados write SetDataSetEstados;
    property DataSetMunicipios: TDataSet read FDataSetMunicipios write SetDataSetMunicipios;
    property DataSetPoblaciones: TDataSet read FDataSetPoblaciones write SetDataSetPoblaciones;
  end;

implementation

{$R *.dfm}

uses DomiciliosDM;

{ TfrmDomiciliosEdit }

procedure TfrmDomiciliosEdit.FormShow(Sender: TObject);
begin
  inherited;
  cxDBLookupComboBox1.SetFocus;
  cxDBLookupComboBox2.SetFocus;
  cxDBLookupComboBox3.SetFocus;
  cxDBLookupComboBox4.SetFocus;
  cxDBTextEdit1.SetFocus;
end;

procedure TfrmDomiciliosEdit.SetDataSetEstados(const Value: TDataSet);
begin
  FDataSetEstados := Value;
  dsEstados.DataSet:= Value;
end;

procedure TfrmDomiciliosEdit.SetDataSetMunicipios(const Value: TDataSet);
begin
  FDataSetMunicipios := Value;
  dsMunicipios.DataSet:= Value;
end;

procedure TfrmDomiciliosEdit.SetDataSetPaises(const Value: TDataSet);
begin
  FDataSetPaises := Value;
  dsPaises.DataSet:= Value;
end;

procedure TfrmDomiciliosEdit.SetDataSetPoblaciones(const Value: TDataSet);
begin
  FDataSetPoblaciones := Value;
  dsPoblaciones.DataSet:= Value;
end;

end.
