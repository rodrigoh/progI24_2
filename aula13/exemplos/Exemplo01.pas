{$codepage utf8}
program Exemplo01;

type 
  financeiro=real;
  lista = array[0..9] of integer;

var 
  preco:financeiro;
  v1:lista;
  i:integer;

begin
  randomize();
  // write('Qual o valor do produto: ');
  // readln(preco);
  // write(preco:0:2);
  
  for i:=0 to 9 do 
  begin
    v1[i]:=random(50);
    write(v1[i],' ');
  end;
end.