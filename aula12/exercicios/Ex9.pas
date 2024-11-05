{$codepage utf8}
program Ex9;

procedure mostraVetor(v:array of integer);
var
  i:integer;
begin
  writeln('Dados no vetor:');
  for i:=low(v) to high(v) do
    write(v[i],' ');
  writeln();
end;

function verificaValor(v:array of integer; valor, cont:integer):boolean;
var
  achei:boolean=false;
  i:integer;
begin
  for i:=0 to cont do
    if v[i]=valor then
      achei:=true;
  verificaValor:=achei;
end;

{programa principal}
var
  vetor:array[0..9] of integer;
  i,num:integer;
begin
  for i:=0 to 9 do
    vetor[i]:=0;
  i:=0;
  while i<=9 do
  begin
    write('Entre com um valor para vetor[',i,']: ');
    readln(num);
    if verificaValor(vetor,num,i)=false then
    begin
      vetor[i]:=num;
      i+=1;
    end;
  end;
  mostraVetor(vetor);  
end.