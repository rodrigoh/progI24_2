{$codepage utf8}
program Ex4;

uses crt;

function dado():integer;
begin
  dado:=random(6)+1;
end;

{programa principal}
var
  i:integer;
  valor:integer;
  f1:integer=0;
  f2:integer=0;
  f3:integer=0;
  f4:integer=0;
  f5:integer=0;
  f6:integer=0;
  p:real;
begin
  randomize();
  for i:=0 to 10 do
  begin
    valor:=dado();
    if valor=1 then
      f1+=1
    else if valor=2 then
      f2+=1
    else if valor=3 then
      f3+=1
    else if valor=4 then
      f4+=1
    else if valor=5 then
      f5+=1
    else if valor=6 then
      f6+=1;
  end;
  writeln('A face 1 do dado foi sorteada ',f1,' vezes');
  p:=(f1/10)*100;
  writeln('O que representa ',p:0:2,'% das vezes');
  writeln('A face 2 do dado foi sorteada ',f2,' vezes');
  p:=(f2/10)*100;
  writeln('O que representa ',p:0:2,'% das vezes');
  writeln('A face 3 do dado foi sorteada ',f3,' vezes');
  p:=(f3/10)*100;
  writeln('O que representa ',p:0:2,'% das vezes');
  writeln('A face 4 do dado foi sorteada ',f4,' vezes');
  p:=(f4/10)*100;
  writeln('O que representa ',p:0:2,'% das vezes');
  writeln('A face 5 do dado foi sorteada ',f5,' vezes');
  p:=(f5/10)*100;
  writeln('O que representa ',p:0:2,'% das vezes');
  writeln('A face 6 do dado foi sorteada ',f6,' vezes');
  p:=(f6/10)*100;
  writeln('O que representa ',p:0:2,'% das vezes');
end.