unit Ean39CodeGen;

interface

uses
  SysUtils, Variants, StdCtrls, StrUtils;

 function Ean39Gen1(stream:string;recno:string):string;
 function Ean39Gen2(stream:string;recno:string):string;
 function Ean39Gen2NoX(stream:string;recno:string):string;

implementation

function Ean39Gen2(stream:string;recno:string):string;
var valore,valore1,i:integer;
    stringa:string;
begin
valore:=strtoint(recno);
recno:=inttohex(valore,8);
valore1:=strtoint(stream);
stream:=inttohex(valore1,2);
//while length(recno)<11 do
//begin
//insert('0',recno,1);
//end;
//valore:=0;
//for i:=1 to length(stream) do
//valore:=valore+ord(stream[i]);
//stringa:=inttohex(valore,4);
//while length(stringa)<4 do
//begin
//insert('0',stringa,1);
//end;
result:='*'+stream+recno+'*';
end;

function Ean39Gen1(stream:string;recno:string):string;
var valore,i:integer;
    stringa:string;
begin
while length(recno)<6 do
begin
insert('0',recno,1);
end;
valore:=0;
for i:=1 to length(stream) do
valore:=valore+ord(stream[i]);
stringa:=inttohex(valore,4);
while length(stringa)<4 do
begin
insert('0',stringa,1);
end;
result:='*'+recno+stringa+'*';
end;


function Ean39Gen2NoX(stream:string;recno:string):string;
var valore,valore1,i:integer;
    stringa:string;
begin
valore:=strtoint(recno);
recno:=inttohex(valore,8);
valore1:=strtoint(stream);
stream:=inttohex(valore1,2);
result:=stream+recno;
end;





end.
 