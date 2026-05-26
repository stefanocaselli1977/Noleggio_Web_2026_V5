unit CliForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, IBQuery, DB, IBCustomDataSet,
  dbgridnew;

type
  TRentalCust = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    DBGridnew1: TDBGridnew;
    Nuovo: TBitBtn;
    BitBtn6: TBitBtn;
    Modifica: TBitBtn;
    Avanti: TBitBtn;
    procedure Edit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridnew1DblClick(Sender: TObject);
    procedure NuovoClick(Sender: TObject);
    procedure ModificaClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    function IsValidEmail(const Value: string): boolean;
   procedure queryselectgen(query:string;target:string);
 { Public declarations }
  end;






var
  RentalCust: TRentalCust;


implementation

uses SoftHire, frontend, clienteform;

{$R *.dfm}





procedure TRentalCust.queryselectgen(query:string;target:string);
var qry:Tibquery;
begin
qry:=Tibquery.Create(nil);
qry.Database:=DM.ibdatabase1;
qry.SQL.Text:=query;
dbgridnew1.DataSource:=DataSource1;
datasource1.DataSet:=qry;
if query='' then
begin
showmessage('nessuna stringa di ricerca inserita');
qry.Destroy;
exit;
end;
qry.Open;
if qry.IsEmpty then
Showmessage('Nessun Risultato trovato')
else
begin
dbgridnew1.Columns[0].Width:=90;
dbgridnew1.Columns[1].Width:=320;
dbgridnew1.Columns[2].Width:=269;
dbgridnew1.Columns[3].Width:=197;
dbgridnew1.Columns[4].Width:=475;

end;
//qry.Close;
//qry.destroy;
end;



function TRentalCust.IsValidEmail(const Value: string): boolean;
  function CheckAllowed(const s: string): boolean;
  var
    i: integer;
  begin
    Result:= False;
    for i:= 1 to Length(s) do
    begin
      // illegal char - no valid address
      if not (s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.','+']) then
        Exit;
    end;
    Result:= True;
  end;
var
  i: integer;
  namePart, serverPart: string;
begin
  Result:= False;

  i:= Pos('@', Value);
  if (i = 0) then
    Exit;

  if(pos('..', Value) > 0) or (pos('@@', Value) > 0) or (pos('.@', Value) > 0)then
    Exit;

  if(pos('.', Value) = 1) or (pos('@', Value) = 1) then
    Exit;

  namePart:= Copy(Value, 1, i - 1);
  serverPart:= Copy(Value, i + 1, Length(Value));
  if (Length(namePart) = 0)  or (Length(serverPart) < 5)    then
    Exit;                      // too short

  i:= Pos('.', serverPart);
  // must have dot and at least 3 places from end
  if (i=0) or (i>(Length(serverPart)-2)) then
    Exit;

  Result:= CheckAllowed(namePart) and CheckAllowed(serverPart);
end;





procedure TRentalCust.Edit1Click(Sender: TObject);
begin
(Sender as TEdit).Clear;
end;

procedure TRentalCust.FormShow(Sender: TObject);
begin
edit1.Text:='inserire cellulare o e-mail cliente e premere <Invio>';
edit1.SelectAll;
end;

function IsNumber(N : String) : Boolean;
var
I : Integer;
begin
Result := True;
if Trim(N) = '' then
 begin
 result:=false;
 exit;
 end;

if (Length(Trim(N)) < 1) then
begin
 result:=false;
 exit;
end;

for I := 1 to Length(N) do
begin
 if not (N[I] in ['0'..'9']) then
  begin
   Result := False;
   Break;
 end;
end;
end;

 procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings) ;
begin
   ListOfStrings.Clear;
   ListOfStrings.Delimiter       := Delimiter;
 //  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
   ListOfStrings.DelimitedText   := Str;
end;



procedure TRentalCust.SpeedButton1Click(Sender: TObject);
var nomcogn : string;
    charArray : Array[0..0] of Char;
    OutPutList: TStringList;
