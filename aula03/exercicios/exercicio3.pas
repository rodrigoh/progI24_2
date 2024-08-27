{$codepage utf8}
{Escreva um programa para ler uma temperatura em graus Celsius, calcular e escrever o valor correspondente em graus Fahrenheit.}
program exercicio2;
uses crt;
var
  tempC:real;
  tempF:real;

begin
  clrscr;
  write('Entre com uma temperatura em °C: ');
  readln(tempC);
  tempF:=(tempC * 9/5) + 32;
  writeln(tempC:3:2,'°C equivale(m) a ',tempF:3:2,'°F');
end.