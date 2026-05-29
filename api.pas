unit api;

interface

uses
  Windows, IdHTTP, SysUtils, Classes,Dialogs;

// -------------------------------------------------------
// Record per contenere i dati di ogni prodotto
// -------------------------------------------------------
type
  TProduct = record
    COD         : string;
    Category    : string;
    SubCategory : string;
    Season      : string;
    Tipologia   : string;
    Pacq        : string;
    Pven        : string;
    Plis        : string;
    Titolo      : string;
    Brand       : string;
    Colore      : string;
    Taglia      : string;
    Gender      : string;
    CodArt      : string;
  end;

  TProductArray = array of TProduct;

  TRispostaRiparazione = record
    Success    : Boolean;
    ErrorMessage: string;
    RIP_NO     : Integer;
    EANCODERIP : string;
    Messaggio  : string;
  end;



  // -------------------------------------------------------
  // Record per articolo restituito dall'API rent
  // -------------------------------------------------------
  TArticoloAPI = record
    ART_NO      : Double;
    EANCODE2    : string;
    DESCRIZIONE : string;
    STAGIONE    : string;
    BRAND       : string;
    TIPO        : string;
    MISURA      : string;
    QTA         : Integer;
    FLAGREPLAY  : integer;
  end;

  TArticoloAPIArray = array of TArticoloAPI;

  

  // -------------------------------------------------------
  // Record per gli elementi non disponibili
  // -------------------------------------------------------
  TNonDisponibileAPI = record
    Codice : string;
    Motivo : string;
  end;

  TNonDisponibileAPIArray = array of TNonDisponibileAPI;

  // -------------------------------------------------------
  // Risultato completo della chiamata GetRentArticoli
  // -------------------------------------------------------
  TRispostaRentAPI = record
    Success        : Boolean;
    ErrorMessage   : string;
    Articoli       : TArticoloAPIArray;
    NonDisponibili : TNonDisponibileAPIArray;
    Invalidi       : array of string;
  end;




function SendSmsOtp(const ATipo: string; const ANCell: string; const AOtp: Integer): string;
function GetProductInventario(const ACods: array of string; var AProducts: TProductArray): Boolean;
function GetRentArticoli(const ACodici: array of string; out ARisposta: TRispostaRentAPI): Boolean;
function GetJsonValue(const AJson, AKey: string): string;
function InserisciRiparazione(ACli_no: Integer;  const ATipo  : string;  const ABrand : string;  const ADescr : string;  ASched_no    : Double;  const AOwner : string;  const APrefRipNo    : string;  const ADataStartRent: string;out   ARisposta     : TRispostaRiparazione): Boolean;

implementation

function InserisciRiparazione(
  ACli_no      : Integer;
  const ATipo  : string;
  const ABrand : string;
  const ADescr : string;
  ASched_no    : Double;
  const AOwner : string;
  const APrefRipNo    : string;
  const ADataStartRent: string;
  out   ARisposta     : TRispostaRiparazione
): Boolean;
const
  API_URL = 'http://localhost:81/RentCustomers/insert_riparazione_new.php';
var
  IdHTTP      : TIdHTTP;
  Stream      : TStringStream;
  ResponseStr : string;
  Body        : string;
  SuccessStr  : string;
