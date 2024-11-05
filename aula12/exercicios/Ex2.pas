{$codepage utf8}
program Ex2;

uses crt;

function calculaDelta(a,b,c:real):real;
var
  delta:real;
begin
  delta:=(b*b)-(4*a*c);
  calculaDelta:=delta;
end;

function calculaX(a,b,d:real; opc:char):real;
var
  x:real;
begin
  if opc='+' then
    x:= (-b+sqrt(d))/(2*a)
  else
    x:= (-b-sqrt(d))/(2*a);
  calculaX:=x;
end;

procedure calculaXP(a,b,d:real);
var
  x:real;
begin
  writeln('As raízes da equação são: ');
  x:= (-b+sqrt(d))/(2*a);
  writeln('x1 = ',x:0:3);
  x:= (-b-sqrt(d))/(2*a);
  writeln('x2 = ',x:0:3);
end;

{programa principal}
var
  a,b,c,d,x1,x2:real;
begin
  clrscr();
  writeln('Dada a equação ax² + bx + c, informe:');
  write('a: ');
  readln(a);
  write('b: ');
  readln(b);
  write('c: ');
  readln(c);
  d:=calculaDelta(a,b,c);
  if d>0 then
  begin
    x1:=calculaX(a,b,d,'+');
    x2:=calculaX(a,b,d,'-');
    writeln('As raízes da equação são: ');
    writeln('x1 = ',x1:0:3);
    writeln('x2 = ',x2:0:3);
    writeln('Testando com a procedure');
    calculaXP(a,b,d);
  end
  else
    writeln('A equação não tem raízes no conjuntos dos reais');

end.

