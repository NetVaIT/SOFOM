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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo;

type
  TfrmPLDAlertasEdit = class(T_frmEdit)
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
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
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PLDAlertasDM;

end.