begin
  Result := False;

  ARisposta.Success      := False;
  ARisposta.ErrorMessage := '';
  ARisposta.RIP_NO       := 0;
  ARisposta.EANCODERIP   := '';
  ARisposta.Messaggio    := '';

  // --------------------------------------------------------
  // Costruisce il JSON body
  // --------------------------------------------------------
  Body :=
    '{' +
    '"CLI_NO":'         + IntToStr(ACli_no)      + ',' +
    '"TIPO":"'          + ATipo                  + '",' +
    '"BRAND":"'         + ABrand                 + '",' +
    '"DESCRIZIONE":"'   + ADescr                 + '",' +
    '"SCHED_NO":'       + FloatToStr(ASched_no)  + ',' +
    '"OWNER":"'         + AOwner                 + '",' +
    '"PREF_RIP_NO":"'   + APrefRipNo             + '",' +
    '"DATASTARTRENT":"' + ADataStartRent         + '"'  +
    '}';

  IdHTTP := TIdHTTP.Create(nil);
  Stream := TStringStream.Create(Body);
  try
    try
      IdHTTP.HandleRedirects     := True;
      IdHTTP.ConnectTimeout      := 10000;
      IdHTTP.ReadTimeout         := 30000;
      IdHTTP.Request.ContentType := 'application/json';
      IdHTTP.Request.Accept      := 'application/json';

      ResponseStr := IdHTTP.Post(API_URL, Stream);

    except
      on E: EIdHTTPProtocolException do
      begin
        ARisposta.ErrorMessage := 'Errore HTTP ' + IntToStr(IdHTTP.ResponseCode) + ': ' + E.Message;
        Exit;
      end;
      on E: Exception do
      begin
        ARisposta.ErrorMessage := 'Errore connessione: ' + E.Message;
        Exit;
      end;
    end;

    // --------------------------------------------------------
    // Parsing risposta
    // --------------------------------------------------------
    SuccessStr := LowerCase(Trim(GetJsonValue(ResponseStr, 'success')));

    if SuccessStr <> 'true' then
    begin
      ARisposta.ErrorMessage := GetJsonValue(ResponseStr, 'error');
      Exit;
    end;

    ARisposta.Success := True;

    try
      ARisposta.RIP_NO := StrToInt(GetJsonValue(ResponseStr, 'RIP_NO'));
    except
      ARisposta.RIP_NO := 0;
    end;

    ARisposta.EANCODERIP := GetJsonValue(ResponseStr, 'EANCODERIP');
    ARisposta.Messaggio  := GetJsonValue(ResponseStr, 'messaggio');

    Result := True;

  finally
    Stream.Free;
    IdHTTP.Free;
  end;
end;




function SendSmsOtp(const ATipo: string; const ANCell: string; const AOtp: Integer): string;
var
  IdHTTP: TIdHTTP;
  Params: TStringList;
begin
  Result := '';
  IdHTTP := TIdHTTP.Create(nil);
  try
    Params := TStringList.Create;
    try
      Params.Add('tipo=' + ATipo);
      Params.Add('ncell=' + ANCell);
      Params.Add('otp=' + IntToStr(AOtp));

      IdHTTP.HandleRedirects := True;
      IdHTTP.ConnectTimeout := 10000;
      IdHTTP.ReadTimeout := 30000;
      IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';

      Result := IdHTTP.Post('http://serverps3:8081/RentCustomers/Send_sms_otp.php', Params);

    finally
      Params.Free;
    end;

  except
    on E: EIdHTTPProtocolException do
      raise Exception.CreateFmt('Errore HTTP %d: %s', [IdHTTP.ResponseCode, E.Message]);
    on E: Exception do
      raise Exception.CreateFmt('Errore: %s', [E.Message]);
  end;

  IdHTTP.Free;
end;

// -------------------------------------------------------
// Parser JSON minimale per estrarre valore da una chiave
// -------------------------------------------------------
function GetJsonValue(const AJson, AKey: string): string;
var
  SearchKey     : string;
  Pos1, Pos2    : Integer;
  SubStr        : string;
