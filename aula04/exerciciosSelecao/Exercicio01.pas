{$codepage utf8}

program Exercicio;

uses crt;
var
  codigo:integer;

begin
  clrscr;
  write('Entre com o código do produto: ');
  readln(codigo);

  case codigo of
    1: writeln(codigo,' é um produto da região sul');
    2: writeln(codigo,' é um produto da região norte');
    3: writeln(codigo,' é um produto da região leste');
    4: writeln(codigo,' é um produto da região oeste');
    5,6: writeln(codigo,' é um produto da região nordeste');
    7..9: writeln(codigo,' é um produto da região sudeste');
    10: writeln(codigo,' é um produto da região centro-oeste');
    11: writeln(codigo,' é um produto da região noroeste');
  else
    writeln(codigo,' é um produto importado');
  end;  
end.