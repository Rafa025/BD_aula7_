#Join 
describe clientes;
select*from alugueis
join clientes
on alugueis.id_cliente = clientes.id_cliente;

select*from alugueis
join filmes
on alugueis.id_filme = filmes.id_filme;#chave primaria
		#chave estrangeira
select f.titulo, a.nome_ator from atuacoes atu #filme = nome da tabela, titulo = nome da coluna. atores = nome da tabela, nome_ator = nome da coluna
join atores a # da pra colocar um apelido para a tabela
on atu.id_ator = a.id_ator
join filmes f
on atu.id_filme = f.id_filme;

select f.titulo, c.nome_cliente from alugueis a
join filmes f
on a.id_filme = f.id_filme
join clientes c
on a.id_cliente = c.id_cliente;

select
	c.nome_cliente,
    f.titulo,
     year(curdate()) - year(data_nascimento) as idade
     from alugueis a
     join filmes f
     on a.id_filme = f.id_filme
     join clientes c 
     on a.id_cliente = c.id_cliente
     where  year(curdate()) - year(data_nascimento) < 35
     order by c.nome_cliente;
     
     select a.data_aluguel, c.nome_cliente, f.titulo from alugueis a
     join filmes f
     on a.id_filme = f.id_filme
     join clientes c
     on a.id_cliente = c.id_cliente
     order by c.nome_cliente;
     
     
     
     