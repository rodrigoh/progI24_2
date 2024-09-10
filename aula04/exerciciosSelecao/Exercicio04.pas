{$codepage utf8}
program Exercicio4;
uses crt;
var
  a,b,c:integer;

begin
  clrscr();
  write('Entre com um valor para a: ');
  readln(a);
  write('Entre com um valor para b: ');
  readln(b);
  write('Entre com um valor para c: ');
  readln(c);
  if (a>b) and (a>c) then 
    writeln('O maior numero ',a)
  else if (b>a) and (b>c) then
    writeln('O maior numero ',b)
  else
    writeln('O maior valor e ',c);
end.