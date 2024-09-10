{$codepage utf8}
program Exemplo3;

uses crt;

var 
nota:integer;

begin
  clrscr;
  repeat
    write('Digite uma nota entre 0 e 10: ');
    readln(nota);
  until (nota>=0) and (nota<=10);
  writeln('A nota vale ',nota);
end.