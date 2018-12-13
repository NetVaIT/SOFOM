unit ConfiguracionesEdit;

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
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit,
  cxCurrencyEdit, Vcl.Menus, cxButtons, Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons;

type
  TfrmConfiguracionesEdit = class(T_frmEdit)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label16: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label17: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    btnGetPlantillaAmortizacion: TcxButton;
    cxTbShtCorreoSalida: TcxTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    SpdBtnVerPass: TSpeedButton;
    SpdBtnPruebaEnv: TSpeedButton;
    cxDBTxtEdtCorreo: TcxDBTextEdit;
    cxDBTxtEdtHost: TcxDBTextEdit;
    cxDBTxtEdtPuerto: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTxtEdtTipoSeg: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    DBTxtEdtPass: TDBEdit;
    PrgrsBrEnvioP: TProgressBar;
    CBXTipoSEg: TComboBox;
    procedure SpdBtnVerPassClick(Sender: TObject);
    procedure SpdBtnPruebaEnvClick(Sender: TObject);
    procedure CBXTipoSEgClick(Sender: TObject);
  private
    { Private declarations }
    FactGetPlantillaAmortizacion: TBasicAction;
    procedure SetactGetPlantillaAmortizacion(const Value: TBasicAction);
  public
    { Public declarations }
    property actGetPlantillaAmortizacion: TBasicAction read FactGetPlantillaAmortizacion write SetactGetPlantillaAmortizacion;
  end;

implementation

{$R *.dfm}

uses ConfiguracionDM, UDMEnvioMail;

{ TfrmConfiguracionesEdit }

procedure TfrmConfiguracionesEdit.CBXTipoSEgClick(Sender: TObject);
begin
  inherited;
  cxDBTxtEdtTipoSeg.Text:=intToStr(CBXTipoSEg.ItemIndex);
end;

procedure TfrmConfiguracionesEdit.SetactGetPlantillaAmortizacion(
  const Value: TBasicAction);
begin
  FactGetPlantillaAmortizacion := Value;
  btnGetPlantillaAmortizacion.Action := Value;
end;

procedure TfrmConfiguracionesEdit.SpdBtnPruebaEnvClick(Sender: TObject);
var EnviarA:String;       //Copiado TP dic 13/18
 ArchivosLista:TStringList;
begin
   ArchivosLista:=TStringList.Create;
  PrgrsBrEnvioP.Position:=0;
  if (cxDBTxtEdtCorreo.Text<>'') and (DBTxtEdtPass.Text<>'') and (cxDBTxtEdtHost.text<>'') and (cxDBTxtEdtPuerto.text<>'') then
  begin
    PrgrsBrEnvioP.visible:=true;
    if inputquery('Correo receptor','Indique el correo al que se enviará la prueba ', EnviarA)then
    begin
      PrgrsBrEnvioP.Position:=PrgrsBrEnvioP.Position+5;
      Application.ProcessMessages;
      DMEnvioMails:=TDMEnvioMails.Create(Self);
      PrgrsBrEnvioP.Position:=PrgrsBrEnvioP.Position+5;
      Application.ProcessMessages;
      if DMEnvioMails.SendEmail(EnviarA,'Prueba de Envio  ', 'Esta es una prueba de envio desde el correo base ', '','','', ArchivosLista,
          cxDBTxtEdtHost.text, cxDBTxtEdtCorreo.text, DBTxtEdtPass.text,'Probando Mañarina', strToInt(cxDBTxtEdtPuerto.text),
          CBXTipoSEg.itemindex,0)then    // cxDBLkpCmbBxSegSalida.ItemIndex, cxDBkpCmbBxAutSal.ItemIndex //No se usan adentro
      begin
        PrgrsBrEnvioP.Position:=20;
        Application.ProcessMessages;
        ShowMessage('Correo enviado');
      end
      else
      begin
        ShowMessage('Problemas en el envio del Correo. Revise Configuración');
      end;

      DMEnvioMails.free;
    end;
  end
  else
  begin
    ShowMessage('Faltan parámetros de envío');
  end;

  PrgrsBrEnvioP.visible:=False;

end;



procedure TfrmConfiguracionesEdit.SpdBtnVerPassClick(Sender: TObject);
begin           //Dic 13/18
  inherited;
  if SpdBtnVerPass.Down then
    DBTxtEdtPass.passwordchar :=#0
  else
     DBTxtEdtPass.passwordchar :='*';

end;

end.
