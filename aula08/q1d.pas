program questaoQuatro;
var
  a, b: integer;
begin
  a := 0;
  repeat
    a := a + 3;
    b := a * 2;
    writeln('a=',a,' b=',b);
  until a >= 9;
end.

