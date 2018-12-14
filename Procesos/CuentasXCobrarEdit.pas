unit CuentasXCobrarEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxLabel, cxDBLabel,
  CuentasXCobrarDetalleForm, CuentasXCobrarMoratoriosForm;

type
  TFrmEdCuentasXCobrar = class(T_frmEdit)
    PnlDetalleFact: TPanel;
    pnlMoratorios: TPanel;
    cxLabel1: TcxLabel;
    cxLblTotalConMora: TcxLabel;
    Label2: TLabel;
    lcbCliente: TDBLookupComboBox;
    Label3: TLabel;
    dblkpAnexo: TDBLookupComboBox;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label7: TLabel;
    edtFechaVencimiento: TcxDBDateEdit;
    Label8: TLabel;
    edtDescripcion: TcxDBTextEdit;
    Label9: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label1: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    dblblAnexo: TcxDBLabel;
    dsAnexos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PnlDetalleFactEnter(Sender: TObject);
  private
    { Private declarations }
    frmCuentasXCobrarDetalle: TfrmCuentasXCobrarDetalle;
    frmCuentasXCobrarMoratorios: TfrmCuentasXCobrarMoratorios;
    FTotalConMora: Double;
    FactAgregarCXCDetalle: TBasicAction;
    FDataSetAnexos: TDataSet;
    function GetFTotalConMora: Double;
    procedure SetDataSetAnexos(const Value: TDataSet);
  public
    { Public declarations }
    property DataSetAnexos: TDataSet read FDataSetAnexos write SetDataSetAnexos;
    property TotalConMora: Double read GetFTotalConMora write FTotalConMora;
    property actAgregarCXCDetalle: TBasicAction read FactAgregarCXCDetalle write FactAgregarCXCDetalle;
  end;

implementation

{$R *.dfm}

uses CuentasXCobrarDM;

procedure TFrmEdCuentasXCobrar.FormCreate(Sender: TObject);
var
  IdAnexo: Integer;
begin
  inherited;
  frmCuentasXCobrarDetalle:= TfrmCuentasXCobrarDetalle.Create(Self);
  frmCuentasXCobrarMoratorios:= TfrmCuentasXCobrarMoratorios.Create(Self);
end;

procedure TFrmEdCuentasXCobrar.FormShow(Sender: TObject);
var
  Manual: Boolean;
begin
  inherited;
  // Permitirar editar si es creado MANUAL, Manual es verdadero
  Manual := DataSource.DataSet.FieldByName('Manual').Value;
  if Manual then
    Self.View:= (DataSource.DataSet.FieldByName('IdCuentaXCobrarEstatus').AsInteger <> -1)
  else
    Self.View:= True;
  dblkpAnexo.Visible := not Self.View;
  dblblAnexo.Visible := Self.View;
  frmCuentasXCobrarDetalle.Parent := PnlDetalleFact;
  frmCuentasXCobrarDetalle.Align := alClient;
  frmCuentasXCobrarDetalle.ReadOnlyGrid :=  Self.View;
  frmCuentasXCobrarDetalle.actAgregarCXCDetalle := actAgregarCXCDetalle;
  frmCuentasXCobrarDetalle.Show;
  frmCuentasXCobrarMoratorios.Parent := PnlMoratorios;
  frmCuentasXCobrarMoratorios.Align := alClient;
  frmCuentasXCobrarMoratorios.ReadOnlyGrid := True;
  frmCuentasXCobrarMoratorios.Show;
  cxLblTotalConMora.Caption:=FormatFloat('$#,##0.00', TotalConMora);
  if lcbCliente.CanFocus then lcbCliente.SetFocus;
end;

function TFrmEdCuentasXCobrar.GetFTotalConMora: Double;
begin
  Result := FTotalConMora;
end;

procedure TFrmEdCuentasXCobrar.PnlDetalleFactEnter(Sender: TObject);
begin
  inherited;
  if (DataSource.DataSet.State in [dsInsert]) then
    try
      DataSource.DataSet.Post;
    except
      raise;
    end;
end;

procedure TFrmEdCuentasXCobrar.SetDataSetAnexos(const Value: TDataSet);
begin
  FDataSetAnexos := Value;
  dsAnexos.DataSet := Value;
end;

end.
