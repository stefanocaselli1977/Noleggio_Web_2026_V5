unit check_rip_payed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls,ADODB,DB, Mask, DBCtrls, Buttons,IBCustomDataSet, IBDatabase, IBQuery, IBSQL,
  IBTable;

type
  TCheckrippayed = class(TForm)
    Barcode_id: TEdit;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure Barcode_idKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
     query: TIBquery;
     queryds: Tdatasource;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Checkrippayed: TCheckrippayed;

implementation

uses softhire,nolo;

{$R *.dfm}

// '*'+'N'+inttohex(DM.IBDataSetRipRIP_NO.AsInteger,5)+temp+temp1[1]+'*';

procedure TCheckrippayed.Barcode_idKeyPress(Sender: TObject;var Key: Char);

 var idrip:string;
    idripint:integer;

begin
  query:=Tibquery.Create(nil);
  queryds:=Tdatasource.Create(nil);
  queryds.DataSet:=Query;
  queryds.Enabled:=true;
  dbedit1.DataSource:=queryds;
  dbedit1.DataField:='DATARITIRORICH';
  dbedit2.DataSource:=queryds;
  dbedit2.DataField:='SC_NUMCASSA';
  dbedit3.DataSource:=queryds;
  dbedit3.DataField:='SC_DATAORA';
  dbedit4.DataSource:=queryds;
  dbedit4.DataField:='SC_NUMDOC';
  dbedit5.DataSource:=queryds;
  dbedit5.DataField:='SC_IMPORTO';



  query.Database:=dm.IBDatabase1;
  if ord(key) = 10 then begin  Barcode_id.Clear; exit; end;
if ord(key) = 13 then
 begin

  if TryStrToInt(Barcode_id.Text, idripint) and (length(Barcode_id.Text)=5)  then
    idrip:=Barcode_id.Text
   else
    begin
     if copy(Barcode_id.Text,1,3)='N03' then
      begin
       idrip:=copy(Barcode_id.Text,4,4);
       idrip:=inttostr(strtoint('$'+idrip));
      end
      else
      begin
       showmessage('VALORE IMMESSO NON CONGRUO RIPROVARE!');
       exit;
      end;
    end;

   //label1.caption:=idrip;
   query.SQL.add('SELECT DATARITIRORICH,PAGATO,SC_NUMCASSA,SC_DATAORA,SC_NUMDOC,SC_IMPORTO FROM RIPARAZIONE ');
   query.SQL.add('WHERE RIP_NO='+idrip);
   query.Open;
   if not query.IsEmpty then
   begin
    if query.Fields.FieldByName('PAGATO').AsInteger=1 then
     begin
     checkrippayed.Color:=cllime;
     label8.Caption:='RIPARAZIONE N° '+idrip;
     label8.Visible:=true;
     label6.Caption:='PAGATO';
     label6.Color:=cllime;
     label6.Visible:=true;
   {  edit1.Text:=query.fieldbyname('DATARITIRORICH').AsString;
     edit2.Text:=query.fieldbyname('SC_NUMCASSA').AsString;
     edit3.Text:=query.fieldbyname('SC_DATAORA').AsString;
     edit4.Text:=query.fieldbyname('SC_NUMDOC').AsString;
     edit5.Text:=query.fieldbyname('SC_IMPORTO').AsString;  }



     checkrippayed.Height:=152;
     end
     else
     begin
     checkrippayed.Color:=ClRed;
     label8.Caption:='RIPARAZIONE N° '+idrip;
     label8.Visible:=true;
     label6.Caption:='NON PAGATO!!!!!!';
     label6.Color:=clRed;
     label6.Visible:=true;
     checkrippayed.Height:=102;
     end;
   end
   else
    begin
     checkrippayed.Color:=ClbtnFace;
     label8.Caption:='RIPARAZIONE N° '+idrip;
     label8.Visible:=true;
     label6.Caption:='ID NON TROVATO';
     label6.Visible:=true;
     label6.Color:=clBtnFace;
     checkrippayed.Height:=102;
   end;
    Barcode_id.Clear;
 end;
 end;






procedure TCheckrippayed.SpeedButton1Click(Sender: TObject);
begin
checkrippayed.Color:=ClBtnFace;
label6.Visible:=false;
label8.Visible:=false;
checkrippayed.Height:=102; //152
end;

end.