begin
    DM.IBDataSetClienti.Close;
    DM.IBDataSetClienti.SelectSQL.Clear;
    DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
    DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
 if IsValidEmail(Edit1.Text) then
 Begin
    DM.IBDataSetClienti.SelectSQL.Add('WHERE (EMAIL = '+ trimleft(quotedstr(uppercase(EDIT1.text)))+') AND DELETEDATE IS NULL');
    DM.IBDataSetClienti.SelectSQL.Add('ORDER BY COGNRAGSOC');
 end
 else
 begin
  if Isnumber(Edit1.Text) then
   Begin
    DM.IBDataSetClienti.SelectSQL.Add('WHERE (CELLULARE LIKE '+ trimleft(quotedstr('%'+uppercase(EDIT1.text)+'%'))+' OR TELEFONO1 LIKE '+ trimleft(quotedstr('%'+uppercase(EDIT1.text)+'%')) +')AND DELETEDATE IS NULL');
    DM.IBDataSetClienti.SelectSQL.Add('ORDER BY COGNRAGSOC');
   end
  else
   Begin
    OutPutList := TStringList.Create;
    try
     Split(' ', edit1.text, OutPutList) ;
     if (outputlist.Count>0)  then
     begin
     if (outputlist.Count=1)  then
      DM.IBDataSetClienti.SelectSQL.Add('WHERE (COGNRAGSOC LIKE '+ trimleft(quotedstr(uppercase(outputlist[0]))) +') AND DELETEDATE IS NULL');
     if (outputlist.Count=2)  then
      DM.IBDataSetClienti.SelectSQL.Add('WHERE COGNRAGSOC LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[0])+'%'))+' AND NOME LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[1])+'%'))+'AND DELETEDATE IS NULL' );
     if (outputlist.Count=3)  then
      DM.IBDataSetClienti.SelectSQL.Add('WHERE COGNRAGSOC LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[0]+' '+outputlist[1])+'%'))+' AND NOME LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[2])+'%'))+'AND DELETEDATE IS NULL' );

      DM.IBDataSetClienti.SelectSQL.Add('ORDER BY COGNRAGSOC');
      DM.IBDataSetClienti.Open;
      if DM.IBDataSetClienti.IsEmpty then
      begin
      DM.IBDataSetClienti.Close;
      DM.IBDataSetClienti.SelectSQL.Clear;
      DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
      DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
     if (outputlist.Count=1)  then
      DM.IBDataSetClienti.SelectSQL.Add('WHERE NOME LIKE '+ trimleft(quotedstr(uppercase(outputlist[0])))+'AND DELETEDATE IS NULL');
     if (outputlist.Count=2)  then
      DM.IBDataSetClienti.SelectSQL.Add('WHERE NOME LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[0])+'%'))+' AND COGNRAGSOC LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[1])+'%'))+'AND DELETEDATE IS NULL' );
     if (outputlist.Count=3)  then
      DM.IBDataSetClienti.SelectSQL.Add('WHERE NOME LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[0])+'%'))+' AND COGNRAGSOC LIKE '+ trimleft(quotedstr('%'+uppercase(outputlist[1]+' '+outputlist[2])+'%'))+'AND DELETEDATE IS NULL' );

      DM.IBDataSetClienti.SelectSQL.Add('ORDER BY COGNRAGSOC');
     end;
     end
     else
     begin
     DM.IBDataSetClienti.Close;
     DM.IBDataSetClienti.SelectSQL.Clear;
     DM.IBDataSetClienti.SelectSQL.Add('SELECT *');
     DM.IBDataSetClienti.SelectSQL.Add('FROM Clienti');
     DM.IBDataSetClienti.SelectSQL.Add('WHERE DELETEDATE IS NULL');
     DM.IBDataSetClienti.SelectSQL.Add('ORDER BY CLI_NO');
     end;
    finally
     OutPutList.Free;
    end;
    end;
    end;

    DM.IBDataSetClienti.Open;
end;



procedure TRentalCust.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ord(key) = 13 then
Speedbutton1.Click;
end;

procedure TRentalCust.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var Cell : TGridCoord;
  Col,Row:integer;
   begin
   if (ssCtrl in shift) then begin
     (sender as TdbGrid).beginDrag(false);
end;
end;

procedure TRentalCust.BitBtn4DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := (Source is TDBGrid);

end;

procedure TRentalCust.DBGridnew1DblClick(Sender: TObject);
begin
cliformnew.showmodal;
end;

procedure TRentalCust.NuovoClick(Sender: TObject);
var outputlist:Tstringlist;
begin
DM.IBDataSetClienti.Insert;
if Isnumber(Edit1.Text) then
begin
DM.IBDataSetClientiCELLULARE.Value:=edit1.text;
cliformnew.showmodal;
exit;
end;
if IsValidEmail(Edit1.Text) then
begin
DM.IBDataSetClientiEMAIL.Value:=edit1.text;
cliformnew.showmodal;
exit;
end;
  OutPutList := TStringList.Create;
    try
     Split(' ', edit1.text, OutPutList) ;
     if (outputlist.Count>0)  then
     begin
     if (outputlist.Count=1)  then
     DM.IBDataSetClientiCOGNRAGSOC.Value:=edit1.Text;
     if (outputlist.Count=2)  then
     begin
     DM.IBDataSetClientiNOME.Value:=outputlist[1];
     DM.IBDataSetClientiCOGNRAGSOC.Value:=outputlist[0];
     end;
     if (outputlist.Count=3)  then
     begin
     DM.IBDataSetClientiNOME.Value:=outputlist[2];
     DM.IBDataSetClientiCOGNRAGSOC.Value:=outputlist[0]+' '+outputlist[1];
     end;
      if (outputlist.Count=4)  then
     begin
     DM.IBDataSetClientiNOME.Value:=outputlist[2]+' '+outputlist[3];;
     DM.IBDataSetClientiCOGNRAGSOC.Value:=outputlist[0]+' '+outputlist[1];
     end;
     end;
     finally
     OutPutList.Free;
     end;
cliformnew.showmodal;
end;

procedure TRentalCust.ModificaClick(Sender: TObject);
begin
DM.IBDataSetClienti.Edit;
cliformnew.showmodal;
end;

procedure TRentalCust.BitBtn6Click(Sender: TObject);
begin
rentalcust.Close;
end;

end.
