{$codepage utf8}
program Exercicio14;

uses crt;

var 
mes:string;

begin
  clrscr;
  write('Entre com o nome de um mês: ');
  readln(mes);
  case mes of
    'Abril', 'Junho', 'Setembro', 'Novembro':
      writeln(mes,' tem 30 dias');
    'Janeiro', 'Março', 'Maio', 'Julho', 'Agosto', 'Outubro', 'Dezembro':
      writeln(mes,' tem 31 dias');
    'Fevereiro':
      writeln(mes,' tem 28 ou 29 dias');
    else
      writeln(mes,' não corresponde a nenhum mês');
  end;
end.