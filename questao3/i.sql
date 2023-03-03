with mov as (
    select id_produto, 
    quantidade from venda_produto
    union all
    select id_produto, quantidade from compra_produto

)
select p.id_produto,
p.den_produto,
sum(mov.quantidade) as quantidade_mov
from produto as p,
mov where p.id_produto = mov.id_produto
group by p.id_produto
order by quantidade_mov DESC
limit 10;