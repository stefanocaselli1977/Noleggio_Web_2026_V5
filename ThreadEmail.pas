unit ThreadEmail;

interface

uses SysUtils, Classes, idattachment,idtext,IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient,IdAttachmentFile,
  IdMessageClient, IdSMTPBase, IdSMTP, IdExplicitTLSClientServerBase,
  IdMessage,nolo,softhire,Forms,IdIOHandlerSocket,IdSSLOpenSSL,IdHTTP,IdIOHandler,
  IdIOHandlerStack, dialogs,uAppPaths;

function SendSMS(login,psw,testo,destinatario,mittente,endpoint:string):boolean;
function CheckSMSCredit(login,psw,endpoint:string):integer;
function checkPhoneNumber(Tel:string):boolean;

Type TThreadSendMail = class(TThread)
private
    Tipo:integer;
    IdSMTP1: TIdSMTP;
    idmessage1:TIdmessage;
    Bdyobj:TIdText;
    Subject: string;
    Body: String;
    AttachFile: String;
    Attimg: String;
    attimgobj: TIdAttachment;
    Memotemp:TStringlist;
    sttmp:String;
    public
     status:boolean;
constructor Create(Tipo:integer;AddrTo:String;Sub: string;bdy:String;attaFile:string;takeback:string;host:String;Port:integer;Username:string;Password:string);
Procedure Execute; override;
function ValidEmail(email: string): boolean;
function ValidmultipleMail(stringamail:string):string;

end;

Implementation

