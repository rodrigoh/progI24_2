program ColorirTexto;

uses crt;

begin
  writeln('Texto normal');
  textcolor(4);
  writeln('Texto em vermelho');
  textcolor(0);
  writeln('Texto em preto!');
  textbackground(4);
  clrscr;
  writeln('texto com fundo vermelho');
end.