{$codepage utf8}

program Exercicio02;

uses crt;

var
  g1:real;
  g2:real;
  subst:real;
  media:real;

begin
  clrscr;
  write('Entre com a nota de g1: ');
  readln(g1);
  write('Entre com a nota de g2: ');
  readln(g2);
  write('Entre com a nota de substituição -1 se não tiver: ');
  readln(subst);

  if(g1<=g2) and (g1<subst) then
    media:=(subst+g2)/2
  else if(g2<=g1) and (g2<subst) then
    media:=(g1+subst)/2
  else
    media:=(g1+g2)/2;

  write('A média do aluno é ',media:3:2);
  if media>=6 then
    writeln(' e está aprovado.')
  else if media>=3 then
    writeln(' e está em exame.')
  else
    writeln(' e está reprovado.')

  
end.