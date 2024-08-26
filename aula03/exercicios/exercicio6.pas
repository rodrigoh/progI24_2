{$codepage utf8}
{Um motorista de táxi deseja calcular o rendimento de seu carro na praça. Escreva um programa para ler: a marcação do odômetro (Km) no início do dia, a marcação (Km) no final do dia, o preço do combustível, o número de litros de combustível gasto e o valor total (R$) recebido dos passageiros. Calcular e escrever: a média do consumo em Km/L e o lucro (líquido) do dia. }
program exercicio6;
uses crt;

var
  kmInicial:integer;
  kmFinal:integer;
  valorLitro:real;
  nLitros:real;
  valorRecebido:real;
  lucro:real;
  autonomia:real;

begin
  clrscr;
  write('Qual a km no início do dia: ');
  readln(kmInicial);
  write('Qual a km no final do dia: ');
  readln(kmFinal);
  write('Quantos litros de combustível foram usados: ');
  readln(nLitros);
  write('Qual o valor do litro de combustível R$ ');
  readln(valorLitro);
  write('Qual o valor total recebido dos passageiros R$ ');
  readln(valorRecebido);
  autonomia:=(kmFinal-kmInicial)/nLitros;
  lucro:=valorRecebido-nLitros*valorLitro;
  writeln('Seu veículo está percorrendo ',autonomia:3:2,' km/l');
  writeln('Seu lucro de hoje foi de R$',lucro:3:2);
end.