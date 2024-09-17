{$codepage utf8}
{Escreva um programa que leia o primeiro nome e a altura das moças inscritas em um concurso de beleza. Quando for informada a palavra FIM para o nome da moça o programa deverá ser encerrado e imprimir: o nome e a altura da moça mais alta e o número de moças no concurso. Considere que todas as moças possuem altura diferente.}
program Ex6;

uses crt;

var
  nome:string;
  altura:real;
  nomeMaisAlta:string;
  maiorAltura:real;
  cont:integer=0;
begin
  clrscr;
  repeat
    write('Qual o nome da pessoa ',cont+1,': ');
    readln(nome);
    if(nome<>'fim') then
    begin
      write('Qual a altura em metros da ',nome,': ');
      readln(altura);
      if(cont=0) then
      begin
        maiorAltura:=altura;
        nomeMaisAlta:=nome;
      end
      else if(maiorAltura<altura) then
      begin
        maiorAltura:=altura;
        nomeMaisAlta:=nome;
      end;
      cont+=1;
    end;
  until nome = 'fim';
  writeln('A pessoa mais alta é ',nomeMaisAlta,' que mede ',maiorAltura:3:2,' metros');
end.