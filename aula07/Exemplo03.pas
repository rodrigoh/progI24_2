{$codepage utf8}
program Exemplo03;

uses crt;

var
  numeros:array[0..99] of integer;
  cont:integer=0;
  i:integer=0;
  resp:char;

begin
  clrscr;
  repeat
    write('Informe um número para numeros[',cont,']: ');
    readln(numeros[cont]);
    cont+=1;
    write('Tem mais números: (s - sim, n = não) ');
    readln(resp);
  until resp='n';

  while i<cont do
  begin
    write(numeros[i],' ');
    i+=1;
  end;
end.