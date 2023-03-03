with media as (
    select vp.id_produto,
    date_part ('month',v.data),
    avg(vp.quantidade) as quant
    from venda as v,
    venda_produto as vp
    where v.id_venda = vp.id_venda
    group by vp.id_produto, date_part('month', v.data)

)
select id_produto,
avg(quant) as media
from media
group by id_produto;