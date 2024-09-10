program Ex12;
uses crt;
var
  idade:integer;
begin
  write('Qual a idade do nadador: ');
  readln(idade);
  case idade of
    5..7: writeln('Categoria infantil A');
    8..10: writeln('Categoria infantil B');
    11..13: writeln('Categoria juvenil A');
    14..17: writeln('Categoria juvenil B');
    18..100: writeln('Categoria adulto');
  end;
end.