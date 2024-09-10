{$codepage utf8}
program Exemplo1;

uses crt;

var 
cont:integer;

begin
  clrscr;
  cont:=0;
  repeat
    write(cont,' ');
    cont+=1;
    {cont:=cont+1;}
  {até que a condição seja válida...}
  until cont>9;

end.