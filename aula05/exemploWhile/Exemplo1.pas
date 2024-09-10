{$codepage utf8}
program Exemplo1;
uses crt;

var
  cont:integer;

begin
  clrscr;
  {Precisamos de um contador para o looping}
  cont:=0;
  {while condição do}
  while cont<10 do
  begin
    write(cont,' ');
    cont+=1;
  end;
  writeln();
  writeln('O valor final de cont é ',cont);


end.