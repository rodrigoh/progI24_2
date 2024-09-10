{$codepage utf8}
program Ex5;
uses crt;
var
  iMulherUm, iMulherDois, iHomemUm, iHomemDois, iHomemNovo, iHomemVelho, iMulherNova, iMulherVelha:integer;
begin
  clrscr();
  write('Entre com a idade da mulher um: ');
  readln(iMulherUm);
  write('Entre com a idade da mulher dois: ');
  readln(iMulherDois);
  write('Entre com a idade do homem um: ');
  readln(iHomemUm);
  write('Entre com a idade do homem dois: ');
  readln(iHomemDois);
  //Encontrando a mulher mais nova e mais velha
  if iMulherUm<iMulherDois then
  begin
    iMulherNova:=iMulherUm;
    iMulherVelha:=iMulherDois;
  end
  else
  begin
    iMulherNova:=iMulherDois;
    iMulherVelha:=iMulherUm;
  end;
  //Encontrando o homem mais novo e mais velho
  if iHomemUm<iHomemDois then
  begin
    iHomemNovo:=iHomemUm;
    iHomemVelho:=iHomemDois;
  end
  else
   begin
    iHomemNovo:=iHomemDois;
    iHomemVelho:=iHomemUm;
  end;
  writeln('A soma das idades do homem mais velho com a mulher mais nova ',iHomemVelho+iMulherNova);
  writeln('O produto das idades do homem mais novo com a mulher mais velha ',iHomemNovo*iMulherVelha);
end.