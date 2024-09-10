{$codepage utf8}
program Exemplo4;

uses crt;

var
  cont:integer;
  num:integer;
  mult:integer;

begin
  clrscr;
  write('Entre com um número entre 1 e 10: ');
  readln(num);
  cont:=1;

  while cont<=10 do
  begin
    mult:=cont*num;
    writeln(num,' * ', cont,' = ',mult);
    cont+=1;
    {cont = cont + 1}
  end;
end.
