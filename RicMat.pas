unit RicMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBDatabase, DB, IBQuery, Grids, DBGrids;

type
  TRicMatasse = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RicMatasse: TRicMatasse;

implementation

uses SoftHire, TennisModule;

{$R *.dfm}

procedure TRicMatasse.Edit1KeyPress(Sender: TObject; var Key: Char);
Var TmpQuery:TIBQuery;
i:integer;
const fields : array[1..5] of string = ('DESCRIZIONE','BRAND','BARCODEART','PREZZOPUB','TAGLIA');
begin
{tmpquery:=TIBQuery.Create(nil);
tmpquery.Database:=DM.IBDatabase1;
if ord(Key) = 10 then begin Edit1.Clear; exit; end;
//if ord(Key) = 13 then
//begin

i:=1;
//repeat
  DM.IBDataSetACQ.Close;
  DM.IBDataSetACQ.SelectSQL.Clear;
  DM.IBDataSetACQ.SelectSQL.Add('SELECT *');
  DM.IBDataSetACQ.SelectSQL.Add('FROM ACQUISTI');
  if not(Edit1.Text = '') then
//  DM.IBDatasetAcq.SelectSQL.Add('WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" OR CLI_NO=1) AND TIPOPRODOTTO="MATASSA" AND '+FIELDS[i]+' LIKE "'+Edit1.Text+'%"')
  DM.IBDatasetAcq.SelectSQL.Add('WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" OR CLI_NO=1) AND TIPOPRODOTTO="MATASSA" AND DESCRIZIONE LIKE "%'+Edit1.Text+'%"')
  else
  DM.IBDatasetAcq.SelectSQL.Add('WHERE CLI_NO= NULL');
  DM.IBDatasetAcq.Open;
//  inc(i);
//  until (i=5) or (not DM.IBDatasetAcq.IsEmpty)

  {



  if not DM.IBDatasetAcq.IsEmpty then
   Begin
    While not tmpquery.Eof do
     begin
   if Tennismng.combobox7.Focused then
        begin
        Tennismng.combobox7.Items.Clear;
        Tennismng.combobox7.Items.Add(tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' '+tmpQuery.fieldbyname('TAGLIA').AsString+' '+tmpQuery.fieldbyname('SEZIONE').AsString+' - '+tmpQuery.fieldbyname('ACQ_NO').AsString+' >'+tmpQuery.fieldbyname('CLI_NO').AsString);
        end
      else
      begin
      Tennismng.combobox8.Items.Clear;
      Tennismng.combobox8.Items.Add(tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' '+tmpQuery.fieldbyname('TAGLIA').AsString+' '+tmpQuery.fieldbyname('SEZIONE').AsString+' - '+tmpQuery.fieldbyname('ACQ_NO').AsString+' >'+tmpQuery.fieldbyname('CLI_NO').AsString);
      end;
      tmpquery.Next;
      end;
   end;
end;
end;
 tmpquery.Close;
       }
end;

procedure TRicMatasse.Edit1Change(Sender: TObject);
Var i:integer;
const fields : array[1..5] of string = ('DESCRIZIONE','BRAND','BARCODEART','PREZZOPUB','TAGLIA');
begin
i:=1;
repeat
  DM.IBDataSetACQ.Close;
  DM.IBDataSetACQ.SelectSQL.Clear;
  DM.IBDataSetACQ.SelectSQL.Add('SELECT *');
  DM.IBDataSetACQ.SelectSQL.Add('FROM ACQUISTI');
  if not(Edit1.Text = '') then
  DM.IBDatasetAcq.SelectSQL.Add('WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" OR (CLI_NO=1 AND INUSO=1)) AND TIPOPRODOTTO="MATASSA" AND '+FIELDS[i]+' LIKE "%'+Edit1.Text+'%"')
//  DM.IBDatasetAcq.SelectSQL.Add('WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" OR CLI_NO=1) AND TIPOPRODOTTO="MATASSA" AND INUSO=1 AND DESCRIZIONE LIKE "%'+Edit1.Text+'%"')
  else
  DM.IBDatasetAcq.SelectSQL.Add('WHERE (CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" OR (CLI_NO=1 AND INUSO=1)) AND TIPOPRODOTTO="MATASSA"');
  DM.IBDatasetAcq.Open;
inc(i);
until (i=6) or (not DM.IBDatasetAcq.IsEmpty)



end;

procedure TRicMatasse.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid1.Canvas.Font.Color:=clBlack;
IF dm.IBDatasetAcqCLI_NO.Value=1 then
DBGrid1.Canvas.Brush.Color := clLime
else
DBGrid1.Canvas.Brush.Color := clRed;
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);

end;

procedure TRicMatasse.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

end.
