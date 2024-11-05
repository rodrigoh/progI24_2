{$codepage utf8}
program Ex3;

uses crt;

procedure achaMaiorP(n1,n2:integer);
var
  maior:integer;
begin
  if n1>=n2 then
    maior:=n1
  else
    maior:=n2;
  
  writeln('O maior número é ',maior)
end;

function achaMaior(n1,n2:integer):integer;
var
  maior:integer;
begin
  if n1>=n2 then
    maior:=n1
  else
    maior:=n2;
  achaMaior:=maior;
end;

{programa principal}
var
  n1,n2,maior:integer;
begin
  write('Entre com um valor: ');
  readln(n1);
  write('Entre com outro valor: ');
  readln(n2);
  //Armazenando o resultado em uma variável para depois imprimir
  maior:=achaMaior(n1,n2);
  writeln('O maior número é ',maior);
  //chamando a função diretamente no write
  writeln('O maior número é ',achaMaior(n1,n2));
  //Usando a procedure que já devolve o resutltado
  achaMaiorP(n1,n2);

end.