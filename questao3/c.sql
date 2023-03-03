select p.id_produto,
p.den_produto,
c.id_cidade,
c.den_cidade,
sum(vp.valor *vp.quantidade) as total
from cidade as c,
cliente as cl, 
venda as v,
produto as p, 
venda_produto as vp
where v.id_cliente = cl.id_cliente
and cl.id_cliente = c.id_cidade
and v.id_venda = vp.id_venda
and vp.id_produto = p.id_produto
group by p.id_produto, c.id_cidade;