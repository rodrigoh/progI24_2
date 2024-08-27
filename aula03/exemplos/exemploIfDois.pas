{$codepage utf8}
program exemploIfUm;

uses crt;

var 
  nUm, nDois:integer;

begin
  clrscr;
  write('Entre com um número: ');
  readln(nUm);
  write('Entre com outro número: ');
  readln(nDois);

  if nUm<>nDois then
  begin
    writeln('Os valores são diferentes');
    writeln('outra coisa...');
  end
  else
  begin 
    writeln('Os valores são iguais');
    writeln('...');
  end;
end.