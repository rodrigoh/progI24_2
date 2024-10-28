{$codepage utf8}
program Exemplo;
uses crt;
var 
  a,b:integer;
  t:char;

procedure trocaValores;
begin
  writeln('Valores que chegaram na procedure');
  writeln('a=',a);
  writeln('b=',b);
  writeln('t=',t);
  a:=25;
  b:=6;
  t:='a';
  writeln('Valores trocador na procedure');
  writeln('a=',a);
  writeln('b=',b);
  writeln('t=',t);
end;

begin
  a:=0;
  b:=1;
  t:='w';
  trocaValores;
  writeln('Valores impressos na função principal...');
  writeln('a=',a);
  writeln('b=',b);
  writeln('t=',t);
end.