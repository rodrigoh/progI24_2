{$codepage utf8}
{Escreva um programa para ler as notas da 1a e 2a avaliações de um aluno, calcular e imprimir a média semestral. Faça com que o algoritmo só aceite notas válidas (uma nota válida deve pertencer ao intervalo [0,10]). Cada nota deve ser validada separadamente. Deve ser impressa a mensagem "Nota inválida" caso a nota informada não pertença ao intervalo [0,10].}
program Ex3;

uses crt;

var
  n1,n2,media:real;

begin
  clrscr;
  repeat
    write('Entre com a nota da primeira avaliação (0-10): ');
    readln(n1);
  until (n1>=0) and (n1<=10);
  repeat
    write('Entre com a nota da segunda avaliação (0-10): ');
    readln(n2);
  until (n2>=0) and (n2<=10);
  media:=(n1+n2)/2;
  writeln('A média do aluno é de ',media:3:2);
end.