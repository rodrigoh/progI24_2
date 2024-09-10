{$codepage utf8}

{Escreva um programa para ler 2 valores inteiros e uma das seguintes operações a serem executadas (codificada da seguinte forma: 1.Adição, 2.Subtração, 3.Divisão, 4.Multiplicação). Calcular e escrever o resultado dessa operação sobre os dois valores lidos. Observação: Considere que só serão lidos os valores 1, 2, 3 ou 4.}
program Exercicio;

uses crt;

var 
  n1, n2:real;
  op:char;

begin
  clrscr;
  write('Digite um valor para n1: ');
  readln(n1);
  write('Digite um valor para n2: ' );
  readln(n2);
  write('Selecione uma operação (+, -, *, /): ');
  readln(op);
  case op of
    '+':
      writeln(n1:3:2,'+',n2:3:2,'=',(n1+n2):3:2);
    '-':
      writeln(n1:3:2,'-',n2:3:2,'=',(n1-n2):3:2);
    '*':
      writeln(n1:3:2,'*',n2:3:2,'=',(n1*n2):3:2);
    '/':
      writeln(n1:3:2,'/',n2:3:2,'=',(n1/n2):3:2);
    else
      writeln('Operação inválida');
  end;
end.