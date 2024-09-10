program Ex11;
uses crt;
var 
  opc:integer;
  tempC, tempF: real;
begin
  clrscr();
  writeln('Escolha uma opcao');
  writeln('1 para converter uma temperatura de F para C');
  write('2 para converter uma temperatura de C para F ');
  readln(opc);
  case opc of
    1:
    begin
      write('Entre com uma temperatura em F ');
      readln(tempF);
      tempC:=  (tempF - 32) / 1.8;
      writeln(tempF:2:2,' F equivale a ',tempC:2:2,' C');
    end;
    2:
    begin
      write('Entre com uma temperatura em C ');
      readln(tempC);
      tempF:=  1.8 * tempC + 32;
      writeln(tempC:2:2,' C equivale a ',tempF:2:2,' F');
    end;
    else
      writeln('Opcao seleciona nao e valida');
    end;
end.