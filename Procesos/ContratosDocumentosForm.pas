unit ContratosDocumentosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _DualListForm, cxGraphics, cxControls,
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
  dxSkinsdxBarPainter, dxBar, cxClasses, Vcl.ImgList, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls;

type
  TfrmContratosDocumentos = class(T_frmDualList)
    tvAvailableIdPersonaDocumento: TcxGridDBColumn;
    tvAvailableIdPersona: TcxGridDBColumn;
    tvAvailableIdDocumento: TcxGridDBColumn;
    tvAvailableDescripcion: TcxGridDBColumn;
    tvAvailableRazonSocial: TcxGridDBColumn;
    tvAvailableFechaEmision: TcxGridDBColumn;
    tvAssignedIdPersonaDocumento: TcxGridDBColumn;
    tvAssignedIdPersona: TcxGridDBColumn;
    tvAssignedIdDocumento: TcxGridDBColumn;
    tvAssignedDescripcion: TcxGridDBColumn;
    tvAssignedRazonSocial: TcxGridDBColumn;
    tvAssignedFechaEmision: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ContratosDocumentosDM;

end.
