{$codepage utf8}
program Exemplo;
uses crt;

var
  i:integer;

function ePrimo(num:integer):boolean;
var
  contDiv:integer=0;
  i:integer=1;
  primo:boolean;
begin
  while i<=num do
  begin
    if (num mod i) = 0 then
      contDiv+=1;
    i+=1;
  end;
  if contDiv=2 then
    primo:=true
  else
    primo:=false;

  ePrimo:=primo;
end;

{programa principal}
begin
  clrscr();
  for i:=1 to 1000 do
    if ePrimo(i) = true then
      write(i,' ');
end.

