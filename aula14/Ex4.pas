{$codepage utf8}
type
  AlunoT = record
    nome:string;
    disciplina:string;
    notas:array[0..1] of real;
    faltas:integer;
  end;

{função para cadastrar um novo aluno}
function leAluno():AlunoT;
var
  aluno:AlunoT;
begin
  write('Nome: ');
  readln(aluno.nome);
  write('Disciplina: ');
  readln(aluno.disciplina);
  write('Nota 1: ');
  readln(aluno.notas[0]);
  write('Nota 2: ');
  readln(aluno.notas[1]);
  write('Faltas: ');
  readln(aluno.faltas);
  leAluno:=aluno; 
end;

{procedure mostra aluno}
procedure mostraAluno(aluno:AlunoT);
var
  media:real;
begin
  writeln('Nome: ',aluno.nome);
  writeln('Disciplina: ',aluno.disciplina);
  writeln('Nota 1: ',aluno.notas[0]:0:2);
  writeln('Nota 2: ',aluno.notas[1]:0:2);
  media:=(aluno.notas[0]+aluno.notas[1])/2;
  writeln('Média: ',media:0:2);
  writeln('Faltas: ',aluno.faltas);
  if (media>=6) and (aluno.faltas<5) then
    writeln('Aprovado')
  else
    writeln('Reprovado');
end;

{calcular a média da turma}
function calculaMedia(lista:array of AlunoT; quant:integer):real;
var
  i:integer=0;
  soma:real=0;
  media:real;
begin
  for i:=0 to quant-1 do
  begin
    media:=(lista[i].notas[0]+lista[i].notas[1])/2;
    soma+=media;
  end;
  calculaMedia:=soma/quant;
end;

{buscar aluno pelo nome}
procedure buscaAluno(lista:array of AlunoT; quant:integer; nome:string);
var
  i:integer=0;
  achei:boolean=false;
begin
for i:=0 to quant-1 do
  begin
    if lista[i].nome = nome then
    begin
      achei:=true;
      mostraAluno(lista[i]);
    end;
  end;
  if not achei then 
    writeln('Aluno ',nome,' não encontrado');
end;

{lisar alunos pelo nome}
procedure listaAluno(lista:array of AlunoT; quant:integer; apenasAprovados:boolean);
var
  i:integer=0;
  media:real;
begin
for i:=0 to quant-1 do
  begin
    media:=(lista[i].notas[0]+lista[i].notas[1])/2;
    if not apenasAprovados then
      mostraAluno(lista[i])
    else if(media >= 6) and (lista[i].faltas<5) then
      mostraAluno(lista[i])
  end;
end;

{buscaDestaque}
procedure achaDestaque(lista:array of AlunoT; quant:integer; mediaTurma:real);
var
  i:integer=0;
  media:real;
begin
  writeln('Aluno(s) destaque estão aprovados e tem média maior que a turma');
  for i:=0 to quant-1 do
  begin
    media:=(lista[i].notas[0]+lista[i].notas[1])/2;
    if (media >= mediaTurma) and (lista[i].faltas<5) then
    begin
      mostraAluno(lista[i]);
    end;
  end;
end;

{programa principal}
var
  listaAlunos:array[0..100] of AlunoT;
  nome:string;
  contA:integer=0;
  mediaTurma:real;
  opc:char;
begin
  repeat
    writeln('c - cadastrar um aluno');
    writeln('l - listar todos os alunos');
    writeln('a - listar aprovados');
    writeln('d - aluno(s) destaque');
    writeln('b - buscar um aluno');
    writeln('s - sair');
    readln(opc);
    case opc of
      'c': begin listaAlunos[contA]:=leAluno(); contA+=1; end;
      'l': begin listaAluno(listaAlunos, contA, false); end;
      'd': 
      begin
        mediaTurma:=calculaMedia(listaAlunos, contA);
        achaDestaque(listaAlunos, contA, mediaTurma);
      end;
      'b':
      begin
        write('Qual nome do aluno: ');
        readln(nome);
        buscaAluno(listaAlunos, contA, nome);
      end;
      'a': begin listaAluno(listaAlunos, contA, true); end;

    end;
  until(opc='s');
end.