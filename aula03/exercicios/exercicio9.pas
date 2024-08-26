{$codepage utf8}
program exercicio9;
{
  Uma equipe deseja calcular o número mínimo de litros que deverá colocar no tanque de seu carro para que ele possa percorrer um determinado número de voltas até o primeiro reabastecimento. Escreva um programa que leia o comprimento da pista (em metros), o número total de voltas a serem percorridas no grande prêmio, o número de reabastecimentos desejados e o consumo de combustível do carro (em Km/L). Calcular e escrever o número mínimo de litros necessários para percorrer até o primeiro reabastecimento. OBS: Considere que o número de voltas entre os reabastecimentos é o mesmo. 
}
uses crt;

var
  comprimentoPista:real;
  nVoltas:integer;
  nAbastece:integer;
  distTotal:real;
  autonomia:real;
  nLitrosAbastece:real;
  nLitrosTotal:real;

begin
  clrscr;
  write('Qual o comprimento da pista em metros: ');
  readln(comprimentoPista);
  comprimentoPista:=comprimentoPista/1000;
  write('Qual o número de voltas do GP: ');
  readln(nVoltas);
  write('Qual o número de abastecimentos: ');
  readln(nAbastece);
  write('Qual a autonomia do veículo: ');
  readln(autonomia);
  distTotal:=nVoltas*comprimentoPista;
  nLitrosTotal:=distTotal/autonomia;
  nLitrosAbastece:=nLitrosTotal/nAbastece;
  writeln('Serão necessários ',nLitrosAbastece:3:2,' por abastecimento');
end.