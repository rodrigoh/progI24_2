{$codepage utf8}
program Exemplo1;
uses crt;
var
  vetorA:array[0..9] of integer;
  vetorB:array['a'..'j'] of real;
  vetorC:array[-10..1] of char;
  vetorD:array[1..10] of integer;
  i:integer;
begin

  // vetorA[0]
  // vetorA[1]
  // vetorA[2]
  // vetorA[...]
  // vetorA[9]

  clrscr;
  for i:=0 to 9 do
  begin
    write('Informe um valor para vetorA[',i,']: ');
    readln(vetorA[i]);
  end;
  writeln('Dados no vetor');
  for i:=0 to 9 do
    write(vetorA[i],' ');
end.