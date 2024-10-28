{$codepage utf8}
program Exemplo;
uses crt;
var 
  a,b:integer;
  t:char;

procedure trocaValores(var x, y: integer; z:char);
begin
  writeln('Valores que chegaram na procedure');
  writeln('x=',x);
  writeln('y=',y);
  writeln('z=',z);
  x:=25;
  y:=6;
  z:='a';
  writeln('Valores trocador na procedure');
  writeln('x=',x);
  writeln('y=',y);
  writeln('z=',z);
end;

begin
  a:=0;
  b:=1;
  t:='w';
  trocaValores(a,b,t);
  writeln('Valores impressos na função principal...');
  writeln('a=',a);
  writeln('b=',b);
  writeln('t=',t);
end.