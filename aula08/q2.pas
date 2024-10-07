program questaoSete;

var
  media:integer;
  n1:real;
  n2:real;
  cont:integer;
  resp:char;

begin
  cont:=0;
  repeat
    write('N1: ');
    readln(n1);
    write('N2: ');
    readln(n2);
    media:=(n1+n2)/2;
    writeln(media:0:2);
    if media>=6 then
      cont+=1;
    write('Mais alunos (s/n): ');
    readln(resp);
  until (resp=='n') or (resp=='N');
  writeln(cont' alunos estão aprovados');
end.
 