function RemoveAllSpaces(const S: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(S) do
    if S[i] <> ' ' then
      Result := Result + S[i];
end;

function TThreadSendMail.ValidmultipleMail(stringamail:string):string;
var
  EmailList: TStringList;
  i:integer;
begin
  EmailList := TStringList.Create;
  try
    EmailList.Delimiter := ';';
    stringamail:=RemoveAllSpaces(stringamail);
    EmailList.DelimitedText := stringamail;
    // Rimuove eventuali spazi iniziali e finali da ogni email
    for i := 0 to EmailList.Count - 1 do
    begin
      EmailList[i] := Trim(EmailList[i]);
      if ValidEmail(EmailList[i])=false then
      begin
      EmailList.Delete(i);
      end
      else
      begin
       if i=0  then
        result:=EmailList[i]
       else
        result:=result+'; '+EmailList[i];
      end;
    end;
    // Ora EmailList contiene ogni singolo indirizzo email
    // Puoi usarlo come vuoi, ad esempio:
  finally
    EmailList.Free;
  end;
end;


function TThreadSendMail.ValidEmail(email: string): boolean;
  const
    atom_chars = [#33..#255] - ['(', ')', '<', '>', '@', ',', ';', ':','\', '/', '"', '.', '[', ']', #127];
    quoted_string_chars = [#0..#255] - ['"', #13, '\'];
    letters = ['A'..'Z', 'a'..'z'];
    letters_digits = ['0'..'9', 'A'..'Z', 'a'..'z'];
    subdomain_chars = ['-', '0'..'9', 'A'..'Z', 'a'..'z'];
  type
    States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR,
      STATE_QUOTE, STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN,
      STATE_SUBDOMAIN, STATE_HYPHEN);
  var
    State: States;
    i, n, subdomains: integer;
    c: char;
  begin
    State := STATE_BEGIN;
    n := Length(email);
    i := 1;
    subdomains := 1;
    while (i <= n) do begin
      c := email[i];
      case State of
      STATE_BEGIN:
        if c in atom_chars then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;
      STATE_ATOM:
        if c = '@' then
          State := STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State := STATE_LOCAL_PERIOD
        else if not (c in atom_chars) then
          break;
      STATE_QTEXT:
        if c = '\' then
          State := STATE_QCHAR
        else if c = '"' then
          State := STATE_QUOTE
        else if not (c in quoted_string_chars) then
          break;
      STATE_QCHAR:
        State := STATE_QTEXT;
      STATE_QUOTE:
        if c = '@' then
          State := STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State := STATE_LOCAL_PERIOD
        else
          break;
      STATE_LOCAL_PERIOD:
        if c in atom_chars then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;
      STATE_EXPECTING_SUBDOMAIN:
        if c in letters then
          State := STATE_SUBDOMAIN
        else
          break;
      STATE_SUBDOMAIN:
        if c = '.' then begin
          inc(subdomains);
          State := STATE_EXPECTING_SUBDOMAIN
        end else if c = '-' then
          State := STATE_HYPHEN
        else if not (c in letters_digits) then
          break;
      STATE_HYPHEN:
        if c in letters_digits then
          State := STATE_SUBDOMAIN
        else if c <> '-' then
          break;
      end;
      inc(i);
    end;
    if i <= n then
      Result := False
    else
      Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
  end;





constructor TThreadSendMail.Create(Tipo:integer;AddrTo:String;Sub:string;bdy:String;attaFile:string;takeback:string;host:String;Port:integer;Username:string;Password:string);
var imgpath:string;
 ora:real;
begin
  inherited Create(True);
  status:=true;
  ora:=now;
  IdSMTP1:=Tidsmtp.Create;
  IdSMTP1.Host :=host;       //'authsmtp.register.it';
  IdSMTP1.Port :=port;       // 25;
  idSMTP1.Username:=username;//'smtp@parmasport-rental.it';
  idSMTP1.Password:=password;
  Subject := Sub;
  body:=bdy;
  attachFile:=attaFile;
  Memotemp:=TStringlist.Create;
  idmessage1:=Tidmessage.Create;
  AddrTo:=ValidmultipleMail(AddrTo);
  if length(AddrTo)=0 then
  begin
   status:=false;
   exit;
  end;

 if tipo=1 then
  begin
   IdMessage1.From.Address := menu.edit51.Text; //'noleggio@parmasport.it';
   IdMessage1.Subject:= Subject;
   Memotemp.LoadFromFile(getcurrentdir+'\Avviso noleggio riconsegna.html');
   sttmp:=memotemp.Text;
   sttmp  := StringReplace(sttmp, '%1', DM.IBDataSetScheduleNOME.AsString+' '+DM.IBDataSetScheduleCOGNRAGSOC.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%2', DM.IBDataSetScheduleDATATAKEBACK.AsString,[rfReplaceAll, rfIgnoreCase]);
   idmessage1.ContentType:= 'multipart/related; type="text/html"';
   IdMessage1.Recipients.EMailAddresses := AddrTo; //'stefano@parmasport.it' ;
   Bdyobj := TIdText.Create(idmessage1.MessageParts);
   Bdyobj.Body.Text:=sttmp;
   Bdyobj.ContentType := 'text/html';
   //imgpath:= ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';
   imgpath:= AppDataPath+'Rental and repair Logo Parmasport.jpg';


   attimgobj:= TIdAttachmentfile.Create(Bdyobj.MessageParts, imgpath);
   attimgobj.ContentDisposition:='inline';
   attimgobj.ContentType := 'image/jpg';
   attimgobj.ExtraHeaders.Values['Content-ID']:='<%3>';
  end;
 if tipo=2 then
  begin
  IdMessage1.From.Address := 'stefano@parmasport.it';  //account for kqsms service
  IdMessage1.ContentType := 'text/plain';
  IdMessage1.Recipients.EMailAddresses:= AddrTo+menu.edit52.text;
 IdMessage1.Body.Text := body+' Numero Riconsegna: '+stringreplace(floattostr(ora), ',','/',[rfReplaceAll, rfIgnoreCase]);//'test email body';
  end;
  if tipo=4 then
  begin
  IdMessage1.From.Address := 'noleggio@parmasport.it';
  IdMessage1.Subject:= Subject;
  IdMessage1.ContentType := 'multipart/related; type="text/html"';     // 'text/plain';
  IdMessage1.Recipients.EMailAddresses:= AddrTo;
  IdMessage1.Body.Text := body;
  end;
    if tipo=3 then
  begin
   IdMessage1.From.Address := menu.edit51.Text; //'noleggio@parmasport.it';
   IdMessage1.Subject:= Subject;
    Memotemp.LoadFromFile(getcurrentdir+'\Ricevuta riconsegna chiusura.html');
   sttmp:=memotemp.Text;
   sttmp  := StringReplace(sttmp, '%1', DM.IBDataSetScheduleNOME.AsString+' '+DM.IBDataSetScheduleCOGNRAGSOC.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%2', (stringreplace(floattostr(ora), ',','/',[rfReplaceAll, rfIgnoreCase])),[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%4', datetimetostr(ora),[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%5', DM.IBDataSetScheduleSCHED_NO.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%6', DM.IBDataSetScheduleDATASTARTRENT.AsString,[rfReplaceAll, rfIgnoreCase]);
   sttmp  := StringReplace(sttmp, '%7', DM.IBDataSetScheduleDATATAKEBACK.AsString,[rfReplaceAll, rfIgnoreCase]);
   idmessage1.ContentType:= 'multipart/related; type="text/html"';
   IdMessage1.Recipients.EMailAddresses := AddrTo; //'stefano@parmasport.it' ;
   Bdyobj := TIdText.Create(idmessage1.MessageParts);
   Bdyobj.Body.Text:=sttmp;
   Bdyobj.ContentType := 'text/html';
   //imgpath:= ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';
   imgpath:= Appdatapath+'Rental and repair Logo Parmasport.jpg';
   attimgobj:= TIdAttachmentfile.Create(Bdyobj.MessageParts, imgpath);
   attimgobj.ContentDisposition:='inline';
   attimgobj.ContentType := 'image/jpg';
   attimgobj.ExtraHeaders.Values['Content-ID']:='<%3>';
   end;
   if tipo=5 then
  begin
   IdMessage1.From.Address := menu.edit51.Text; //'noleggio@parmasport.it';
   IdMessage1.Subject:= Subject;
   Memotemp.LoadFromFile(getcurrentdir+'\Ricevuta_Noleggio.html');
   sttmp:=memotemp.Text;
   sttmp  := StringReplace(sttmp, '%1', DM.IBDataSetScheduleNOME.AsString+' '+DM.IBDataSetScheduleCOGNRAGSOC.AsString,[rfReplaceAll, rfIgnoreCase]);
 //  sttmp  := StringReplace(sttmp, '%2', DM.IBDataSetScheduleDATATAKEBACK.AsString,[rfReplaceAll, rfIgnoreCase]);
   idmessage1.ContentType:= 'multipart/related; type="text/html"';
   IdMessage1.Recipients.EMailAddresses := AddrTo; //'stefano@parmasport.it' ;
   Bdyobj := TIdText.Create(idmessage1.MessageParts);
   Bdyobj.Body.Text:=sttmp;
   Bdyobj.ContentType := 'text/html';
 //  imgpath:= ExtractFilePath(Application.exename)+'Rental and repair Logo Parmasport.jpg';
  // attimgobj:= TIdAttachmentfile.Create(Bdyobj.MessageParts, imgpath);
  // attimgobj.ContentDisposition:='inline';
  // attimgobj.ContentType := 'image/jpg';
  // attimgobj.ExtraHeaders.Values['Content-ID']:='<%3>';
  end;



end;



procedure TThreadSendMail.Execute();
var
  Memotemp:TStringlist;
  ind1:integer;
  ora:real;
  logo,bdy:Tidtext;
  imgpath:string;
begin
 //'test subject';
if (attachfile <> '') then
 begin
     if FileExists(Attachfile) then
      TIdAttachmentFile.Create(idmessage1.MessageParts, attachFile);
 end;


IdSMTP1.Connect;
IdSMTP1.Send(IdMessage1) ;
IdSMTP1.Disconnect;


end;


function SendSMS(login,psw,testo,destinatario,mittente,endpoint:string):boolean;
var
  IdHTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  Params: TStringList;
  Response: string;
begin
  IdHTTP := TIdHTTP.Create(nil);
  SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  Params := TStringList.Create;
  try
    // Handler SSL per HTTPS
    IdHTTP.IOHandler := SSL;
    SSL.SSLOptions.Method := sslvTLSv1_2;
    SSL.SSLOptions.Mode := sslmUnassigned;

    // Content-type necessario per x-www-form-urlencoded
    IdHTTP.Request.UserAgent := 'Mozilla/5.0';
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';

    // Se il server richiede user/password dentro al POST
    Params.Add('login='+Login);
    Params.Add('password='+Psw);
    Params.Add('sender='+Mittente);
    Params.Add('destination='+destinatario);
    Params.Add('text='+testo);
    Response := IdHTTP.Post(endpoint, Params);

    if Response='100 - OK' then
    result:=true;
    if Response='NOK' then
    result:=false;

  except
    on E: Exception do
      //ShowMessage('Errore: ' + E.Message);
    result:=false;
  end;

  Params.Free;
  SSL.Free;
  IdHTTP.Free;
end;

function CheckSMSCredit(login,psw,endpoint:string):integer;
var
  IdHTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  Params: TStringList;
  temp,Response: string;
  
begin
  IdHTTP := TIdHTTP.Create(nil);
 // SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  Params := TStringList.Create;
  try
    // Handler SSL per HTTPS
   // IdHTTP.IOHandler := SSL;

    SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    IdHTTP.IOHandler := SSL;
    SSL.SSLOptions.Method := sslvTLSv1_2;
    SSL.SSLOptions.SSLVersions := [sslvTLSv1_2];


    SSL.SSLOptions.Method := sslvTLSv1_2;
    SSL.SSLOptions.Mode := sslmUnassigned;

    // Content-type necessario per x-www-form-urlencoded
    IdHTTP.Request.UserAgent := 'Mozilla/5.0';
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';

    // Se il server richiede user/password dentro al POST
    Params.Add('login='+Login);
    Params.Add('password='+Psw);
    Response := IdHTTP.Post(endpoint, Params);

    temp:=copy(response,pos(':',response)+1,length(response));
    result:=strtoint(temp);

  except
    on E: Exception do
      ShowMessage('Errore: ' + E.Message);
   // result:=0;
  end;

  Params.Free;
  SSL.Free;
  IdHTTP.Free;
end;

function checkPhoneNumber(Tel:string):boolean;
begin
if Tel[1]='0' then
begin
result:=false;
exit;
end;
if (length(Tel)<10) or (length(Tel)>11) then
begin
result:=false;
exit;
end;
if Tel[1]='+' then
begin
result:=false;
exit;
end;

result:=true;
end;







end.

