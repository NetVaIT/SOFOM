unit UDMEnvioMail;

interface

uses
  System.SysUtils, System.Classes, IdMessage, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL,idGlobal, IdAttachmentFile, idText, Variants,vcl.forms,
  Web.HTTPApp, Web.HTTPProd, Data.DB, Data.Win.ADODB, Dialogs;

type
//  TPMetodos = (ssslv2,sslv23,sslv3,sslvTLSV1,sslvTLSV1_1,sslvTLSV1_2);
  TDMEnvioMails = class(TDataModule)
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    PgPrdcrInvalidos: TPageProducer;
    procedure PgPrdcrInvalidosHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
  private

    { Private declarations }
     Ffolio,Fserie,Fuuid:String;

  public
    { Public declarations }
   Function SendEmail(const Recipients, Subject, Body, Attach1,
      Attach2, Attach3: string; AttachLista:TStringList; //Feb22/16
      AHost, AUserName, APassw, ANomEnvia: string; Apuerto,
      AMetSSL, AModSSL: Integer):Boolean;

    property emfolio: String read ffolio write fFolio;
    property emserie: String read Fserie write Fserie;
    property emuuid: String read fuuid write fuuid;
  end;

var
  DMEnvioMails: TDMEnvioMails;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}
function TDMEnvioMails.SendEmail(const Recipients: string;
                    const Subject: string;
                    const Body: string;
                    const Attach1 :string;
                    const Attach2 : string;
                    const Attach3 : string;
                    AttachLista:TStringList; //Feb22/16
                    AHost,AUserName,APassw,ANomEnvia :string; Apuerto, AMetSSL , AModSSL:Integer):Boolean;

var
  SMTP: TIdSMTP;
  Email: TIdMessage;
  SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
  htmpart,
  txtPart : TIdText;
  html : TStringList;
  i:Integer; //Feb 22/16
  X:TIdSSLVersion;
begin
  SMTP := TIdSMTP.Create(Application);
  Email := TIdMessage.Create(Application);
  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(Application);
  Result:=False;
  try
    case AMetSSL of
    0: x:= sslvSSLv2;
    1: x:= sslvSSLv23;
    2: x:= sslvSSLv3;
    3: x:= sslvTLSv1;
    4: x:= sslvTLSv1;
    end;

    SSLHandler.MaxLineAction := maException;
    SSLHandler.SSLOptions.Method :=X; //sslvTLSv1; 3; Mod jul 22/16   ;//
    SSLHandler.SSLOptions.Mode := sslmUnassigned;//  sslmclient; Mod jul 22/16
    SSLHandler.SSLOptions.VerifyMode := [];
    SSLHandler.SSLOptions.VerifyDepth := 0;

    SMTP.IOHandler := SSLHandler;
    SMTP.Host :=AHost;// 'mail.floresgaribay.com.mx';
    SMTP.Port :=APuerto;// 587;
    SMTP.Username := AUserName;//'interva@floresgaribay.com.mx';
    SMTP.Password := APassw ;//'interva2014';
    //SMTP.Authenticate := True;
    SMTP.UseTLS :=utUseExplicitTLS;  // utUseImplicitTLS;  Mod jul 22/16

    Email.From.Address :=AUserName;// 'interva@floresgaribay.com.mx';  //Verificar que sea el correo completo
    Email.From.Name    := ANomEnvia;//'Interva';
    if not FileExists(ExtractFilePath(application.ExeName)+'EnProduccion.txt') then
    begin
      if pos('Prueba',Subject)>0   then //en este caso usa lo que viene
         Email.Recipients.EmailAddresses := Recipients
      else
        Email.Recipients.EmailAddresses :='aban@floresgaribay.com.mx' //para que no se les mande a sus clientes      mar 22/18
    end
    else
      Email.Recipients.EmailAddresses := Recipients;
    Email.Subject := Subject;
    Email.Body.Text := Body;

  html := TStringList.Create();
  html.Text := Body;

  email.ContentType := 'multipart/mixed';
  email.Body.Assign(html);

  txtpart := TIdText.Create(email.MessageParts);
  txtpart.ContentType := 'text/plain';
  txtpart.Body.Text := '';


  htmpart := TIdText.Create(email.MessageParts, html);
  htmpart.ContentType := 'text/html';

  for I:=0 to AttachLista.Count-1 do //Feb 22/16
  begin
     if AttachLista[i]<>'' then
        if FileExists( AttachLista[i]) then
          TIdAttachmentFile.Create(email.MessageParts,  AttachLista[i]);
  end;
  (*  if Attach1<>'' then
      if FileExists(Attach1) then
        TIdAttachmentFile.Create(email.MessageParts, Attach1);

    if Attach2<>'' then
      if FileExists(Attach2) then
        TIdAttachmentFile.Create(email.MessageParts, Attach2);
    if Attach3<>'' then
      if FileExists(Attach3) then
        TIdAttachmentFile.Create(email.MessageParts, Attach3);
   *)
   try   //Jul 18/17
    SMTP.Connect;
    SMTP.Send(Email);
    SMTP.Disconnect;
    Result:=True;
   except
      on e:exception do    //Jul 18/17
      begin
        Result := False;
        ShowMessage('Error Enviando: '+ e.Message);
      end;
   end;
  finally
    SMTP.Free;
    Email.Free;
    SSLHandler.Free;
    html.Free; //Feb 20/15
    UnLoadOpenSSLLibrary; //Ene 10/18 alt RDO
  end;
end;


procedure TDMEnvioMails.PgPrdcrInvalidosHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'folio' then
    ReplaceText := emfolio;
  if TagString = 'serie' then
    ReplaceText := emserie;
  if TagString = 'UUID' then
    ReplaceText := emuuid;

end;



end.
