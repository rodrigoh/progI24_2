{$codepage utf8}
{Número primo é aquele que só é divisível por ele mesmo e por 1. Faça um programa que determine e escreva os números primos compreendidos entre 100 e 1000.}
program Ex9;

uses crt;

var
  num:integer;
  contDiv:integer=0;
  i:integer;
begin
  num:=100;
  while(num<=1000) do
  begin
    i:=1;
    contDiv:=0;
    while(i<=num) do
    begin
      if (num mod i)=0 then
        contDiv+=1;
      i+=1;
    end;
    if(contDiv=2) then
      write(num,' ');
    num+=1;
  end;
end.