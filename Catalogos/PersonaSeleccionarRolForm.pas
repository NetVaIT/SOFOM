unit PersonaSeleccionarRolForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _ReportForm, dxSkinsCore, dxSkinBlack,
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
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.Win.ADODB, dxmdaset;

type
  TfrmPersonaSeleccionarRol = class(T_frmReport)
    adodsRoles: TADODataSet;
    dsRoles: TDataSource;
    adodsPersonaRol: TADODataSet;
    dsPersonaRol: TDataSource;
    Label1: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label2: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    adodsRolesIdRol: TAutoIncField;
    adodsRolesRol: TStringField;
    adodsPersonaRolIdPersona: TAutoIncField;
    adodsPersonaRolPersonaRelacionada: TStringField;
    adodsPersonaRolPorcentajeCalculo: TFMTBCDField;
    adodsPersonaRolPersonas: TIntegerField;
    dxmParams: TdxMemData;
    dxmParamsIdRol: TIntegerField;
    dxmParamsIdPersonaRol: TIntegerField;
  private
    { Private declarations }
    FIdRol: Integer;
    FIdPersona: Integer;
  public
    { Public declarations }
    property IdRol: Integer read FIdRol;
    property IdPersona: Integer read FIdPersona;
    function Execute: Boolean;
  end;

implementation

{$R *.dfm}

{ TfrmPersonaSeleccionarRol }

function TfrmPersonaSeleccionarRol.Execute: Boolean;
begin
  adodsRoles.Open;
  adodsPersonaRol.Open;
  dxmParams.Open;
  dxmParams.Insert;
  Result:= (ShowModal = mrOk);
  FIdRol:= dxmParamsIdRol.Value;
  FIdPersona := dxmParamsIdPersonaRol.Value;
  adodsRoles.Close;
  adodsPersonaRol.Close;
  dxmParams.Close;
end;

end.
