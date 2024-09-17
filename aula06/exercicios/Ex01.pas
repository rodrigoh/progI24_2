{$codepage utf8}
{Para que a divisão entre 2 números possa ser realizada, o divisor não pode ser nulo (zero). Escreva um programa para ler 2 valores e imprimir o resultado da divisão do primeiro pelo segundo. OBS: O programa deve validar a leitura do segundo valor (que não deve ser nulo). Enquanto for fornecido um valor nulo a leitura deve ser repetida. Utilize a estrutura Repita/Até na construção da repetição de validação.
}
program Ex01;

uses crt;
var
  n1,n2:integer;
  resposta:real;

begin
  clrscr;
  write('Digite um número: ');
  readln(n1);
  write('Digite um número: ');
  readln(n2);
  while(n2=0) do
  begin
    write('Digite um número diferente de zero: ');
    readln(n2);
  end;
  resposta:=n1/n2;
  writeln(n1,'/',n2,'=',resposta:3:2);
end.