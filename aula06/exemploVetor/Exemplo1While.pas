{$codepage utf8}
program Exemplo1;
uses crt;
var
  vetorA:array[0..9] of integer;
  i:integer;
begin

  // vetorA[0]
  // vetorA[1]
  // vetorA[2]
  // vetorA[...]
  // vetorA[9]

  clrscr;
  i:=0;
  while i<10 do
  begin
    write('Informe um valor para vetorA[',i,']: ');
    readln(vetorA[i]);
    i+=1;
  end;
  writeln('Dados no vetor');
  i:=0;
  while i<=9 do
  begin
    write(vetorA[i],' ');
    i+=1;
  end;
end.