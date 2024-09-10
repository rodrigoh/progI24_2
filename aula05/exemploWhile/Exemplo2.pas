{$codepage utf8}
program Exemplo2;

uses crt;

var 
  cont:integer;

begin
  clrscr;
  cont:=10;
  while cont>=0 do
  begin
    write(cont,' ');
    cont-=1;
  end;

end.