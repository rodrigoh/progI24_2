{$codepage utf8}
program Exemplo3;

uses crt;

var
  nota:integer;

begin
  clrscr;
  write('Entre com uma nota entre 0 e 10: ');
  readln(nota);
  while (nota<0) or (nota>10) do
  begin
    write('Nota inválida, digite outra: ');
    readln(nota);
    if nota>8 then
    begin
      writeln('Aluno aprovado');
    end;
  end;
  writeln('A nota é ',nota);
end.