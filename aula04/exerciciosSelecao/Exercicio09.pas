program Ex9;
uses crt;
var
  quantMaxima, quantMinima, quantAtual:integer;
  quantMedia:real;
begin
  clrscr();
  write('Qual a quantidade maxima do produto no estoque: ');
  readln(quantMaxima);
  write('Qual a quantidade minima em estoque: ');
  readln(quantMinima);
  write('Qual a quantidade atual em estoque: ');
  readln(quantAtual);
  quantMedia:= (quantMaxima+quantMinima)/2;
  write('A quantidade media do produto em estoque e ',quantMedia:2:2, ' e de acordo com meus calculos tu ');
  if quantAtual<quantMedia then
    writeln('deve efetuar a compra!')
  else
    writeln('nao deve efetuar a compra!')
end.