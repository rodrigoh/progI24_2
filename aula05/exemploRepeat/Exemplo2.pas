{$codepage utf8}
program Exemplo1;

uses crt;

var 
cont:integer;

begin
  clrscr;
  cont:=10;
  repeat
    write(cont,' ');
    cont-=1;
  until cont<0;
end.