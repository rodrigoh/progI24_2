program Ex6;
uses crt;
var
  mes:string;
begin
  clrscr();
  write('Digite o mes: ');
  readln(mes);
  case mes of
    'janeiro':writeln('O mes digitado equivale ao numero 1');
    'fevereiro':writeln('O mes digitado equivale ao numero 2');
    'marco':writeln('O mes digitado equivale ao numero 3');
    'abril':writeln('O mes digitado equivale ao numero 4');
    'maio':writeln('O mes digitado equivale ao numero 5');
    'junho':writeln('O mes digitado equivale ao numero 6');
    'julho':writeln('O mes digitado equivale ao numero 7');
    'agosto':writeln('O mes digitado equivale ao numero 8');
    'setembro':writeln('O mes digitado equivale ao numero 9');
    'outubro':writeln('O mes digitado equivale ao numero 10');
    'novembro':writeln('O mes digitado equivale ao numero 11');
    'dezembro':writeln('O mes digitado equivale ao numero 12');
  else
    writeln('Hum, nao entendi!');
  end;
end.