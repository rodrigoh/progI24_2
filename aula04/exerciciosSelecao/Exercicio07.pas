{$codepage utf8}
program Ex7;
uses crt;
var 
  senha:string;
  senhaPadrao:string='12345678';
begin
  clrscr();
  write('Digite sua senha: ');
  readln(senha);
  if senha=senhaPadrao then
    writeln('Bem vindo, acesso autorizado')
  else
    writeln('Acesso negado.');
end.
