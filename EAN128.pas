unit EAN128;

interface

uses
    SysUtils, Variants, StdCtrls, StrUtils;


function CalcEan128(Start:integer;Phrase:string):String;
function CheckSum(Start:integer;Stringa:string):integer;



implementation

const
     StartA:integer = 103;
     StartB:integer = 104;
     StartC:integer = 105;
     Stop:integer = 106;

Function CalcEan128(start:integer;Phrase:string):string;
begin
Result:=chr(start+105)+phrase+CHR(checksum(start,Phrase))+chr(stop+105);
end;

Function CheckSum(start:integer;Stringa:string):integer;
var i,temp,Sum:integer;
begin
 Sum:=0;
 for i:=1 to length(Stringa) do
  begin
      temp:=ord(Stringa[i]);
      if temp<127 then
      sum:=sum+(i*(temp-32))
      else
      sum:=sum+(i*(temp-105));
  end;
    sum:=sum+start;
  result:=Sum-(start*(sum DIV start));
end;


end.
