{$codepage utf8}
program Exemplo1;

uses crt;

var
  nome:string;
  altura:real;

begin
  write('Qual seu nome:');
  readln(nome);
  write(nome,' qual sua altura: ');
  readln(altura);
  writeln(nome,' tem ',altura:3:2,' metros');
end.