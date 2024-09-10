program Ex7;
uses crt;
var 
  senha:integer;
  senhaPadrao:integer=12345678;
begin
  clrscr();
  write('Digite sua senha: ');
  readln(senha);
  if senha=senhaPadrao then
    writeln('Bem vindo, acesso autorizado')
  else
    writeln('Acesso negado.');
end.
