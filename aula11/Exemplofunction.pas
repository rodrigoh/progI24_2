{$codepage utf8}
program Exemplo;
uses crt;

var
  busca: integer;
  vetor:array[0..9] of integer;
  j:integer;
  resposta:boolean;

function pesquisaValor(valor:integer):boolean;
var
  i:integer;
  achei:boolean;
begin
  achei:=false;
  for i:=0 to 9 do 
  begin
    if vetor[i]=valor then
      achei:=true;
  end;
  pesquisaValor:=achei;
end;

{programa principal}
begin
  randomize();
  writeln();
  writeln('Dados no vetor: ');
  for j:=0 to 9 do
  begin
    vetor[j]:=random(20);
    write(vetor[j],' ');
  end;
  writeln();
  write('Qual número devo procurar no vetor: ');
  readln(busca);
  resposta:=pesquisaValor(busca);
  if resposta=true then
    writeln('O valor ',busca,' está no vetor.')
  else
    writeln('O valor ',busca,' não está no vetor.')
end.
