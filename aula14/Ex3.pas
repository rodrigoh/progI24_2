{$codepage utf8}
program Ex3;

uses crt;

type 
  Cliente = record
    nome:string;
    endereco:string;
    telefone:string;
  end;

{função para cadastrar livros}
function cadastraCliente():Cliente;
var
  c:Cliente;
begin
  write('Qual o nome do cliente: ');
  readln(c.nome);
  write('Qual o endereço do ',c.nome,': ');
  readln(c.endereco);
  write('Qual telefone do ',c.nome,': ');
  readln(c.telefone);
  cadastraCliente:=c;
end;

{procedure para mostrar um cliente}
procedure mostraCliente(c:Cliente);
begin
  writeln('Nome: ',c.nome);
  writeln('Endereço: ',c.endereco);
  writeln('Telefone: ',c.telefone);
end;

{procedure para pesquisar um cliente}
procedure buscaCliente(lista:array of cliente; quant:integer; nome:string);
var
  i:integer;
  achei:boolean=false;
begin
  i:=0;
  //for i:=0 to quant-1
  while i<quant do
  begin
    if lista[i].nome = nome then
    begin
      mostraCliente(lista[i]);
      achei:=true;
    end;
    i+=1;
  end;
  if achei=false then
    writeln('Cliente ',nome,' não encontrado');
end;


{função principal}
var
  listaCliente:array[0..49] of Cliente;
  contC:integer=0;
  i:integer;
  opc:char;
  nome:string;
begin
  clrscr();
  repeat
    writeln('Escolha uma opção');
    writeln('a - Adicionar um cliente');
    writeln('l - Listar os clientes');
    writeln('p - Pesquisar um cliente ');
    writeln('s - sair');
    write('> ');
    readln(opc);
    case opc of
      'a':
        begin
          listaCliente[contC]:=cadastraCliente();
          contC+=1;
        end;
      'l':
        begin
          for i:=0 to contC-1 do
            mostraCliente(listaCliente[i]);
        end;
      'p':
        begin
          write('Qual o nome do cliente: ');
          readln(nome);
          buscaCliente(listaCliente,contC,nome);
        end;
    end;
  until(opc='s');
end.

