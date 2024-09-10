{$codepage utf8}

program Exercicio;

uses crt;
var
  codigo:integer;

begin
  clrscr;
  write('Entre com o código do produto: ');
  readln(codigo);

  if codigo=1 then
    writeln(codigo,' é um produto da região sul')
  else if codigo=2 then
    writeln(codigo,' é um produto da região norte')
  else if codigo=3 then
    writeln(codigo,' é um produto da região leste')
  else if codigo=4 then
    writeln(codigo,' é um produto da região oeste')
  else if (codigo=5) or (codigo=6) then
    writeln(codigo,' é um produto da região nordeste')
  else if codigo in [7..9] then
    writeln(codigo,' é um produto da região sudoeste')
  else if codigo = 10 then  
    writeln(codigo,' é um produto da região centro-oeste')
  else if codigo = 11 then
    writeln(codigo,' é um produto da região noroeste')
  else
    writeln(codigo,' é um produto importado')
end.