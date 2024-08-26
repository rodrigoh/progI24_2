{$codepage utf8}
program exercicio5;
uses crt;
{Escreva um programa para ler as dimensões de uma cozinha retangular (comprimento, largura e altura), calcular e escrever a quantidade de caixas de azulejos para se colocar em todas as suas paredes (considere que não será descontada a área ocupada por portas e janelas). Cada caixa de azulejos possui 1,5 m2 .}
var
  comprimento:real;
  largura:real;
  altura:real;
  area:real;
  areaAberturas:real;
  quantCaixas:real;

begin
  clrscr;
  write('Entre com a altura da cozinha: ');
  readln(altura);
  write('Entre com o comprimento da cozinha: ');
  readln(comprimento);
  write('Entre com a largura da cozinha: ');
  readln(largura);
  write('Qual a área ocupada por aberturas: ');
  readln(areaAberturas);
  area:= comprimento*altura*2+largura*altura*2-areaAberturas;
  quantCaixas:=area/1.5;
  writeln('Para cobrir os ',area:3:2,'m² de parede serão necessárias ',quantCaixas:3:2,' de azulejos'); 
end.
