unit PLDAlertasEdit;

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
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, Vcl.DBCtrls, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmPLDAlertasEdit = class(T_frmEdit)
    Label1: TLabel;
    edtFechaDeteccion: TcxDBDateEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    cmbTipo: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxTabSheet1: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dsPersonas: TDataSource;
    dsPagos: TDataSource;
    cmbPago: TcxDBLookupComboBox;
    cmbCliente: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactAbrirLookup: TBasicAction;
  public
    { Public declarations }
    property actAbrirLookup: TBasicAction read FactAbrirLookup write FactAbrirLookup;
  end;

implementation

{$R *.dfm}

uses PLDAlertasDM;

procedure TfrmPLDAlertasEdit.FormShow(Sender: TObject);
var
  CapturaManual: Boolean;
  IdPersona: Integer;
begin
  inherited;
//  Se evita esta validacion para no permitir la edicion de momento
//  CapturaManual := DataSource.DataSet.FieldByName('CapturaManual').AsBoolean;
  CapturaManual := False;
  IdPersona := DataSource.DataSet.FieldByName('IdPersona').AsInteger;
  edtFechaDeteccion.Enabled := CapturaManual;
  cmbTipo.Enabled := CapturaManual;
  cmbCliente.Enabled := CapturaManual;
  cmbPago.Enabled := CapturaManual;
  // Abrir pagos
  actAbrirLookup.Execute;
end;

end.
