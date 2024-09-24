{$codepage utf8}
program nAleatorio;

var
  i:integer;
begin
  randomize;
  for i:=0 to 10 do
    write(random(100),' ');
end.