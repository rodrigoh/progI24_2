program questaoSeis;
var
  i, num: integer;
begin
  num := 0;
  for i := 1 to 10 do
  begin
    if i mod 2 = 0 then
      num := num + i
    else
      num := num - i;
  end;
  writeln('Resultado: ', num);
end.

