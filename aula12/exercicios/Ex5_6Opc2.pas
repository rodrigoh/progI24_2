{$codepage utf8}
program Ex4;

uses crt;

function dado():integer;
begin
  dado:=random(6)+1;
end;

{programa principal}
var
  i:integer;
  valor:integer;
  lancamentos:array[1..6] of integer;
  p:real;
  quantLancamentos:integer=100;
begin
  randomize();
  //Inicializando o vetor com 0
  for i:=1 to 6 do
    lancamentos[i]:=0;

  for i:=0 to quantLancamentos do
  begin
    valor:=dado();
    lancamentos[dado]+=1;
  end;
  for i:=1 to 6 do
  begin
    writeln('A face',i,' do dado foi sorteada ',lancamentos[i],' vezes');
    p:=(lancamentos[i]/quantLancamentos)*100;
    writeln('O que representa ',p:0:2,'% das vezes');
  end;
end.