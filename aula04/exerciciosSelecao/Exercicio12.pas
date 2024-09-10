program Ex12;
uses crt;
var
  idade:integer;
begin
  clrscr();
  write('Qual a idade do nadador: ');
  readln(idade);
  if (idade>=5) and (idade<=7) then
    writeln('Categoria infantil A')
  else if(idade>=8) and (idade<=10) then
    writeln('Categoria infantil B')
  else if(idade>=11) and (idade<=13) then
    writeln('Categoria juvenil A')
  else if(idade>=14) and (idade<=17) then
    writeln('Categoria juvenil B')
  else if(idade>=18) then
    writeln('Categoria adulto');
end.