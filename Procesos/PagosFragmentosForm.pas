unit PagosFragmentosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls,Data.Win.ADODB;

type
  TfrmFragmentosPagos = class(T_frmGrid)
    tvMasterIdPago: TcxGridDBColumn;
    tvMasterIdPersonaCliente: TcxGridDBColumn;
    tvMasterIdBanco: TcxGridDBColumn;
    tvMasterIdCuentaBancariaEstadoCuenta: TcxGridDBColumn;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago33: TcxGridDBColumn;
    tvMasterIdCuentaBancariaOrdenante: TcxGridDBColumn;
    tvMasterIdCuentaBancariaBeneficiario: TcxGridDBColumn;
    tvMasterIdCFDITipoCadenaPago: TcxGridDBColumn;
    tvMasterIdContrato: TcxGridDBColumn;
    tvMasterIdAnexo: TcxGridDBColumn;
    tvMasterIdCFDI_NCR: TcxGridDBColumn;
    tvMasterIdMonedaOrigen: TcxGridDBColumn;
    tvMasterFechaPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterCuentaPago: TcxGridDBColumn;
    tvMasterOrigenPago: TcxGridDBColumn;
    tvMasterEsDeposito: TcxGridDBColumn;
    tvMasterCertificado: TcxGridDBColumn;
    tvMasterCadena: TcxGridDBColumn;
    tvMasterIdPagoReal: TcxGridDBColumn;
    tvMastersello: TcxGridDBColumn;
    procedure actShowExecute(Sender: TObject);
  private
    FDataPagosFragmentos: TDataSet;
    FDataAnexos: TDataSet;
    { Private declarations }
  public
    { Public declarations }
    property DataPagosFragmentos: TDataSet read FDataPagosFragmentos write FDataPagosFragmentos;  //Ago 27/18
    property DataAnexos: TDataSet read FDataAnexos write FDataAnexos;  //Ago 27/18
  end;

var
  frmFragmentosPagos: TfrmFragmentosPagos;

implementation

{$R *.dfm}

uses _ConectionDmod, PagosRealesDM, PagosFragmentadosEdit;

procedure TfrmFragmentosPagos.actShowExecute(Sender: TObject);
begin
  inherited;
  FrmEdtPagosFragmentados:=TFrmEdtPagosFragmentados.Create(self);
  DataAnexos.Close;
  TadoQuery(DataAnexos).Parameters.ParamByName('IDPersona').Value:= DataPagosFragmentos.FieldByName('IdPersonaCliente').AsInteger;
  DataAnexos.Open;

  FrmEdtPagosFragmentados.DSAnexos.DataSet:=DataAnexos;
  FrmEdtPagosFragmentados.DataSource.DataSet:=DataPagosFragmentos;
  FrmEdtPagosFragmentados.DataSource.DataSet.Edit;
  FrmEdtPagosFragmentados.showmodal;
  FrmEdtPagosFragmentados.free;
end;

end.
