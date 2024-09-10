{$codepage utf8}
program Exercicio14;

uses crt;

var 
mes:string;

begin
  clrscr;
  write('Entre com o nome de um mês: ');
  readln(mes);

  if (mes='Abril') or (mes='Junho') or (mes='Setembro') or (mes='Novembro') then
    writeln(mes,' tem 30 dias')
  else if(mes='Janeiro') or (mes='Março') or (mes='Maio') or (mes='Julho') or (mes='Agosto') or (mes='Outubro') or (mes='Dezembro') then
    writeln(mes,' tem 31 dias')
  else if(mes='Fevereiro') then
    writeln(mes,' tem 28 ou 29 dias')
  else
    writeln(mes,' não corresponde a nenhum mês');
  
end.