{$codepage utf8}
program Ex1;

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

{função principal}
var
  clienteUm, clienteDois:Cliente;
begin
  clienteUm:=cadastraCliente();
  clienteDois:=cadastraCliente();
  mostraCliente(clienteUm);
  mostraCliente(clienteDois);
end.

