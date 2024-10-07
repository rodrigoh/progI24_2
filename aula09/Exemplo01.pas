{$codepage utf8}
program Exemplo01;

uses crt;

var
  matriz:array[0..3,0..4] of integer;
  l:integer;
  c:integer;

begin
  clrscr;
  //Ler a matriz do teclado
  for l:=0 to 3 do
    for c:=0 to 4 do
    begin
      write('Informe um valor para matriz[',l,',',c,']: ');
      readln(matriz[l,c]);
    end;
  //Mostrar a matriz na tela
  for l:=0 to 3 do
  begin
    for c:=0 to 4 do
    begin
      write(matriz[l,c],' ');
    end;
    writeln();
  end;
end.

