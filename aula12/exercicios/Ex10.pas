{$codepage utf8}
program Ex10;

uses crt;

var
  mapa:array[0..2,0..2] of char;

function verificaVencedor(letra:char):boolean;
var 
  vencedor:boolean=false;
  vencedorInv:boolean=false;
  contL:integer=0;
  contC:integer=0;
  contD:integer=0;
  contDI:integer=0;
  l,c:integer;

begin
  for l:=0 to 2 do
  begin
    for c:=0 to 2 do
    begin
      if mapa[l,c]=letra then
        contl+=1;
      if mapa[c,l]=letra then
        contC+=1;
      if (l=c) and (mapa[l,c] = letra) then
        contD+=1;
        //Diagonal inversa
      if (l+c=2) and (mapa[l,c] = letra) then
        contDI+=1;
    end;
    if (contC=3) or (contL=3) or (contD=3) or (contDI=3) then
      vencedor:=true;
    contL:=0;
    contC:=0;
  end;
  verificaVencedor:=vencedor;
end;

{programa principal}
var
  l,c:integer;
begin
  for l:=0 to 2 do
    for c:=0 to 2 do
    begin
      write('Entre com uma letra para mapa [',l,'][',c,']: ');
      readln(mapa[l,c]);
    end;
if verificaVencedor('x') = true then
  writeln('Temos um ganhador');
end.
