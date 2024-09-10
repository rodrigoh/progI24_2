program Ex10;
uses crt;
var
  conta:integer;
  saldo, saldoAtual,debito,credito:real;
begin
  clrscr();
  write('Qual o saldo atual da conta R$');
  readln(saldo);
  write('Qual o valor de debito R$');
  readln(debito);
  write('Qual o valor de credito R$');
  readln(credito);
  saldoAtual:=saldo-debito+credito;
  writeln('Saldo atual R$',saldoAtual:2:2);
  if saldoAtual<0 then
    writeln('Saldo negativo!')
  else
    writeln('Saldo positivo');
end.