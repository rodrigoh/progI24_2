program questaoOito;
var 
  idade:integer;
  nome:string;
begin
  write('Nome: ');
  readln(nome);
  write('Qual a idade do ',nome,': ');
  readln(idade);
  if (idade>=0) and (idade<=19) then
    writeln(nome,' é um jovem')
  else if(idade<=59) then
    writeln(nome,' é um adulto')
  else if(idade<=120) then
    writeln(nome,' é um idoso');
end.

