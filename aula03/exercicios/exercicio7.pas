{$codepage utf8}
program exercicio7;

uses crt;

var
  salario:real;
  percentual:real;
  novoSalario:real;

begin
  clrscr;
  write('Qual o salário atual: ');
  readln(salario);
  write('Qual o percentual de reajuste: ');
  readln(percentual);
  novoSalario:=salario+salario*(percentual/100);
  //novoSalario:=salario*(1+percentual/100);
  writeln('Seu novo salário será de R$',novoSalario:3:2);
end.