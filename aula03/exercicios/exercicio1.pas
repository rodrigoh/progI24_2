{$codepage utf8}
program exercicio1;
uses crt, math;

var
  raio:real;
  area:real;

begin
  clrscr;
  write('Entre com o valor do raio: ');
  readln(raio);
  area:=raio*raio*PI;
  writeln('A área do círculo de raio ',raio:3:2,' vale ',area:3:3,'cm²');
end.