select c.id_cidade,
c.den_cidade,
sum(v.valor_total) as total
from cidade as c,
cliente as cl,
venda as v
where v.id_cliente = cl.id_cliente 
and cl.id_cidade = c.id_cidade
group by c.id_cidade;