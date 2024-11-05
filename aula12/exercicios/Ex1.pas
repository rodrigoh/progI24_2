{$codepage utf8}
program Ex1;
uses crt;
function ePositivo(num:integer):boolean;
var
  positivo:boolean;
begin
  if num>=0 then
    positivo:=true
  else
    positivo:=false;
  
  ePositivo:=positivo;
end;

procedure ePositivoP(num:integer);
begin
  if num>=0 then
    writeln(num,' é positivo')
  else
    writeln(num,' é negativo')
end;

{programa principal}
var
  numero:integer;
  resultado:boolean;
begin
  clrscr();
  write('Entre com um número: ');
  readln(numero);
  writeln('Testando com a função');
  resultado:=ePositivo(numero);
  if resultado = true then
    writeln(numero, ' é positivo')
  else
    writeln(numero, ' é negativo');
  writeln('Testando com a procedure');
  ePositivoP(numero);
end.