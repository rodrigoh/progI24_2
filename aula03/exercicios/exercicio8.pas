{$codepage utf8}
program exercicio8;

uses crt;

var
  a:integer;
  b:integer;
  aux:integer;
begin
  clrscr;
  write('Entre com um valor para a: ');
  readln(a);
  write('Entre com um valor para b: ');
  readln(b);
  aux:=a;
  a:=b;
  b:=aux;
  writeln('Agora a vale ',a,' e b vale ',b);
end.