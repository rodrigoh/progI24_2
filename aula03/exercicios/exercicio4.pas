{$codepage utf8}
{Escreva um programa para calcular e imprimir o número de lâmpadas necessárias para iluminar um determinado cômodo de uma residência. Dados de entrada: a potência da lâmpada utilizada (em watts), as dimensões (largura e comprimento, em metros) do cômodo. Considere que a potência necessária é de 18 watts por metro quadrado.}
program exercicio3;
uses crt;

var
  potLampada:integer;
  largura:real;
  comprimento:real;
  area:real;
  quantLampadas:real;

begin
  clrscr;
  write('Qual a largura do ambiente: ');
  readln(largura);
  write('Qual o comprimento do ambiente: ');
  readln(comprimento);
  write('Qual a potência da lâmpada disponível: ');
  readln(potLampada);
  area:=largura*comprimento;
  quantLampadas:= 18*area/potLampada;
  writeln('Para iluminar os ',area:3:2,'m² do ambiente serão necessárias ',quantLampadas:3:2,'lâmpadas');
end.