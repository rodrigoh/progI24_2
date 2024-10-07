program questaoSete;

var
  media:real;
  n1:real;
  n2:real;
  cont:integer;
  resp:char;

begin
  cont:=0;
  repeat
    repeat
      write('N1: ');
      readln(n1);
      if (n1<0) or (n1>10) then
        writeln('nota inválida');
    until (n1>0) and (n1<10);
    repeat
      write('N2: ');
      readln(n2);
      if (n2<0) or (n2>10) then
        writeln('nota inválida');
    until (n2>0) and (n2<10);
    media:=(n1+n2)/2;
    writeln(media:0:2);
    if media>=6 then
      cont+=1;
    write('Mais alunos (s/n): ');
    readln(resp);
  until (resp='n') or (resp='N');
  writeln(cont,' alunos estão aprovados');
end.
 

