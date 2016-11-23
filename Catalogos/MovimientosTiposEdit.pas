unit MovimientosTiposEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxCheckBox, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox;

type
  TfrmMovimientosTipoEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cbCXC: TcxDBCheckBox;
    Label5: TLabel;
    cbCXP: TcxDBCheckBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dsMovimientosTipo: TDataSource;
    cbAgruparTipo: TcxDBCheckBox;
    Label7: TLabel;
    lcbMovimientoAcumular: TcxDBLookupComboBox;
    cbAplicarUltimoPeriodo: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbAplicaISR: TcxDBCheckBox;
    lcbCXPPorcentaje1: TcxDBTextEdit;
    lcbCXPPorcentaje2: TcxDBTextEdit;
    lcbCXPPagadora1: TcxDBLookupComboBox;
    lcbCXPPagadora2: TcxDBLookupComboBox;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lcbCXCPorcentaje1: TcxDBTextEdit;
    lcbCXCPorcentaje2: TcxDBTextEdit;
    lcbCXCPagadora1: TcxDBLookupComboBox;
    lcbCXCPagadora2: TcxDBLookupComboBox;
    cxGroupBox3: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    procedure cbCXPClick(Sender: TObject);
    procedure cbAgruparTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDataSetMovimientosTipo: TDataSet;
    procedure SetDataSetMovimientosTipo(const Value: TDataSet);
    procedure SetCXPCXC;
    procedure SetAgruparTipo;
  public
    { Public declarations }
    property DataSetMovimientosTipo: TDataSet read FDataSetMovimientosTipo write SetDataSetMovimientosTipo;
  end;

implementation

{$R *.dfm}

uses MovimientosTiposDM;

{ TfrmMovimientosTipoEdit }

procedure TfrmMovimientosTipoEdit.cbAgruparTipoClick(Sender: TObject);
begin
  inherited;
  SetAgruparTipo;
end;

procedure TfrmMovimientosTipoEdit.cbCXPClick(Sender: TObject);
begin
  inherited;
  SetCXPCXC;
  SetAgruparTipo;
end;

procedure TfrmMovimientosTipoEdit.FormShow(Sender: TObject);
begin
  inherited;
  SetCXPCXC;
  SetAgruparTipo;
end;

procedure TfrmMovimientosTipoEdit.SetAgruparTipo;
begin
//  lcbMovimientoAcumular.Enabled:= (cbAgruparTipo.EditingValue = True);
  lcbCXPPagadora1.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXP.EditValue = True);
  lcbCXPPagadora2.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXP.EditValue = True);
  lcbCXCPagadora1.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXC.EditValue = True);
  lcbCXCPagadora2.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXC.EditValue = True);
  lcbCXPPorcentaje1.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXP.EditValue = True);
  lcbCXPPorcentaje2.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXP.EditValue = True);
  lcbCXCPorcentaje1.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXC.EditValue = True);
  lcbCXCPorcentaje2.Enabled:= (cbAgruparTipo.EditingValue = True) and (cbCXC.EditValue = True);
end;

procedure TfrmMovimientosTipoEdit.SetCXPCXC;
begin
  cbAgruparTipo.Enabled:= (cbCXC.EditValue = True) or (cbCXP.EditValue = True);
  cbAplicaISR.Enabled:= (cbCXP.EditValue = True);
end;

procedure TfrmMovimientosTipoEdit.SetDataSetMovimientosTipo(
  const Value: TDataSet);
begin
  FDataSetMovimientosTipo := Value;
  dsMovimientosTipo.DataSet:= Value
end;

end.
