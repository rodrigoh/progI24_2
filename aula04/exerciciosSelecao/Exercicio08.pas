program Ex8;
uses crt;
var 
  n1, n2: integer;
begin
  clrscr();
  write('Digite um valor para n1: ');
  readln(n1);
  write('Digite um valor para n2: ');
  readln(n2);
  if n1=n2 then
    writeln('Os numeros sao iguais')
  else if n1<n2 then  
    writeln('O ',n2,' e o maior')
  else
    writeln('O ',n1,' e o maior');
end.