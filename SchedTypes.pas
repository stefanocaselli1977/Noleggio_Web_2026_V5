unit SchedTypes;

interface

type
  TSchedArticolo = class
  public
    CLI_NO      : Double;
    ART_NO      : Double;
    SCHED_NO    : Double;
    TIPO        : string;
    DESCRIZIONE : string;
    EANCODE2    : string;
    STAGIONE    : string;
    BRAND       : string;
    MISURA      : string;
    QTA         : Integer;
    FLAGREPLAY  : Integer;
  end;

  TScheda = class
  public
    SCHED_NO      : Double;
    CLI_NO        : Double;
    NOMCOGNCLI    : string;
    INDIRIZZO     : string;
    DATASTARTRENT : TDateTime;
    DATATAKEBACK  : TDateTime;
    DATACLOSESCHD : TDateTime;
    OWNER         : string;
    NOTE          : string;
    STATO         : string;
    STATO_CONS    : string;
    SUBTOTALE     : Real;
    DISCOUNT      : Real;
    NETPRICE      : Real;
    DAYUSE        : Integer;
    PAGATO        : Boolean;
    DATAINTRO     : TDateTime;
    EANCODE1      : string;
    EANCODE2      : string;
    DATELASTADV   : TDateTime;
    Articoli      : array of TSchedArticolo;

    constructor Create;
    destructor  Destroy; override;
    procedure   AddOrUpdateArticolo(ACli_no, AArt_no, ASched_no: Double;
                  const ADescrizione, AEancode2, AStagione,
                        ABrand, ATipo, AMisura: string;
                  AQta, AFlagReplay: Integer);
    procedure   ClearArticoli;
  end;

implementation

uses SysUtils;

constructor TScheda.Create;
begin
  inherited;
  STATO      := 'INUTILIZZATA';
  STATO_CONS := 'REGOLARE';
  SUBTOTALE  := 0;
  DISCOUNT   := 0;
  NETPRICE   := 0;
  DAYUSE     := 0;
  PAGATO     := False;
  DATAINTRO  := Now;
  SetLength(Articoli, 0);
end;

destructor TScheda.Destroy;
begin
  ClearArticoli;
  inherited;
end;

procedure TScheda.ClearArticoli;
var
  i: Integer;
begin
  for i := 0 to High(Articoli) do
    Articoli[i].Free;
  SetLength(Articoli, 0);
end;

procedure TScheda.AddOrUpdateArticolo(
  ACli_no, AArt_no, ASched_no : Double;
  const ADescrizione, AEancode2, AStagione,
        ABrand, ATipo, AMisura : string;
  AQta, AFlagReplay            : Integer);
var
  i       : Integer;
  Found   : Boolean;
  Articolo: TSchedArticolo;
  Idx     : Integer;
begin
  Found := False;

  // Cerca se l'articolo esiste già (stesso ART_NO)
  for i := 0 to High(Articoli) do
    if Articoli[i].ART_NO = AArt_no then
    begin
      // Aggiorna la quantità
      if AFlagReplay = 1 then
        Articoli[i].QTA := Articoli[i].QTA + AQta
      else
        Articoli[i].QTA := AQta;
      Found := True;
      Break;
    end;

  if not Found then
  begin
    Articolo            := TSchedArticolo.Create;
    Articolo.CLI_NO     := ACli_no;
    Articolo.ART_NO     := AArt_no;
    Articolo.SCHED_NO   := ASched_no;
    Articolo.DESCRIZIONE:= ADescrizione;
    Articolo.EANCODE2   := AEancode2;
    Articolo.STAGIONE   := AStagione;
    Articolo.BRAND      := ABrand;
    Articolo.TIPO       := ATipo;
    Articolo.MISURA     := AMisura;
    Articolo.QTA        := AQta;
    Articolo.FLAGREPLAY := AFlagReplay;
    Idx := Length(Articoli);
    SetLength(Articoli, Idx + 1);
    Articoli[Idx] := Articolo;
  end;
end;

end.
