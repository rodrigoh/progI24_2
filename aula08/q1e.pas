program exemploCinco;
var
  x, y: integer;
begin
  x := 20;
  y := 12;
  while y < x do
  begin
    x := x - 2;
    y := y + 1;
  end;
  writeln('x: ',x);
end.

