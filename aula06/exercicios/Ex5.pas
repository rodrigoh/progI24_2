{$codepage utf8}
{Escreva um programa para ler 2 notas de um aluno, calcular e imprimir a média final. Logo após escrever a mensagem "Calcular a média de outro aluno [S]im [N]ão?" e solicitar um resposta. Se a resposta for "S", o programa deve ser executado novamente, caso contrário deve ser encerrado imprimindo a quantidade de alunos aprovados(>=6), reprovados(<3) e que ficaram em exame (entre 3 e 5).}
program Ex4;

uses crt;

var
  n1,n2,media:real;
  opc:char;
  contAprovado, contExame, contReprovado:integer;

begin
  clrscr;
  contAprovado:=0;
  contExame:=0;
  contReprovado:=0;
  repeat
    repeat
      write('Entre com a nota da primeira avaliação (0-10): ');
      readln(n1);
    until (n1>=0) and (n1<=10);
    repeat
      write('Entre com a nota da segunda avaliação (0-10): ');
      readln(n2);
    until (n2>=0) and (n2<=10);
    media:=(n1+n2)/2;
    writeln('A média do aluno é de ',media:3:2);
    if(media>=6) then
      contAprovado+=1
      //contAprovado := contAprovado+1
    else if(media>=5) then
      contExame+=1
    else
      contReprovado+=1;
    write('Tem mais alunos? s = sim ou n = não: ');
    readln(opc);
  until(opc='n');
  writeln('Estão aprovados ',contAprovado,' alunos');
  writeln('Estão em exame ',contExame,' alunos');
  writeln('Estão reprovados ',contReprovado,' alunos');
end.