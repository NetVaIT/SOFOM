unit MatrizRiesgoEdit;

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
  cxContainer, cxEdit, Vcl.DBCtrls, cxSpinEdit, cxDBEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.Menus, cxButtons;

type
  TfrmMatrizRiesgoEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxBtnActivarCuestionario: TcxButton;
    cxTbShtPreguntas: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatrizRiesgoEdit: TfrmMatrizRiesgoEdit;

implementation

{$R *.dfm}

uses MatrizRiesgoDM, MRCalificacionRiesgoForm;

procedure TfrmMatrizRiesgoEdit.FormCreate(Sender: TObject);
begin
  inherited;
  //Crear forma
  frmMRCalificacionesRiesgos:=TfrmMRCalificacionesRiesgos.Create(Self);
end;

procedure TfrmMatrizRiesgoEdit.FormShow(Sender: TObject);
begin
  inherited;
  //Mostrar en ts cxTbShtPreguntas
  frmMRCalificacionesRiesgos.Parent:=  cxTbShtPreguntas;
  frmMRCalificacionesRiesgos.Align:= alClient;
  frmMRCalificacionesRiesgos.Show;

end;

end.
