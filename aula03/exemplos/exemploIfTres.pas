{$codepage utf8}
program exemploIfUm;

uses crt;

var 
  nUm:integer;

begin
  clrscr;
  write('Entre com um número: ');
  readln(nUm);
  if nUm=0 then
    writeln('O valor é zero')
  else if nUm>0 then
    writeln('O valor é positivo')
  else
    writeln('O valor é negativo');
end.