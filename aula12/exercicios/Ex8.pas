{$codepage utf8}
program Ex8;
uses crt;
function calculaMedia(p1,p2:real):real;
begin
  calculaMedia:=((p1*4) + (p2*6))/10;
end;

procedure verificaStatus(media:real;faltas:integer);
begin
  if (media>=6) and (faltas<16) then
    writeln('Aluno aprovado com média ',media:0:2)
  else  
    writeln('Aluno reprovado com média ',media:0:2)
end;

{programa pricipal}
var
  n1,n2,media:real;
  faltas:integer;
begin
  clrscr();
  write('Entre com a nota da primeira avaliação: ');
  readln(n1);
  write('Entre com a nota da segunda avaliação: ');
  readln(n2);
  write('Entre com o número de faltas: ');
  readln(faltas);
  media:=calculaMedia(n1,n2);
  verificaStatus(media,faltas);
end.