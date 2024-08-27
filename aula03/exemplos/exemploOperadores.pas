{$codepage utf8}
program exemploOperadores;

uses crt;

var
  a,b,c:integer;
  d:boolean;
  e,f:string;
begin
  clrscr;
  a:=5;
  b:=10;
  //Operador diferente
  d:=a<>b;
  writeln(a,' é diferente de ',b,'? ',d);
  //Operador de comparação igual
  d:=a=b;
  writeln(a,' é igual a ',b,'? ',d);
  e:='casa';
  f:='casas';
  d:=e<f;
  writeln(e,' é menor que ',f,'? ',d);
  e:='casa';
  f:='cafe';
  d:=e<f;
  writeln(e,' é menor que ',f,'? ',d);
  //Operador in
  //a:=11;
  d:= a in [1..10];
  writeln(a,' está contido em [1..10]? ',d);


end.