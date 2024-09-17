{$codepage utf8}
{Escreva um programa para ler as notas da 1a e 2a avaliações de um aluno, calcular e imprimir a média semestral. Faça com que o algoritmo só aceite notas válidas (uma nota válida deve pertencer ao intervalo [0,10]). Cada nota deve ser validada separadamente. Deve ser impressa a mensagem "Nota inválida" caso a nota informada não pertença ao intervalo [0,10].}
program Ex3;

uses crt;

var
  n1,n2,media:real;

begin
  clrscr;
  write('Entre com a nota da primeira avaliação: ');
  readln(n1);
  while (n1<0) or (n1>10) do
  begin
    write('A nota é inválida precisa estar entre 0 e 10: ');
    readln(n1);
  end;
  write('Entre com a nota da segunda avaliação: ');
  readln(n2);
  while (n2<0) or (n2>10) do
  begin
    write('A nota é inválida precisa estar entre 0 e 10: ');
    readln(n2);
  end;
  media:=(n1+n2)/2;
  writeln('A média do aluno é de ',media:3:2);
end.