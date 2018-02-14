unit ListasRestringidasWeb;

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
  Vcl.OleCtrls, SHDocVw,
  MSHTML_TLB;

type
  TfrmListasRestringidasWeb = class(T_frmEdit)
    WebBrowser: TWebBrowser;
    procedure WebBrowserDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
    FURL: string;
    procedure SetURL(const Value: string);
    function SetLogin: Boolean;
  public
    { Public declarations }
    property URL: string read FURL write SetURL;
  end;

implementation

{$R *.dfm}

uses ProcesosType;

{ TfrmListasRestringidasWeb }

function GetFormByNumber(document: IHTMLDocument2;
    formNumber: integer): IHTMLFormElement;
var
  forms: IHTMLElementCollection;
begin
  forms := document.Forms as IHTMLElementCollection;
  if formNumber < forms.Length then
    result := forms.Item(formNumber,'') as IHTMLFormElement
  else
    result := nil;
end;

procedure SetFieldValue(theForm: IHTMLFormElement;
  const fieldName: string; const newValue: string;
  const instance: integer=0);
var
  field: IHTMLElement;
  inputField: IHTMLInputElement;
  selectField: IHTMLSelectElement;
  textField: IHTMLTextAreaElement;
begin
  try
    field := theForm.Item(fieldName,instance) as IHTMLElement;
    if Assigned(field) then
    begin
      if field.tagName = 'INPUT' then
      begin
        inputField := field as IHTMLInputElement;
        if (inputField.type_ <> 'radio') and
           (inputField.type_ <> 'checkbox')
        then
          inputField.value := newValue
        else
          inputField.checked := (newValue = 'checked');
      end
      else if field.tagName = 'SELECT' then
      begin
        selectField := field as IHTMLSelectElement;
        selectField.value := newValue;
      end
      else if field.tagName = 'TEXTAREA' then
      begin
        textField := field as IHTMLTextAreaElement;
        textField.value := newValue;
      end;
    end;
  except
  end;
end;

procedure SetClick(theForm: IHTMLFormElement;
  const fieldName: string; const instance: integer=0);
var
  field: IHTMLElement;
begin
  field := theForm.Item(fieldName,instance) as IHTMLElement;
  field.click
end;

function TfrmListasRestringidasWeb.SetLogin: Boolean;
var
  document: IHTMLDocument2;
  theForm: IHTMLFormElement;
begin
  Result:= False;
  document := WebBrowser.Document as IHTMLDocument2;
  if not Assigned(document) then exit;
  theForm := GetFormByNumber(document,0);
//<input name="txtUserName" type="text" id="txtUserName" class="form-control jq_watermark" data-percent-width="true" placeholder="Usuario" >
  SetFieldValue(theForm,'txtUserName',_LoginKey);
//<input name="txtUserPassword" type="password" id="txtUserPassword" data-percent-width="true" class="form-control jq_watermark" placeholder="Contraseña">
  SetFieldValue(theForm,'txtUserPassword',_LoginPasswd);
//  SetClick(theForm,'submit');
  Result:= True;
end;


procedure TfrmListasRestringidasWeb.SetURL(const Value: string);
begin
  FURL := Value;
  Caption := _LISTAS_WEB;
  WebBrowser.Navigate(FURL);
end;

procedure TfrmListasRestringidasWeb.WebBrowserDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
begin
  inherited;
  if Pos('login.aspx', URL) > 0 then SetLogin;
end;

end.
