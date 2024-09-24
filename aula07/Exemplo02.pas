{$codepage utf8}
program Exemplo02;
uses crt;
var
  numInt:array[0..10] of integer;
  numReal:array[-10..0] of real;
  letras:array[1..10] of char;
  notas:array['a'..'j'] of real;
  //Contador para o for
  i:integer;
begin
  clrscr;
  // notas['d']:=8.5;
  // numReal[-9]:=10.5;
  // numInt[0]:=10;
  // letras[2]:='j';
  for i:=0 to 10 do 
  begin
    write('numInt[',i,']: ');
    readln(numInt[i]);
  end;
  writeln('Dados no vetor numInt');
  i:=0;
  while i<=10 do
  begin
    write(numInt[i],' ');
    i+=1;
  end;

  //numReal:array[-10..0] of real;
  for i:=-10 to 0 do
  begin
    write('numReal[',i,']: ');
    readln(numReal[i]);
  end;


end.