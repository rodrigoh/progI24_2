{$codepage utf8}
program Exemplo01;

uses crt;

var
 cont:integer;
 letra:char;

begin
  clrscr;
  writeln('Exemplo for...');
  for cont:=0 to 10 do
    write(cont,' ');
  writeln();
  writeln('For com letras');
  for letra:='a' to 'z' do
    write(letra,' ');
  writeln();
  writeln('For exemplo 2');
  for cont:=-10 to 0 do
    write(cont,' ');
  writeln();
  writeln('For decrescente');
  for cont:=10 downto 0 do
    write(cont,' ');
  // writeln('Mesmo exemplo com while');
  // cont:=0;
  // while cont<=10 do
  // begin
  //   write(cont,' ');
  //   //cont:=cont+1
  //   cont+=1;
  // end;
end.