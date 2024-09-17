{$codepage utf8}
{Reescreva o programa para o exercício anterior para que no final seja impressa a mensagem Novo cálculo (1.sim 2.não) solicitando ao usuário que informe um código (1 ou 2) indicando se ele deseja ou não executar o programa novamente. Se for informado o código 1 deve ser repetida a execução de todo o programa para permitir um novo cálculo, caso contrário ele deve ser encerrado.}
program Ex4;

uses crt;

var
  n1,n2,media:real;
  opc:char;

begin
  clrscr;
  repeat
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
    write('Tem mais alunos? s = sim ou n = não: ');
    readln(opc);
  until(opc='n');
end.