begin
  Result    := '';
  SearchKey := '"' + AKey + '"';
  Pos1      := Pos(SearchKey, AJson);
  if Pos1 = 0 then Exit;

  SubStr := Copy(AJson, Pos1 + Length(SearchKey), Length(AJson));
  SubStr := Trim(SubStr);

  if (Length(SubStr) = 0) or (SubStr[1] <> ':') then Exit;
  SubStr := Trim(Copy(SubStr, 2, Length(SubStr)));

  if Length(SubStr) = 0 then Exit;

  if SubStr[1] = '"' then
  begin
    // Valore stringa — estrae tra virgolette gestendo le escape
    SubStr := Copy(SubStr, 2, Length(SubStr));
    Pos2   := 1;
    while Pos2 <= Length(SubStr) do
    begin
      if (SubStr[Pos2] = '\') and (Pos2 < Length(SubStr)) then
      begin
        // Rimuove il backslash lasciando il carattere successivo
        Delete(SubStr, Pos2, 1);
        // Pos2 rimane fermo: il carattere dopo il backslash è già quello giusto
        Inc(Pos2);
      end
      else if SubStr[Pos2] = '"' then
      begin
        // Fine stringa
        Result := Copy(SubStr, 1, Pos2 - 1);
        Exit;
      end
      else
        Inc(Pos2);
    end;
  end
  else
  begin
    // Valore numerico o booleano
    Pos2 := 1;
    while (Pos2 <= Length(SubStr)) and
          not (SubStr[Pos2] in [',', '}', ' ', #13, #10]) do
      Inc(Pos2);
    Result := Copy(SubStr, 1, Pos2 - 1);
  end;
end;

// -------------------------------------------------------
// Splitta un JSON array in singoli oggetti {}
// -------------------------------------------------------
procedure SplitJsonObjects(const AJson: string; AList: TStringList);
var
  i, Depth  : Integer;
  Start     : Integer;
  Ch        : Char;
begin
  AList.Clear;
  Depth := 0;
  Start := 0;

  for i := 1 to Length(AJson) do
  begin
    Ch := AJson[i];

    if Ch = '{' then
    begin
      if Depth = 0 then
        Start := i;
      Inc(Depth);
    end
    else if Ch = '}' then
    begin
      Dec(Depth);
      if Depth = 0 then
        AList.Add(Copy(AJson, Start, i - Start + 1));
    end;
  end;
end;

// -------------------------------------------------------
// Parser JSON: estrae il contenuto di un array JSON
// come stringa grezza tra [ e ]
// -------------------------------------------------------
function ExtractJsonArray(const AJson, AKey: string): string;
var
  SearchKey  : string;
  Pos1, Pos2 : Integer;
  Depth      : Integer;
  i          : Integer;
  SubStr     : string;
begin
  Result    := '';
  SearchKey := '"' + AKey + '"';
  Pos1      := Pos(SearchKey, AJson);
  if Pos1 = 0 then Exit;

  // Avanza la posizione oltre la chiave trovata
  // e cerca '[' nella sottostringa rimanente
  SubStr := Copy(AJson, Pos1 + Length(SearchKey), Length(AJson));
  Pos2   := Pos('[', SubStr);
  if Pos2 = 0 then Exit;

  // Pos1 ora punta al '[' nel testo originale
  Pos1 := Pos1 + Length(SearchKey) + Pos2 - 1;

  // Estrae fino al ']' bilanciato
  Depth := 0;
  for i := Pos1 to Length(AJson) do
  begin
    if AJson[i] = '[' then
      Inc(Depth)
    else if AJson[i] = ']' then
    begin
      Dec(Depth);
      if Depth = 0 then
      begin
        Pos2   := i;
        Result := Copy(AJson, Pos1, Pos2 - Pos1 + 1);
        Exit;
      end;
    end;
  end;
end;

// -------------------------------------------------------
// Costruisce il body JSON con array di codici
// -------------------------------------------------------
function BuildRequestBody(const ACods: array of string): string;
var
  i   : Integer;
  sb  : string;
begin
  sb := '{"CODS":[';
  for i := Low(ACods) to High(ACods) do
  begin
    sb := sb + '"' + ACods[i] + '"';
    if i < High(ACods) then
      sb := sb + ',';
  end;
  sb     := sb + ']}';
  Result := sb;
end;

// -------------------------------------------------------
// Chiamata HTTP principale
// -------------------------------------------------------
function GetProductInventario(const ACods: array of string;
                               var AProducts: TProductArray): Boolean;
var
  IdHTTP        : TIdHTTP;
  RequestStream : TStringStream;
  ResponseStr   : string;
  Body          : string;
  ObjList       : TStringList;
  i             : Integer;
  Prod          : TProduct;
begin
  Result   := False;
  IdHTTP   := TIdHTTP.Create(nil);
  ObjList  := TStringList.Create;

  Body := BuildRequestBody(ACods);

  try
    RequestStream := TStringStream.Create(Body);
    try
      IdHTTP.HandleRedirects  := True;
      IdHTTP.ConnectTimeout   := 10000;
      IdHTTP.ReadTimeout      := 30000;
      IdHTTP.Request.ContentType := 'application/json';
      IdHTTP.Request.Accept      := 'application/json';

      ResponseStr := IdHTTP.Post(
        'http://psapp01:8081/restful/categories/getproduct_inventario_26_V3.php',
        RequestStream
      );

    finally
      RequestStream.Free;
    end;

    // Splitta la risposta nei singoli oggetti JSON
    SplitJsonObjects(ResponseStr, ObjList);

    SetLength(AProducts, ObjList.Count);

    for i := 0 to ObjList.Count - 1 do
    begin
      Prod.COD         := GetJsonValue(ObjList[i], 'COD');
      Prod.Category    := GetJsonValue(ObjList[i], 'category');
      Prod.SubCategory := GetJsonValue(ObjList[i], 'subcategory');
      Prod.Season      := GetJsonValue(ObjList[i], 'season');
      Prod.Tipologia   := GetJsonValue(ObjList[i], 'tipologia');
      Prod.Pacq        := GetJsonValue(ObjList[i], 'Pacq');
      Prod.Pven        := GetJsonValue(ObjList[i], 'Pven');
      Prod.Plis        := GetJsonValue(ObjList[i], 'Plis');
      Prod.Titolo      := GetJsonValue(ObjList[i], 'Titolo');
      Prod.Brand       := GetJsonValue(ObjList[i], 'Brand');
      Prod.Colore      := GetJsonValue(ObjList[i], 'Colore');
      Prod.Taglia      := GetJsonValue(ObjList[i], 'Taglia');
      Prod.Gender      := GetJsonValue(ObjList[i], 'Gender');
      Prod.CodArt      := GetJsonValue(ObjList[i], 'CodArt');
      AProducts[i]     := Prod;
    end;

    Result := True;

  except
    on E: EIdHTTPProtocolException do
      ShowMessage('Errore HTTP ' + IntToStr(IdHTTP.ResponseCode) + ': ' + E.Message);
    on E: Exception do
      ShowMessage('Errore: ' + E.Message);
  end;

  ObjList.Free;
  IdHTTP.Free;
end;

// -------------------------------------------------------
// Costruisce il body JSON con array di codici
// per l'endpoint rent_article_in_scheda
// -------------------------------------------------------
function BuildRentRequestBody(const ACodici: array of string): string;
var
  i  : Integer;
  sb : string;
begin
  sb := '{"codici":[';
  for i := Low(ACodici) to High(ACodici) do
  begin
    sb := sb + '"' + ACodici[i] + '"';
    if i < High(ACodici) then
      sb := sb + ',';
  end;
  sb     := sb + ']}';
  Result := sb;
end;

// -------------------------------------------------------
// Splitta un JSON array di stringhe ["a","b",...] 
// in singoli valori stringa
// -------------------------------------------------------
procedure SplitJsonStringArray(const AJson: string; AList: TStringList);
var
  i          : Integer;
  InString   : Boolean;
  Ch         : Char;
  Current    : string;
begin
  AList.Clear;
  InString := False;
  Current  := '';

  for i := 1 to Length(AJson) do
  begin
    Ch := AJson[i];
    if Ch = '"' then
    begin
      if InString then
      begin
        AList.Add(Current);
        Current := '';
      end;
      InString := not InString;
    end
    else if InString then
      Current := Current + Ch;
  end;
end;

// -------------------------------------------------------
// Chiamata API rent_article_in_scheda
// -------------------------------------------------------
function GetRentArticoli(const ACodici: array of string;
                         out ARisposta: TRispostaRentAPI): Boolean;
const
  API_URL = 'http://serverps3:8081/RentCustomers/rent_article_in_scheda.php';
var
  IdHTTP        : TIdHTTP;
  RequestStream : TStringStream;
  ResponseStr   : string;
  Body          : string;
  // Parsing
  SuccessStr    : string;
  DataJson      : string;
  ArticoliJson  : string;
  NonDispJson   : string;
  InvalidiJson  : string;
  ObjList       : TStringList;
  StrList       : TStringList;
  i             : Integer;
  ArtNoStr      : string;
  FlagStr       : string;
begin
  Result := False;

  // Inizializza la risposta
  ARisposta.Success      := False;
  ARisposta.ErrorMessage := '';
  SetLength(ARisposta.Articoli,       0);
  SetLength(ARisposta.NonDisponibili, 0);
  SetLength(ARisposta.Invalidi,       0);

  Body    := BuildRentRequestBody(ACodici);
  IdHTTP  := TIdHTTP.Create(nil);
  ObjList := TStringList.Create;
  StrList := TStringList.Create;

  try
    RequestStream := TStringStream.Create(Body);
    try
      IdHTTP.HandleRedirects     := True;
      IdHTTP.ConnectTimeout      := 10000;
      IdHTTP.ReadTimeout         := 30000;
      IdHTTP.Request.ContentType := 'application/json';
      IdHTTP.Request.Accept      := 'application/json';

      ResponseStr := IdHTTP.Post(API_URL, RequestStream);

    finally
      RequestStream.Free;
    end;

    // --------------------------------------------------------
    // Controllo "success"
    // --------------------------------------------------------
    SuccessStr := GetJsonValue(ResponseStr, 'success');
    if LowerCase(SuccessStr) <> 'true' then
    begin
      ARisposta.ErrorMessage := GetJsonValue(ResponseStr, 'error');
      Exit;
    end;

    ARisposta.Success := True;

    // Estrae il blocco "data" come stringa
    DataJson := ResponseStr;

    // --------------------------------------------------------
    // Parsing array "articoli"
    // --------------------------------------------------------
   ArticoliJson := ExtractJsonArray(DataJson, 'articoli');
    if ArticoliJson <> '' then
    begin
      SplitJsonObjects(ArticoliJson, ObjList);
      SetLength(ARisposta.Articoli, ObjList.Count);

      for i := 0 to ObjList.Count - 1 do
      begin
        ArtNoStr := GetJsonValue(ObjList[i], 'ART_NO');
        ArtNoStr := StringReplace(ArtNoStr, '.', DecimalSeparator, [rfReplaceAll]);
        try
          ARisposta.Articoli[i].ART_NO := StrToFloat(ArtNoStr);
        except
          ARisposta.Articoli[i].ART_NO := 0;
        end;
        ARisposta.Articoli[i].EANCODE2    := GetJsonValue(ObjList[i], 'EANCODE2');
        ARisposta.Articoli[i].DESCRIZIONE := GetJsonValue(ObjList[i], 'DESCRIZIONE');
        ARisposta.Articoli[i].STAGIONE    := GetJsonValue(ObjList[i], 'STAGIONE');
        ARisposta.Articoli[i].BRAND       := GetJsonValue(ObjList[i], 'BRAND');
        ARisposta.Articoli[i].TIPO        := GetJsonValue(ObjList[i], 'TIPO');
        ARisposta.Articoli[i].MISURA      := GetJsonValue(ObjList[i], 'MISURA');

        try
          ARisposta.Articoli[i].QTA := StrToInt(GetJsonValue(ObjList[i], 'QTA'));
        except
          ARisposta.Articoli[i].QTA := 1;
        end;


        FlagStr := LowerCase(Trim(GetJsonValue(ObjList[i], 'FLAGREPLAY')));
        if (FlagStr = 'true') or (FlagStr = '1') then
          ARisposta.Articoli[i].FLAGREPLAY := 1
        else
          ARisposta.Articoli[i].FLAGREPLAY := 0;

      end;
    end;

    // --------------------------------------------------------
    // Parsing array "non_disponibili"
    // --------------------------------------------------------
    NonDispJson := ExtractJsonArray(DataJson, 'non_disponibili');
    if NonDispJson <> '' then
    begin
      SplitJsonObjects(NonDispJson, ObjList);
      SetLength(ARisposta.NonDisponibili, ObjList.Count);

      for i := 0 to ObjList.Count - 1 do
      begin
        ARisposta.NonDisponibili[i].Codice := GetJsonValue(ObjList[i], 'codice');
        ARisposta.NonDisponibili[i].Motivo := GetJsonValue(ObjList[i], 'motivo');
      end;
    end;

    // --------------------------------------------------------
    // Parsing array "invalidi" (array di stringhe)
    // --------------------------------------------------------
    InvalidiJson := ExtractJsonArray(DataJson, 'invalidi');
    if InvalidiJson <> '' then
    begin
      SplitJsonStringArray(InvalidiJson, StrList);
      SetLength(ARisposta.Invalidi, StrList.Count);
      for i := 0 to StrList.Count - 1 do
        ARisposta.Invalidi[i] := StrList[i];
    end;

    Result := True;

  except
    on E: EIdHTTPProtocolException do
    begin
      ARisposta.ErrorMessage := 'Errore HTTP ' + IntToStr(IdHTTP.ResponseCode) + ': ' + E.Message;
      ShowMessage(ARisposta.ErrorMessage);
    end;
    on E: Exception do
    begin
      ARisposta.ErrorMessage := 'Errore: ' + E.Message;
      ShowMessage(ARisposta.ErrorMessage);
    end;
  end;

  ObjList.Free;
  StrList.Free;
  IdHTTP.Free;
end;




end.
