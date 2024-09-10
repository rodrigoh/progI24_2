program Ex13;
uses crt;
var
  valorCompra,valorDesconto:real;
  codigo:integer;
begin
  clrscr();
  write('Qual o valor total da compra R$');
  readln(valorCompra);
  write('Qual o perfil do cliente ');
  readln(codigo);
  case codigo of
    1: writeln('O total a pagar e R$',valorCompra:2:2);
    2: 
    begin
      valorDesconto:=valorCompra-valorCompra*0.1;
      writeln('O total da compra e R$',valorCompra:2:2);
      writeln('Com o desconto de funcionario fica R$',valorDesconto:2:2);
    end;
    3: 
    begin
      valorDesconto:=valorCompra-valorCompra*0.05;
      writeln('O total da compra e R$',valorCompra:2:2);
      writeln('Com o desconto de cliente vip fica R$',valorDesconto:2:2);
    end;
    else
      writeln('Nao conheco este codigo!');
    end;
end.