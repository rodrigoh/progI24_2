{$codepage utf8}
program Exemplo02;
type
  Aluno = record
    nome:string;
    matricula:string;
    n1: real;
    n2: real;
  end;

function leAluno():Aluno
var
  a:Aluno;
begin
  write('Qual o nome do aluno: ');
  readln(a.nome);
  write('Qual a matrícula do aluno: ');
  readln(a.matricula);
  write('Qual a primeira nota do ',a.nome,': ');
  readln(a.n1);
  write('Qual a segunda nota do ',a.nome,': ');
  readln(a.n2);
  leAluno:=a;
end;

procedure mostraAluno(a:Aluno);
var
  media:real;
begin
  writeln('Nome: ',a.nome);
  writeln('Matrícula: ',a.matricula);
  writeln('N1: ',a.n1:0:2);
  writeln('N2: ',a.n2:0:2);
  media:=(a.n1+a.n2)/2;
  writeln('Média: ',media:0:2);
end;

var
  lista:array[1..5] of Aluno;
  media:real;
  i,j:integer;
  opc:char;


begin
  i:=1;
  repeat
    writeln('Lendo as informações do aluno ',i);
    lista[i]:=leAluno();
    i+=1;
    write('Tem mais alunos (s - sim / n - não): ');
    readln(opc);
  until(opc = 'n');
  for j:=1 to i-1 do
  begin
    mostraAluno(lista[j]);
  end;
end.

