unit EsquemaPagosMovimientosTiposForm;

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
  dxSkinsdxBarPainter, dxBar, cxClasses, Vcl.ImgList, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.StdCtrls;

type
  TfrmEsquemaPagosMovimientosTipos = class(T_frmDualList)
    tvAvailableIdMovimientoTipo: TcxGridDBColumn;
    tvAvailableIdentificador: TcxGridDBColumn;
    tvAvailableDescripcion: TcxGridDBColumn;
    tvAvailableCategoria: TcxGridDBColumn;
    tvAvailableEfecto: TcxGridDBColumn;
    tvAvailableProduceCXC: TcxGridDBColumn;
    tvAvailableProduceCXP: TcxGridDBColumn;
    tvAssignedIdMovimientoTipo: TcxGridDBColumn;
    tvAssignedIdentificador: TcxGridDBColumn;
    tvAssignedDescripcion: TcxGridDBColumn;
    tvAssignedCategoria: TcxGridDBColumn;
    tvAssignedEfecto: TcxGridDBColumn;
    tvAssignedProduceCXC: TcxGridDBColumn;
    tvAssignedProduceCXP: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses EsquemaPagosMovimientosTiposDM;

end.
