unit NewSchedRent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, Mask, ExtCtrls, Grids, jpeg, api, Pickdate, StrUtils,
  Riparazione;

type
  // Oggetto riga articolo noleggiato
  TSchedArticolo = class
  public
    CLI_NO      : Double;
    ART_NO      : Double;
    EANCODE2    : string;
    SCHED_NO    : Double;
    DESCRIZIONE : string;
    STAGIONE    : string;
    BRAND       : string;
    TIPO        : string;
    MISURA      : string;
    QTA         : Integer;
    FLAGREPLAY  : Integer;
  end;

  // Oggetto scheda principale
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
    EANCODE1      : string;  // max 14 char
    EANCODE2      : string;  // max 14 char
    DATELASTADV   : TDateTime;
    Articoli      : array of TSchedArticolo;

    constructor Create;
    destructor Destroy; override;
    procedure AddArticolo(ACli_no, AArt_no, ASched_no: Double);
    procedure AddOrUpdateArticolo(ACli_no, AArt_no, ASched_no: Double; const ADescrizione, AEancode2, AStagione, ABrand, ATipo, AMisura: string; AQta, AFlagReplay: Integer);
    procedure ClearArticoli;
  end;

  TNew_Sched = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    MaskEdit2: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    SpeedButton2: TSpeedButton;
    SpinEdit1: TSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    MaskEdit3: TMaskEdit;
    Edit9: TEdit;
    Label13: TLabel;
    Bevel2: TBevel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label14: TLabel;
    Label71: TLabel;
    Edit14: TEdit;
    Edit10: TEdit;
    Label73: TLabel;
    Edit16: TEdit;
    Label72: TLabel;
    Edit15: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn40: TBitBtn;
    StringGrid1: TStringGrid;
    Label15: TLabel;
    CARICA_SCARICA: TMemo;
    Bevel3: TBevel;
    Panel1: TPanel;
    Label54: TLabel;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    CheckBox1: TCheckBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    NOTE: TMemo;
    Label19: TLabel;
    Button5: TButton;
    BTNSALVA3: TBitBtn;
    BTNMODIFICA3: TBitBtn;
    BTNELIMINA3: TBitBtn;
    BTNANNULLA3: TBitBtn;
    BitBtn14: TBitBtn;
    Preview2: TCheckBox;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RefreshStringgrid1(Risposta : TScheda);
    procedure StringGrid1Exit(Sender: TObject);
    procedure StringGrid1Enter(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure MaskEdit8Exit(Sender: TObject);

  

  private
    FRipModule : TRipmodule;
    procedure AggiornaDayUse;
    function  MaskToDate(const AMask: TMaskEdit; out ADate: TDateTime): Boolean;
    procedure AggiornaTotaleArticoli;
    procedure RebuildStringGrid;
    function  BuildArticoliJSON: string;
   // function  PeriodoContieneWeekend(DataInizio, DataFine: TDateTime): Boolean;
   // function  GetPrezzoUnitario(const ATipo: string; ADayUse: Integer; AHasWeekend: Boolean): Double;
   // procedure AggiornaTotaleArticoli;
   // procedure AggiornaTotaleArticoli_price;

  public
    Scheda: TScheda;

    // Chiamare questo metodo dopo Create per inizializzare i dati passati dall'esterno
    procedure Init(const AOwner, ANomCognCli, AIndirizzo: string;
                   ACli_no: Double);
  end;

var
  New_Sched: TNew_Sched;

implementation

uses SoftHire;

{$R *.dfm}

{ TScheda }

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

procedure TScheda.AddArticolo(ACli_no, AArt_no, ASched_no: Double);
var
  Articolo: TSchedArticolo;
  Idx: Integer;
begin
  Articolo := TSchedArticolo.Create;
  Articolo.CLI_NO   := ACli_no;
  Articolo.ART_NO   := AArt_no;
  Articolo.SCHED_NO := ASched_no;
  Idx := Length(Articoli);
  SetLength(Articoli, Idx + 1);
  Articoli[Idx] := Articolo;
end;

procedure TScheda.ClearArticoli;
var
  I: Integer;
begin
  for I := 0 to High(Articoli) do
    Articoli[I].Free;
  SetLength(Articoli, 0);
end;



procedure TNew_Sched.RebuildStringGrid;
var
  i : Integer;
begin
  if Length(Scheda.Articoli) = 0 then
  begin
    StringGrid1.RowCount := 1;
  end
  else
  begin
    StringGrid1.RowCount := Length(Scheda.Articoli) + 1;

    for i := 1 to StringGrid1.RowCount - 1 do
    begin
      StringGrid1.Cells[0, i] := '';
      StringGrid1.Cells[1, i] := '';
      StringGrid1.Cells[2, i] := '';
      StringGrid1.Cells[3, i] := '';
      StringGrid1.Cells[4, i] := '';
      StringGrid1.Cells[5, i] := '';
      StringGrid1.Cells[6, i] := '';
      StringGrid1.Cells[7, i] := '';
      StringGrid1.Cells[8, i] := '';
    end;

    for i := 0 to High(Scheda.Articoli) do
    begin
      StringGrid1.Cells[0, i + 1] := 'DISPONIBILE';
      StringGrid1.Cells[1, i + 1] := FormatFloat('0', Scheda.Articoli[i].ART_NO);
      StringGrid1.Cells[2, i + 1] := Scheda.Articoli[i].EANCODE2;
      StringGrid1.Cells[3, i + 1] := Scheda.Articoli[i].TIPO;
      StringGrid1.Cells[4, i + 1] := Scheda.Articoli[i].BRAND;
      StringGrid1.Cells[5, i + 1] := Scheda.Articoli[i].DESCRIZIONE;
      StringGrid1.Cells[6, i + 1] := Scheda.Articoli[i].STAGIONE;
      StringGrid1.Cells[7, i + 1] := Scheda.Articoli[i].MISURA;
      StringGrid1.Cells[8, i + 1] := IntToStr(Scheda.Articoli[i].QTA);
    end;
  end;

  StringGrid1.Invalidate;
  StringGrid1.Update;
//  AggiornaTotaleArticoli;
end;

{procedure TScheda.AddOrUpdateArticolo(ACli_no, AArt_no, ASched_no: Double;
  const ADescrizione, AStagione, ABrand, ATipo, AMisura: string;
  AQta, AFlagReplay: Integer);
var
  i        : Integer;
  Idx      : Integer;
  Articolo : TSchedArticolo;
begin
  Idx := -1;

  for i := 0 to High(Articoli) do
  begin
    if Articoli[i].ART_NO = AArt_no then
    begin
      Idx := i;
      Break;
    end;
  end;

  if Idx >= 0 then
  begin
    if AFlagReplay = 1 then
      Articoli[Idx].QTA := Articoli[Idx].QTA + AQta;
  end
  else
  begin
    Articolo             := TSchedArticolo.Create;
    Articolo.CLI_NO      := ACli_no;
    Articolo.ART_NO      := AArt_no;
    Articolo.SCHED_NO    := ASched_no;
    Articolo.DESCRIZIONE := ADescrizione;
    Articolo.STAGIONE    := AStagione;
    Articolo.BRAND       := ABrand;
    Articolo.TIPO        := ATipo;
    Articolo.MISURA      := AMisura;
    Articolo.FLAGREPLAY  := AFlagReplay;

    if AFlagReplay = 0 then
      Articolo.QTA := 1
    else
      Articolo.QTA := AQta;

    Idx := Length(Articoli);
    SetLength(Articoli, Idx + 1);
    Articoli[Idx] := Articolo;
  end;
end;   }

{ TNew_Sched }




procedure TNew_Sched.FormCreate(Sender: TObject);
begin
  // Crea l'oggetto scheda
  Scheda := TScheda.Create;

  // Intestazioni StringGrid
  StringGrid1.Cells[0, 0] := 'STATO';
  StringGrid1.Cells[1, 0] := 'ART_NO';
  StringGrid1.Cells[2, 0] := 'EANCODE2';
  StringGrid1.Cells[3, 0] := 'TIPO';
  StringGrid1.Cells[4, 0] := 'BRAND';
  StringGrid1.Cells[5, 0] := 'DESCRIZIONE';
  StringGrid1.Cells[6, 0] := 'STAG.';
  StringGrid1.Cells[7, 0] := 'MISURA';
  StringGrid1.Cells[8, 0] := 'QTA';

  // --- Valori iniziali controlli ---

  // DATAINTRO: data e ora corrente
  Edit7.Text    := FormatDateTime('dd/mm/yyyy hh:nn:ss', Scheda.DATAINTRO);
  Edit7.ReadOnly := True;

  // STATO e STATO_CONS
  Edit5.Text    := Scheda.STATO;
  Edit5.ReadOnly := True;
  Edit6.Text    := Scheda.STATO_CONS;
  Edit6.ReadOnly := True;

  // Importi
  MaskEdit7.Text := #8364 + '     0,0';
  MaskEdit7.ReadOnly := True;
  MaskEdit8.Text := ' 0,0%';             // DISCOUNT
  MaskEdit9.Text := #8364 + '     0,0';
  MaskEdit9.ReadOnly := True;

  // PAGATO
  CheckBox1.Checked  := False;
  CheckBox1.Caption  := 'NON PAGATO';
  //CheckBox1.rea := True;  // simulato tramite enabled se preferisci

  // Edit readonly lato cliente (saranno valorizzate da Init)
  Edit1.ReadOnly := True;
  Edit2.ReadOnly := True;
  Edit3.ReadOnly := True;

  // SCHED_NO vuoto
  Edit4.Text := '';

  // DATASTARTRENT = oggi
  Scheda.DATASTARTRENT := Int(Now);
  MaskEdit2.Text       := FormatDateTime('dd/mm/yyyy', Scheda.DATASTARTRENT);

  // DATATAKEBACK = oggi + 1
  Scheda.DATATAKEBACK  := Int(Now) + 1;
  MaskEdit1.Text       := FormatDateTime('dd/mm/yyyy', Scheda.DATATAKEBACK);

  // DAYUSE = 1 (differenza tra i due)
  Scheda.DAYUSE  := 1;
  SpinEdit1.Value := 1;
end;

procedure TNew_Sched.Init(const AOwner, ANomCognCli, AIndirizzo: string;
                          ACli_no: Double);
begin
  // Valorizza l'oggetto scheda
  Scheda.OWNER      := AOwner;
  Scheda.CLI_NO     := ACli_no;
  Scheda.NOMCOGNCLI := ANomCognCli;
  Scheda.INDIRIZZO  := AIndirizzo;

  // Mostra sui controlli
  Edit3.Text  := AOwner;          // OWNER
  Edit1.Text  := FloatToStr(ACli_no); // CLI_NO
  Edit2.Text  := ANomCognCli;     // NOMCOGNCLI
  Edit10.text := AIndirizzo;
  // Se hai rinominato il controllo indirizzo in Edit10:
  // Edit10.Text := AIndirizzo;
  // Altrimenti usa Edit3 di GroupBox1 (vedi struttura DFM):
  // GroupBox1 ha Edit1=ID, Edit2=NOMECOGNOME, Edit3=INDIRIZZO
  // Quindi:
  //Edit3.Text := AIndirizzo;  // INDIRIZZO (GroupBox1.Edit3)
  // Nota: se OWNER ha un campo dedicato separato, adatta di conseguenza
end;

function TNew_Sched.MaskToDate(const AMask: TMaskEdit;
                                out ADate: TDateTime): Boolean;
var
  S: string;
begin
  S := Trim(AMask.Text);
  // Rimuove i caratteri placeholder '_'
  S := StringReplace(S, '_', '', [rfReplaceAll]);
  Result := TryStrToDate(S, ADate);
end;

procedure TNew_Sched.MaskEdit2Exit(Sender: TObject);
var
  D: TDateTime;
  S: string;
begin
  // Pulisce il testo dai placeholder '_' lasciati dalla maschera
  S := Trim(StringReplace(MaskEdit2.Text, '_', '', [rfReplaceAll]));

  // Se il campo è rimasto vuoto, non fare nulla
  if S = '' then
    Exit;

  // Verifica che la data sia valida
  if not TryStrToDateTime(S, D) then
  begin
    ShowMessage('La data di inizio noleggio non è valida.' + #13#10 +
                'Inserire una data nel formato GG/MM/AAAA.');
    MaskEdit2.Text := '  /  /    ';
    MaskEdit2.SetFocus;
    Exit;
  end;

  // Verifica che la data non sia antecedente a oggi
  if Int(D) < Int(Now) then
  begin
    if MessageDlg(
         'La data di inizio noleggio è antecedente alla data odierna.' + #13#10 +
         'Vuoi continuare comunque?',
         mtWarning, [mbYes, mbNo], 0) = mrNo then
    begin
      MaskEdit2.Text := '  /  /    ';
      MaskEdit2.SetFocus;
      Exit;
    end;
  end;

  // Data accettata
  Scheda.DATASTARTRENT := D;
  AggiornaDayUse;
  AggiornaTotaleArticoli;
end;

procedure TNew_Sched.MaskEdit1Exit(Sender: TObject);
var
  D: TDateTime;
  S: string;
begin
  // Pulisce il testo dai placeholder '_' lasciati dalla maschera
  S := Trim(StringReplace(MaskEdit1.Text, '_', '', [rfReplaceAll]));

  // Se il campo è rimasto vuoto, non fare nulla
  if S = '' then
    Exit;

  // Verifica che la data sia valida
  if not TryStrToDateTime(S, D) then
  begin
    ShowMessage('La data di rientro previsto non è valida.' + #13#10 +
                'Inserire una data nel formato GG/MM/AAAA.');
    MaskEdit1.Text := '  /  /    ';
    MaskEdit1.SetFocus;
    Exit;
  end;

  // Verifica che DATASTARTRENT sia stata inserita
  if Scheda.DATASTARTRENT = 0 then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    MaskEdit1.Text := '  /  /    ';
    MaskEdit2.SetFocus;
    Exit;
  end;

  // Verifica che la data di rientro sia strettamente successiva a quella di inizio
  if Int(D) <= Int(Scheda.DATASTARTRENT) then
  begin
    ShowMessage('La data di rientro deve essere successiva alla data di inizio noleggio' + #13#10 +
                '(minimo 1 giorno).');
    MaskEdit1.Text := '  /  /    ';
    MaskEdit1.SetFocus;
    Exit;
  end;

  // Verifica che i giorni calcolati non superino 365
  if Int(D) - Int(Scheda.DATASTARTRENT) > 365 then
  begin
    ShowMessage('La durata del noleggio non può superare 365 giorni.');
    MaskEdit1.Text := '  /  /    ';
    MaskEdit1.SetFocus;
    Exit;
  end;

  // Data accettata — aggiorna scheda e controlli
  Scheda.DATATAKEBACK := D;
  AggiornaDayUse;
  AggiornaTotaleArticoli;
end;


procedure TNew_Sched.CheckBox1Click(Sender: TObject);
begin
  // Aggiorna caption e oggetto scheda
  Scheda.PAGATO := CheckBox1.Checked;
  if CheckBox1.Checked then
    CheckBox1.Caption := 'PAGATO'
  else
    CheckBox1.Caption := 'NON PAGATO';
end;

{procedure TNew_Sched.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: string;
begin
  with StringGrid1.Canvas do
  begin
    if (ARow = 0) or (ACol = 0) then
    begin
      Brush.Color := clSilver;
      Font.Style  := [fsBold];
    end
    else
    begin
      Brush.Color := clWhite;
      Font.Style  := [];
    end;
    FillRect(Rect);
    S := StringGrid1.Cells[ACol, ARow];
    SetBkMode(Handle, TRANSPARENT);
    DrawText(Handle, PChar(S), Length(S), Rect,
             DT_CENTER or DT_VCENTER or DT_SINGLELINE);
  end;
end;}

procedure TNew_Sched.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S        : string;
  CellRect : TRect;  // rinominato da TextRect a CellRect
  BgColor  : TColor;
begin
  with StringGrid1.Canvas do
  begin
    if ARow = 0 then
      BgColor := clSilver
    else if gdSelected in State then
      BgColor := clHighlight
    else if (ARow mod 2) = 0 then
      BgColor := $00F0F0F0
    else
      BgColor := clWhite;

    Brush.Color := BgColor;
    Pen.Color   := BgColor;
    FillRect(Rect);

    if ARow = 0 then
    begin
      Font.Style := [fsBold];
      Font.Color := clBlack;
    end
    else if gdSelected in State then
    begin
      Font.Style := [];
      Font.Color := clHighlightText;
    end
    else
    begin
      Font.Style := [];
      Font.Color := clBlack;
    end;

    S := StringGrid1.Cells[ACol, ARow];
    if S = '' then Exit;

    // Usa CellRect invece di TextRect
    CellRect := Rect;
    InflateRect(CellRect, -2, -2);

    SetBkMode(Handle, TRANSPARENT);
    DrawText(Handle, PChar(S), Length(S), CellRect,
             DT_CENTER or DT_VCENTER or DT_SINGLELINE or DT_END_ELLIPSIS);

    Pen.Color := clSilver;
    MoveTo(Rect.Right - 1, Rect.Top);
    LineTo(Rect.Right - 1, Rect.Bottom);
    MoveTo(Rect.Left,      Rect.Bottom - 1);
    LineTo(Rect.Right,     Rect.Bottom - 1);
  end;
end;

procedure TNew_Sched.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TNew_Sched.AggiornaDayUse;
var  Giorni: Integer;
begin
  if (Scheda.DATASTARTRENT > 0) and (Scheda.DATATAKEBACK > 0) then
  begin
    Giorni           := Trunc(Int(Scheda.DATATAKEBACK) - Int(Scheda.DATASTARTRENT));
    Scheda.DAYUSE    := Giorni;
    SpinEdit1.Value  := Giorni;
   // AggiornaTotaleArticoli; 
  end;
end;

procedure TNew_Sched.SpinEdit1Exit(Sender: TObject);
var
  NuovaData: TDateTime;
begin
{  // DATASTARTRENT deve essere presente
  if Scheda.DATASTARTRENT = 0 then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    SpinEdit1.Value := 1;
    MaskEdit2.SetFocus;
    Exit;
  end;

  // Limiti 1..365 già garantiti da Min/MaxValue dello SpinEdit,
  // ma un controllo esplicito non guasta
  if SpinEdit1.Value < 1 then
    SpinEdit1.Value := 1
  else if SpinEdit1.Value > 365 then
    SpinEdit1.Value := 365;

  // Calcola la nuova DATATAKEBACK
  NuovaData := Int(Scheda.DATASTARTRENT) + SpinEdit1.Value;

  // Aggiorna scheda e MaskEdit1
  Scheda.DATATAKEBACK  := NuovaData;
  Scheda.DAYUSE        := SpinEdit1.Value;
  MaskEdit1.Text       := FormatDateTime('dd/mm/yyyy', NuovaData);
         }
end;



procedure TNew_Sched.Button1Click(Sender: TObject);
var
  DataInizio : TDateTime;
  DataFine   : TDateTime;
  Anno       : Word;
  Mese       : Word;
  Giorno     : Word;
begin
  // Verifica che DATASTARTRENT sia stata inserita
  if Scheda.DATASTARTRENT = 0 then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    MaskEdit2.SetFocus;
    Exit;
  end;

  DataInizio := Int(Scheda.DATASTARTRENT);
  DecodeDate(DataInizio, Anno, Mese, Giorno);

  // Se siamo dopo l'1/5 -> fine stagione = 1/5 anno PROSSIMO
  // Se siamo tra 1/1 e 30/4 -> fine stagione = 1/5 anno CORRENTE
  if (Mese > 5) or ((Mese = 5) and (Giorno >= 1)) then
    DataFine := EncodeDate(Anno + 1, 5, 1)
  else
    DataFine := EncodeDate(Anno, 5, 1);

  // Aggiorna DATATAKEBACK
  Scheda.DATATAKEBACK := DataFine;
  MaskEdit1.Text      := FormatDateTime('dd/mm/yyyy', DataFine);

  // Aggiorna DAYUSE e SpinEdit1
  Scheda.DAYUSE   := Trunc(DataFine - DataInizio);
  SpinEdit1.Value := Scheda.DAYUSE;
end;



procedure TNew_Sched.Button4Click(Sender: TObject);
var
  DataInizio : TDateTime;
  DataFine   : TDateTime;
  S          : string;
begin
  // Legge DATASTARTRENT dalla MaskEdit2 (potrebbe essere stata modificata)
  S := Trim(StringReplace(MaskEdit2.Text, '_', '', [rfReplaceAll]));

  if S = '' then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    MaskEdit2.SetFocus;
    Exit;
  end;

  if not TryStrToDateTime(S, DataInizio) then
  begin
    ShowMessage('La data di inizio noleggio non è valida.' + #13#10 +
                'Inserire una data nel formato GG/MM/AAAA.');
    MaskEdit2.SetFocus;
    Exit;
  end;

  DataInizio := Int(DataInizio);  // azzera la parte oraria
  DataFine   := DataInizio + 7;

  // Verifica limite 365 giorni
  if DataFine - DataInizio > 365 then
  begin
    ShowMessage('La durata del noleggio non può superare 365 giorni.');
    Exit;
  end;

  // Aggiorna DATASTARTRENT (allinea anche scheda e MaskEdit2)
  Scheda.DATASTARTRENT := DataInizio;
  MaskEdit2.Text       := FormatDateTime('dd/mm/yyyy', DataInizio);

  // Aggiorna DATATAKEBACK
  Scheda.DATATAKEBACK  := DataFine;
  MaskEdit1.Text       := FormatDateTime('dd/mm/yyyy', DataFine);

  // Aggiorna giorni
  AggiornaDayUse;

end;

procedure TNew_Sched.RefreshStringgrid1(Risposta : TScheda);
var row,i:integer;
begin
 StringGrid1.RowCount := Length(Risposta.Articoli) + 1;
 for i := 0 to High(Risposta.articoli) do
  begin
    Row := i + 1;
    StringGrid1.Cells[0, Row] := 'DISPONIBILE';
    StringGrid1.Cells[1, Row] := FormatFloat('0', Risposta.Articoli[i].ART_NO);
    StringGrid1.Cells[2, Row] := Risposta.Articoli[i].EANCODE2;
    StringGrid1.Cells[3, Row] := Risposta.Articoli[i].TIPO;
    StringGrid1.Cells[4, Row] := Risposta.Articoli[i].BRAND;
    StringGrid1.Cells[5, Row] := Risposta.Articoli[i].DESCRIZIONE;
    StringGrid1.Cells[6, Row] := Risposta.Articoli[i].STAGIONE;
    StringGrid1.Cells[7, Row] := Risposta.Articoli[i].MISURA;
    StringGrid1.Cells[8, Row] := IntToStr(Risposta.Articoli[i].QTA);
  end;

end;


procedure TScheda.AddOrUpdateArticolo(ACli_no, AArt_no, ASched_no: Double;
  const ADescrizione, AEancode2, AStagione, ABrand, ATipo, AMisura: string;
  AQta, AFlagReplay: Integer);
var
  i        : Integer;
  Idx      : Integer;
  Articolo : TSchedArticolo;
begin
  Idx := -1;

  // Usa Trunc per evitare problemi di precisione con Double
  for i := 0 to High(Articoli) do
  begin
    if Trunc(Articoli[i].ART_NO) = Trunc(AArt_no) then
    begin
      Idx := i;
      Break;
    end;
  end;

  if Idx >= 0 then
  begin
    // Articolo GIA' PRESENTE
    if AFlagReplay = 1 then
    begin
      // FLAGREPLAY=1: somma la QTA
      Inc(Articoli[Idx].QTA, AQta);
      // Aggiorna anche lo StringGrid se necessario
    end;
    // FLAGREPLAY=0: nessuna modifica
  end
  else
  begin
    // Articolo NON PRESENTE: aggiunge
    Articolo             := TSchedArticolo.Create;
    Articolo.CLI_NO      := ACli_no;
    Articolo.ART_NO      := AArt_no;
    Articolo.EANCODE2    := AEancode2;
    Articolo.SCHED_NO    := ASched_no;
    Articolo.DESCRIZIONE := ADescrizione;
    Articolo.STAGIONE    := AStagione;
    Articolo.BRAND       := ABrand;
    Articolo.TIPO        := ATipo;
    Articolo.MISURA      := AMisura;
    Articolo.FLAGREPLAY  := AFlagReplay;

    if AFlagReplay = 0 then
      Articolo.QTA := 1
    else
      Articolo.QTA := AQta;

    Idx := Length(Articoli);
    SetLength(Articoli, Idx + 1);
    Articoli[Idx] := Articolo;
  end;
end;

procedure Image1Click(Sender: TObject);
begin
end;


procedure TNew_Sched.StringGrid1Exit(Sender: TObject);
begin
 StringGrid1.Invalidate;
end;

procedure TNew_Sched.StringGrid1Enter(Sender: TObject);
begin
 StringGrid1.Invalidate;
end;

procedure TNew_Sched.Image1Click(Sender: TObject);
var
  Codici   : array of string;
  Risposta : TRispostaRentAPI;
  i        : Integer;
  Msg      : string;
begin
if carica_scarica.Lines.Count=0 then
exit;

  // --------------------------------------------------------
  // Costruisce array codici dal Memo CARICA_SCARICA
  // --------------------------------------------------------
  SetLength(Codici, CARICA_SCARICA.Lines.Count);
  for i := 0 to CARICA_SCARICA.Lines.Count - 1 do
    Codici[i] := Trim(CARICA_SCARICA.Lines[i]);

  // --------------------------------------------------------
  // Chiama l'API
  // --------------------------------------------------------
  if not GetRentArticoli(Codici, Risposta) then
  begin
    ShowMessage('Chiamata API fallita: ' + Risposta.ErrorMessage);
    Exit;
  end;

  if not Risposta.Success then
  begin
    ShowMessage('Errore API: ' + Risposta.ErrorMessage);
    Exit;
  end;


  Msg := 'Articoli ricevuti dall API:' + #13#10;
for i := 0 to High(Risposta.Articoli) do
  Msg := Msg + Format('ART_NO=%.0f  QTA=%d  FLAGREPLAY=%d',
    [Risposta.Articoli[i].ART_NO,
     Risposta.Articoli[i].QTA,
     Risposta.Articoli[i].FLAGREPLAY]) + #13#10;
ShowMessage(Msg);
  // --------------------------------------------------------
  // Popola TScheda.Articoli con AddOrUpdateArticolo
  // NON si fa ClearArticoli: i carichi successivi si accumulano
  // --------------------------------------------------------
  for i := 0 to High(Risposta.Articoli) do
  begin
    Scheda.AddOrUpdateArticolo(
      Scheda.CLI_NO,
      Risposta.Articoli[i].ART_NO,
      Scheda.SCHED_NO,
      Risposta.Articoli[i].DESCRIZIONE,
      Risposta.Articoli[i].EANCODE2,
      Risposta.Articoli[i].STAGIONE,
      Risposta.Articoli[i].BRAND,
      Risposta.Articoli[i].TIPO,
      Risposta.Articoli[i].MISURA,
      Risposta.Articoli[i].QTA,
      Risposta.Articoli[i].FLAGREPLAY
    );
  end;

  // --------------------------------------------------------
  // Aggiorna StringGrid1 con il contenuto aggiornato di Scheda.Articoli
  // (non dalla Risposta, ma dall'array accumulato)
  // --------------------------------------------------------
{  StringGrid1.RowCount := Length(Scheda.Articoli) + 1;

  for i := 0 to High(Scheda.Articoli) do
  begin
    StringGrid1.Cells[0, i + 1] := 'DISPONIBILE';
    StringGrid1.Cells[1, i + 1] := FormatFloat('0', Scheda.Articoli[i].ART_NO);
    StringGrid1.Cells[2, i + 1] := Scheda.Articoli[i].EANCODE2;
    StringGrid1.Cells[3, i + 1] := Scheda.Articoli[i].TIPO;
    StringGrid1.Cells[4, i + 1] := Scheda.Articoli[i].BRAND;
    StringGrid1.Cells[5, i + 1] := Scheda.Articoli[i].DESCRIZIONE;
    StringGrid1.Cells[6, i + 1] := Scheda.Articoli[i].STAGIONE;
    StringGrid1.Cells[7, i + 1] := Scheda.Articoli[i].MISURA;
    StringGrid1.Cells[8, i + 1] := IntToStr(Scheda.Articoli[i].QTA);
  end;  }


  //RefreshStringgrid1(Scheda);
  RebuildStringGrid;
  AggiornaTotaleArticoli;
 // StringGrid1.Invalidate;
 // StringGrid1.Update;
 // Self.Repaint;
 // AggiornaTotaleArticoli;
  Carica_Scarica.Clear;

  // --------------------------------------------------------
  // Segnala eventuali non disponibili e invalidi
  // --------------------------------------------------------
  if (Length(Risposta.NonDisponibili) > 0) or (Length(Risposta.Invalidi) > 0) then
  begin
    Msg := '';

    if Length(Risposta.NonDisponibili) > 0 then
    begin
      Msg := Msg + 'Non disponibili:' + #13#10;
      for i := 0 to High(Risposta.NonDisponibili) do
        Msg := Msg + '  ' + Risposta.NonDisponibili[i].Codice +
               ' - ' + Risposta.NonDisponibili[i].Motivo + #13#10;
    end;

    if Length(Risposta.Invalidi) > 0 then
    begin
      Msg := Msg + 'Invalidi:' + #13#10;
      for i := 0 to High(Risposta.Invalidi) do
        Msg := Msg + '  ' + Risposta.Invalidi[i] + #13#10;
    end;

    ShowMessage(Msg);
  end;
end;

procedure TNew_Sched.Button5Click(Sender: TObject);
begin
carica_scarica.Clear;
end;

procedure TNew_Sched.SpinEdit1Change(Sender: TObject);
var
  NuovaData : TDateTime;
begin
  // DATASTARTRENT deve essere presente
  if Scheda.DATASTARTRENT = 0 then
    Exit;

  // Limiti 1..365
  if SpinEdit1.Value < 1 then
  begin
    SpinEdit1.Value := 1;
    Exit;
  end;

  if SpinEdit1.Value > 365 then
  begin
    SpinEdit1.Value := 365;
    Exit;
  end;

  // Calcola la nuova DATATAKEBACK
  NuovaData := Int(Scheda.DATASTARTRENT) + SpinEdit1.Value;

  // Aggiorna scheda
  Scheda.DATATAKEBACK := NuovaData;
  Scheda.DAYUSE       := SpinEdit1.Value;

  // Aggiorna MaskEdit1 immediatamente
  MaskEdit1.Text := FormatDateTime('dd/mm/yyyy', NuovaData);
end;

procedure TNew_Sched.Button2Click(Sender: TObject);
var
  DataInizio : TDateTime;
  DataFine   : TDateTime;
  Anno       : Word;
  Mese       : Word;
  Giorno     : Word;
begin
  // Verifica che DATASTARTRENT sia stata inserita
  if Scheda.DATASTARTRENT = 0 then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    MaskEdit2.SetFocus;
    Exit;
  end;

  DataInizio := Int(Scheda.DATASTARTRENT);
  DecodeDate(DataInizio, Anno, Mese, Giorno);

  // Aggiunge un mese gestendo il cambio anno
  if Mese = 12 then
  begin
    Mese := 1;
    Inc(Anno);
  end
  else
    Inc(Mese);

  // Gestisce i giorni oltre la fine del mese
  // es: 31/01 + 1 mese = 28/02 (o 29 in anno bisestile)
  while not TryEncodeDate(Anno, Mese, Giorno, DataFine) do
    Dec(Giorno);

  // Aggiorna DATATAKEBACK
  Scheda.DATATAKEBACK := DataFine;
  MaskEdit1.Text      := FormatDateTime('dd/mm/yyyy', DataFine);

  // Aggiorna DAYUSE e SpinEdit1
  Scheda.DAYUSE   := Trunc(DataFine - DataInizio);
  SpinEdit1.Value := Scheda.DAYUSE;
end;

procedure TNew_Sched.Button3Click(Sender: TObject);
var
  DataInizio  : TDateTime;
  DataFine    : TDateTime;
  GiornoSett  : Word;
  DataCorrente: TDateTime;
begin
  // Verifica che DATASTARTRENT sia stata inserita
  if Scheda.DATASTARTRENT = 0 then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    MaskEdit2.SetFocus;
    Exit;
  end;

  DataCorrente := Int(Scheda.DATASTARTRENT);

  // Cerca il primo sabato dalla data di inizio
  // DayOfWeek: 1=domenica, 2=lunedi, 3=martedi, 4=mercoledi,
  //            5=giovedi, 6=venerdi, 7=sabato
  GiornoSett := DayOfWeek(DataCorrente);

  case GiornoSett of
    1: // Domenica -> sabato prossimo
       DataInizio := DataCorrente + 6;
    2: // Lunedi -> sabato stesso weekend
       DataInizio := DataCorrente + 5;
    3: // Martedi -> sabato stesso weekend
       DataInizio := DataCorrente + 4;
    4: // Mercoledi -> sabato stesso weekend
       DataInizio := DataCorrente + 3;
    5: // Giovedi -> sabato stesso weekend
       DataInizio := DataCorrente + 2;
    6: // Venerdi -> sabato prossimo
       DataInizio := DataCorrente + 1;
    7: // Sabato -> sabato corrente
       DataInizio := DataCorrente;
  else
    DataInizio := DataCorrente;
  end;

  // La fine del weekend e' la domenica successiva al sabato
  DataFine := DataInizio + 2;

  // Aggiorna DATASTARTRENT con il sabato trovato
  Scheda.DATASTARTRENT := DataInizio;
  MaskEdit2.Text       := FormatDateTime('dd/mm/yyyy', DataInizio);

  // Aggiorna DATATAKEBACK con la domenica
  Scheda.DATATAKEBACK := DataFine;
  MaskEdit1.Text      := FormatDateTime('dd/mm/yyyy', DataFine);

  // Aggiorna DAYUSE e SpinEdit1
  Scheda.DAYUSE   := Trunc(DataFine - DataInizio);
  SpinEdit1.Value := Scheda.DAYUSE;
end;

procedure TNew_Sched.SpeedButton1Click(Sender: TObject);
var
  DateForm : TBrDateForm;
  DataSel  : TDateTime;
begin
  DateForm := TBrDateForm.Create(Self);
  try
    // Data iniziale del calendario = DATASTARTRENT se presente, altrimenti oggi
    if Scheda.DATASTARTRENT > 0 then
      DateForm.Date := Scheda.DATASTARTRENT
    else
      DateForm.Date := Int(Now);

    if DateForm.ShowModal = mrOk then
    begin
      DataSel := DateForm.Date;

      // Verifica che la data non sia posteriore a DATATAKEBACK
      if (Scheda.DATATAKEBACK > 0) and (Int(DataSel) > Int(Scheda.DATATAKEBACK)) then
      begin
        ShowMessage('La data di inizio noleggio non può essere posteriore' +
                    ' alla data di rientro.' + #13#10 +
                    'Selezionare una data precedente al ' +
                    FormatDateTime('dd/mm/yyyy', Scheda.DATATAKEBACK) + '.');
        Exit;
      end;

      // Aggiorna DATASTARTRENT
      Scheda.DATASTARTRENT := Int(DataSel);
      MaskEdit2.Text       := FormatDateTime('dd/mm/yyyy', Scheda.DATASTARTRENT);

      // Aggiorna DAYUSE se DATATAKEBACK è già impostata
      if Scheda.DATATAKEBACK > 0 then
      begin
        Scheda.DAYUSE   := Trunc(Int(Scheda.DATATAKEBACK) - Int(Scheda.DATASTARTRENT));
        SpinEdit1.Value := Scheda.DAYUSE;
      end;
    end;

  finally
    DateForm.Free;
  end;
end;

procedure TNew_Sched.SpeedButton2Click(Sender: TObject);
var
  DateForm : TBrDateForm;
  DataSel  : TDateTime;
begin
  // Verifica che DATASTARTRENT sia presente prima di aprire il calendario
  if Scheda.DATASTARTRENT = 0 then
  begin
    ShowMessage('Inserire prima la data di inizio noleggio.');
    MaskEdit2.SetFocus;
    Exit;
  end;

  DateForm := TBrDateForm.Create(Self);
  try
    // Data iniziale del calendario = DATATAKEBACK se presente,
    // altrimenti DATASTARTRENT + 1
    if Scheda.DATATAKEBACK > 0 then
      DateForm.Date := Scheda.DATATAKEBACK
    else
      DateForm.Date := Int(Scheda.DATASTARTRENT) + 1;

    if DateForm.ShowModal = mrOk then
    begin
      DataSel := DateForm.Date;

      // Verifica che la data non sia precedente o uguale a DATASTARTRENT
      if Int(DataSel) <= Int(Scheda.DATASTARTRENT) then
      begin
        ShowMessage('La data di rientro deve essere successiva' +
                    ' alla data di inizio noleggio.' + #13#10 +
                    'Selezionare una data successiva al ' +
                    FormatDateTime('dd/mm/yyyy', Scheda.DATASTARTRENT) + '.');
        Exit;
      end;

      // Verifica limite 365 giorni
      if Trunc(Int(DataSel) - Int(Scheda.DATASTARTRENT)) > 365 then
      begin
        ShowMessage('La durata del noleggio non può superare 365 giorni.');
        Exit;
      end;

      // Aggiorna DATATAKEBACK
      Scheda.DATATAKEBACK := Int(DataSel);
      MaskEdit1.Text      := FormatDateTime('dd/mm/yyyy', Scheda.DATATAKEBACK);

      // Aggiorna DAYUSE
      Scheda.DAYUSE   := Trunc(Int(Scheda.DATATAKEBACK) - Int(Scheda.DATASTARTRENT));
      SpinEdit1.Value := Scheda.DAYUSE;
    end;

  finally
    DateForm.Free;
  end;
end;

procedure TNew_Sched.BitBtn1Click(Sender: TObject);
var
  RowSel : Integer;
  i      : Integer;
begin
 // Verifica che la griglia abbia righe dati
  if StringGrid1.RowCount <= 1 then
    Exit;

  // Verifica che ci sia una riga selezionata (diversa dall'intestazione)
  RowSel := StringGrid1.Row;
  if RowSel <= 0 then
    Exit;

  // Verifica che la cella selezionata non sia vuota
  if Trim(StringGrid1.Cells[1, RowSel]) = '' then
    Exit;

  if MessageDlg('Confermi l''eliminazione dell''articolo selezionato?',
                mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // --------------------------------------------------------
  // Elimina l'articolo dall'array Scheda.Articoli
  // L'indice nell'array e' RowSel - 1 (la riga 0 e' l'intestazione)
  // --------------------------------------------------------
  Scheda.Articoli[RowSel - 1].Free;

  // Shifta gli elementi successivi di una posizione
  for i := RowSel - 1 to High(Scheda.Articoli) - 1 do
    Scheda.Articoli[i] := Scheda.Articoli[i + 1];

  // Riduce la dimensione dell'array
  SetLength(Scheda.Articoli, Length(Scheda.Articoli) - 1);

  // --------------------------------------------------------
  // Aggiorna lo StringGrid
  // --------------------------------------------------------
  // Shifta le righe verso l'alto
 { for i := RowSel to StringGrid1.RowCount - 2 do
  begin
    StringGrid1.Cells[0, i] := StringGrid1.Cells[0, i + 1];
    StringGrid1.Cells[1, i] := StringGrid1.Cells[1, i + 1];
    StringGrid1.Cells[2, i] := StringGrid1.Cells[2, i + 1];
    StringGrid1.Cells[3, i] := StringGrid1.Cells[3, i + 1];
    StringGrid1.Cells[4, i] := StringGrid1.Cells[4, i + 1];
    StringGrid1.Cells[5, i] := StringGrid1.Cells[5, i + 1];
    StringGrid1.Cells[6, i] := StringGrid1.Cells[6, i + 1];
    StringGrid1.Cells[7, i] := StringGrid1.Cells[7, i + 1];
  end;

  // Riduce il numero di righe
  if StringGrid1.RowCount > 1 then
    StringGrid1.RowCount := StringGrid1.RowCount - 1;

  // Riposiziona la selezione
  if StringGrid1.RowCount > 1 then
  begin
    if RowSel >= StringGrid1.RowCount then
      StringGrid1.Row := StringGrid1.RowCount - 1
    else
      StringGrid1.Row := RowSel;
  end;

  StringGrid1.Invalidate;
  StringGrid1.Update;
  AggiornaTotaleArticoli;  }

  RebuildStringGrid;

end;

procedure TNew_Sched.BitBtn2Click(Sender: TObject);
var
  i : Integer;
begin
  // Verifica che ci sia qualcosa da eliminare
  if StringGrid1.RowCount <= 1 then
    Exit;

  if MessageDlg('Confermi l''eliminazione di tutti gli articoli?',
                mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // --------------------------------------------------------
  // Pulisce l'array Scheda.Articoli
  // --------------------------------------------------------
  Scheda.ClearArticoli;

  // --------------------------------------------------------
  // Pulisce tutte le celle dello StringGrid
  // --------------------------------------------------------
 { for i := 1 to StringGrid1.RowCount - 1 do
  begin
    StringGrid1.Cells[0, i] := '';
    StringGrid1.Cells[1, i] := '';
    StringGrid1.Cells[2, i] := '';
    StringGrid1.Cells[3, i] := '';
    StringGrid1.Cells[4, i] := '';
    StringGrid1.Cells[5, i] := '';
    StringGrid1.Cells[6, i] := '';
    StringGrid1.Cells[7, i] := '';
  end;

  // Riporta la griglia a una sola riga (intestazione)
  StringGrid1.RowCount := 1;

  StringGrid1.Invalidate;
  StringGrid1.Update;
  AggiornaTotaleArticoli;  }
  RebuildStringGrid;

end;

procedure TNew_Sched.BitBtn40Click(Sender: TObject);
var
  RowSel : Integer;
  tipo,brand,descrizione:string;
   Codici  : array of string;  // non usato qui, riuso struttura API esistente
  Body    : string;
   Risposta : TRispostaRiparazione;
 
  
begin



  RowSel := StringGrid1.Row;

  // Verifica che non sia la riga di intestazione e che non sia vuota
  if (RowSel <= 0) or (Trim(StringGrid1.Cells[1, RowSel]) = '') then
  begin
    ShowMessage('Selezionare un articolo dalla lista.');
    Exit;
  end;

   tipo := StringGrid1.Cells[3, RowSel];  // TIPO
   brand:= StringGrid1.Cells[4, RowSel];  // BRAND
   descrizione := StringGrid1.Cells[5, RowSel];  // DESCRIZIONE



  if not InserisciRiparazione(
    Trunc(Scheda.CLI_NO),
    StringGrid1.Cells[3, RowSel],   // TIPO
    StringGrid1.Cells[4, RowSel],   // BRAND
    StringGrid1.Cells[5, RowSel],   // DESCRIZIONE
    Scheda.SCHED_NO,
    'NOLEGGIO',
    DM.IBDataSetParamPREF_RIP_NO.AsString,
    FormatDateTime('dd/mm/yyyy', Scheda.DATASTARTRENT),
    Risposta
  ) then
  begin
    ShowMessage('Chiamata API fallita: ' + Risposta.ErrorMessage);
    Exit;
  end;

  if not Risposta.Success then
  begin
    ShowMessage('Errore API: ' + Risposta.ErrorMessage);
    Exit;
  end;

  ShowMessage(
    'Riparazione inserita!' + #13#10 +
    'RIP_NO: '     + IntToStr(Risposta.RIP_NO)   + #13#10 +
    'EANCODERIP: ' + Risposta.EANCODERIP
  );
  DM.IBDataSetRip.Close;
  DM.IBDataSetRip.SelectSQL.Clear;
  DM.IBDataSetRip.SelectSQL.Text:='SELECT * FROM RIPARAZIONE WHERE RIP_NO='+inttostr(Risposta.RIP_NO);
  DM.IBDataSetRip.Open;

  if not Assigned(FRipModule) then
    FRipModule := TRipmodule.Create(Self);

  FRipModule.ShowModal;



  end;



 {
procedure TNew_Sched.AggiornaTotaleArticoli;
var
  i      : Integer;
  Totale : Integer;
begin
  Totale := 0;
  for i := 0 to High(Scheda.Articoli) do

    Totale := Totale + Scheda.Articoli[i].QTA;

  Edit14.Text := IntToStr(Totale);   // articoli noleggiati
  Edit16.Text := IntToStr(Totale); //   srticoli aperti
end; }

// -------------------------------------------------------
// Costruisce il JSON array articoli raggruppati per TIPO
// -------------------------------------------------------

function TNew_Sched.BuildArticoliJSON: string;
var
  Tipi  : TStringList;
  i, k  : Integer;
  Found : Boolean;
  Qtot  : Integer;
begin
  Tipi := TStringList.Create;
  try
    for i := 0 to High(Scheda.Articoli) do
    begin
      Found := False;
      for k := 0 to Tipi.Count - 1 do
        if Tipi[k] = Scheda.Articoli[i].TIPO then
        begin
          Tipi.Objects[k] :=
            TObject(Integer(Tipi.Objects[k]) + Scheda.Articoli[i].QTA);
          Found := True;
          Break;
        end;
      if not Found then
        Tipi.AddObject(Scheda.Articoli[i].TIPO,
                       TObject(Scheda.Articoli[i].QTA));
    end;

    Result := '[';
    for i := 0 to Tipi.Count - 1 do
    begin
      Qtot   := Integer(Tipi.Objects[i]);
      Result := Result +
        Format('{"tipo":"%s","qta":%d}', [Tipi[i], Qtot]);
      if i < Tipi.Count - 1 then
        Result := Result + ',';
    end;
    Result := Result + ']';
  finally
    Tipi.Free;
  end;
end;



// -------------------------------------------------------
// Ricalcola totali chiamando API.pas
// -------------------------------------------------------
procedure TNew_Sched.AggiornaTotaleArticoli;
var
  Risposta   : TRispostaPrezzo;
  ScontoPerc : Double;
  ScontoStr  : string;
  Sconto     : Double;
  Netto      : Double;
   JsonDebug : string;
begin
  if Scheda.DAYUSE < 1 then Exit;

  if Length(Scheda.Articoli) = 0 then
  begin
    Scheda.SUBTOTALE := 0;
    Scheda.NETPRICE  := 0;
    // Rispetta il formato della maschera: '€ 9999;1;_'
    MaskEdit7.Text := #8364 + '     0,0';
    MaskEdit9.Text := #8364 + '     0,0';

    Exit;
  end;

   // DEBUG — rimuovi dopo il test
  JsonDebug := BuildArticoliJSON;
  ShowMessage('JSON inviato al server:' + #13#10 + JsonDebug);

  if not CallCalcolaPrezzo(
           FormatDateTime('dd/mm/yyyy', Scheda.DATASTARTRENT),
           FormatDateTime('dd/mm/yyyy', Scheda.DATATAKEBACK),
           Scheda.DAYUSE,
           BuildArticoliJSON,
           Risposta) then
  begin
    ShowMessage('Errore calcolo prezzi: ' + Risposta.ErrorMsg);
    Exit;
  end;

  // Legge sconto da MaskEdit8 — formato 00,0%
  ScontoPerc := 0;
  ScontoStr  := StringReplace(MaskEdit8.Text, '%', '', [rfReplaceAll]);
  ScontoStr  := StringReplace(ScontoStr,      '_', '', [rfReplaceAll]);
  ScontoStr  := Trim(ScontoStr);
  // Sostituisce la virgola con il separatore decimale del sistema
  ScontoStr  := StringReplace(ScontoStr, ',', DecimalSeparator, [rfReplaceAll]);
  TryStrToFloat(ScontoStr, ScontoPerc);

  Sconto := Risposta.Subtotale * ScontoPerc / 100;
  Netto  := Risposta.Subtotale - Sconto;

  // Aggiorna scheda
  Scheda.SUBTOTALE := Risposta.Subtotale;
  Scheda.DISCOUNT  := ScontoPerc;
  Scheda.NETPRICE  := Netto;
{
  // --------------------------------------------------------
  // Popola MaskEdit7 — formato maschera: € 9999 (4 cifre, no decimali)
  // Tronca a intero e formatta con padding a 4 cifre
  // --------------------------------------------------------
  MaskEdit7.Text := #8364 + Format('%4d', [Round(Risposta.Subtotale)]);

  // --------------------------------------------------------
  // Popola MaskEdit9 — stesso formato di MaskEdit7
  // --------------------------------------------------------
  MaskEdit9.Text := #8364 + Format('%4d', [Round(Netto)]);
}
  // Subtotale — formato € 99999,0
MaskEdit7.Text := #8364 + Format('%4d', [Round(Risposta.Subtotale)]);

// Totale netto — stesso formato
MaskEdit9.Text := #8364 + Format('%4d', [Round(Netto)]);

end;




procedure TNew_Sched.MaskEdit8Exit(Sender: TObject);
begin
AggiornaTotaleArticoli;
end;

initialization

finalization

end.
