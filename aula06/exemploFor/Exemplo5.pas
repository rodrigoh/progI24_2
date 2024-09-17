{$codepage utf8}
program Exemplo5;
uses crt;

var
  i, num, soma:integer;

begin
  clrscr;
  soma:=0;
  for i:=1 to 10 do
  begin
    write('Digite o ',i,'° número: ');
    readln(num);
    //soma = soma + num;
    soma+=num;
  end;
  writeln('A soma dos números digitados vale ',soma);
end.